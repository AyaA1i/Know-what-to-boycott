:- consult('data.pl').

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
