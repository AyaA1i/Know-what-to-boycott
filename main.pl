:- consult('data.pl').

%-----------------------------------------------1
% this function used to get the customer id and call find order
list_orders(CustomerName, Orders) :-
    customer(CustomerId, CustomerName),
    find_order(CustomerId, 1, [], Orders).

% get the customer order and call append to add it to the list
find_order(CustomerId, OrderId, AccOrders, Orders) :-
    order(CustomerId, OrderId, Items),
    append(AccOrders, [order(CustomerId, OrderId, Items)], NewAccOrders),
    NextOrderId is OrderId + 1,
    find_order(CustomerId, NextOrderId, NewAccOrders, Orders).

find_order(_, _, Orders, Orders).
append([], L, L).
append([H|T], L2, [H|NT]):-
  append(T, L2, NT).

%-----------------------------------------------2
% Get the number of orders of a specific customer given customer id.
countOrdersOfCustomer(CustomerName, Count) :-
    customer(CustomerId, CustomerName),
    countOrders(CustomerId, [], 0, Count).

countOrders(CustomerId, SeenOrders, Accumulator, Count) :-
    order(CustomerId, OrderId, _),
    \+ include(OrderId, SeenOrders), 
    Accumulator2 is Accumulator + 1,
    countOrders(CustomerId, [OrderId|SeenOrders], Accumulator2, Count).

countOrders(_, _, Count, Count).

include(X, [X|_]).
include(X, [_|Tail]):-
    include(X, Tail).

%-----------------------------------------------------3
getItemsInOrderById(CustomerName,OrderId,Items):-
    customer(CustomerId , CustomerName),
    order(CustomerId,OrderId,Items).

%------------------------------------------------------4
% Get the num of items in a specific customer order given customerName and order id.
getNumOfItems(CustomerName, OrderId, Count) :-
    customer(CustomerId, CustomerName),
    order(CustomerId, OrderId, List),
    countItems(List, Count).

countItems([], 0).
countItems([_|T], Count) :-
    countItems(T, Cnt),
    Count is Cnt + 1.

%------------------------------------------------------5
calcPriceOfOrder(CustomerName, OrderId, TotalPrice):-
    customer(CustomerId, CustomerName),
    order(CustomerId, OrderId, Items),
    get_sum(Items, 0, TotalPrice).

get_sum([], TotalPrice, TotalPrice).
get_sum([H|T], CurrentTotal, TotalPrice):-
    item(H, _, Price),
    NewTotal is CurrentTotal + Price,
    get_sum(T, NewTotal, TotalPrice).

%-------------------------------------------------------8
checkboycott([], NewList, NewList).

checkboycott([H|T], CurrentItems, NewList) :-
    item(H, Company, _),
    \+ boycott_company(Company, _), % Check if the company is not boycotted
    append(CurrentItems, [H], NewItems),
    checkboycott(T, NewItems, NewList).

checkboycott([_|T], CurrentItems, NewList) :-
    checkboycott(T, CurrentItems, NewList).


removeBoycottItemsFromAnOrder(CustomerName, OrderId, NewList) :-
    customer(CustomerId, CustomerName),
    order(CustomerId, OrderId, Items),
    checkboycott(Items, [], NewList),
    !.

%-----------------------------------------------6
isBoycott(ItemName):-
	item(ItemName, CompanyName, _),
	boycott_company(CompanyName, _).

%-----------------------------------------------7
whyToBoycott(CompanyName, Justification):-
    boycott_company(CompanyName, Justification).

whyToBoycott(ItemName, Justification):-
	item(ItemName, CompanyName, _),
    whyToBoycott(CompanyName, Justification).

%-----------------------------------------------9
replaceBoycottItems([], []).
replaceBoycottItems([NotBoycottItem|RestOfItems], [NotBoycottItem|RestOfAltItems]) :-
    \+ isBoycott(NotBoycottItem),
    replaceBoycottItems(RestOfItems, RestOfAltItems).
replaceBoycottItems([BoycottItem|RestOfItems], [AltItem|RestOfAltItems]) :-
    isBoycott(BoycottItem),
    alternative(BoycottItem, AltItem),
    !,
    replaceBoycottItems(RestOfItems, RestOfAltItems).

replaceBoycottItemsFromAnOrder(CustomerName, OrderId, AltList):-
    customer(CustomerId, CustomerName),
    order(CustomerId, OrderId, OldList),
    replaceBoycottItems(OldList, AltList).

%-----------------------------------------------12
:- dynamic item/3.
:- dynamic alternative/2.
:- dynamic boycott_company/2.
			  %--item--%
addItem(ItemName, ItemCompany, ItemPrice):-
	assertz(item(ItemName, ItemCompany, ItemPrice)).
removeItem(ItemName, ItemCompany, ItemPrice):-
	retract(item(ItemName, ItemCompany, ItemPrice)).
		    %--alternative--%
addAlternative(BoycottItem, AltItem):-
	assertz(alternative(BoycottItem, AltItem)).
removeAlternative(BoycottItem, AltItem):-
	retract(alternative(BoycottItem,AltItem)).
            %--boycott_company--%
addBoycottCompany(CompanyName, Justification):-
	assertz(boycott_company(CompanyName, Justification)).
removeBoycottCompany(CompanyName, Justification):-
	retract(boycott_company(CompanyName, Justification)).
