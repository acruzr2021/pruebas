(define (domain travel)
(:requirements :typing :fluents)
(:types vehicle city - object)
(:predicates
(vehicle_at ?v - vehicle ?c - city)
(connected ?c1 ?c2 - city)
)
(:functions
(deposit_level)
(fuel ?c1 ?c2 - city)
)
(:action drive
:parameters (?v - vehicle ?c1 ?c2 - city)
:precondition (and
(connected ?c1 ?c2)
(vehicle_at ?v ?c1)
)
:effect (and
(not (vehicle_at ?v ?c1))
(vehicle_at ?v ?c2)
(decrease (deposit_level) (fuel ?c1 ?c2))
)
)
)