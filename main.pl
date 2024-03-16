:- consult('data.pl').

list_orders(CustomerName, Orders) :-
    customer(CustomerId, CustomerName),
    collect_orders(CustomerId, [], Orders).

collect_orders(CustomerId, AccOrders, Orders) :-
    find_order(CustomerId, 1, AccOrders, Orders).

find_order(CustomerId, OrderId, AccOrders, Orders) :-
    order(CustomerId, OrderId, Items),
    append(AccOrders, [order(CustomerId, OrderId, Items)], NewAccOrders),
    NextOrderId is OrderId + 1,
    find_order(CustomerId, NextOrderId, NewAccOrders, Orders).

find_order(_, _, Orders, Orders).

append([], L, L).
append([H|T], L2, [H|NT]):-
  append(T, L2, NT).
