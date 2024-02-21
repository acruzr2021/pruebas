(define (domain rover)
 (:requirements :typing :fluents)
 (:types robot waypoint - object)
 (:functions
 (battery_level ?r - robot)
 )
 (:predicates
 (robot_at ?r - robot ?wp - waypoint)
 (connected ?c1 ?c2 - waypoint)
 (visit ?wp - waypoint)
 )
 (:constants wp_recharge - waypoint)
 (:action move
 :parameters (?r - robot ?from ?to - waypoint)
 :precondition (and
 (connected ?from ?to)
 (robot_at ?r ?from)
 (>= (battery_level ?r) 1)
 )
 :effect (and
 (not (robot_at ?r ?from))
 (robot_at ?r ?to)
 (visit ?from)
 (visit ?to)
 (decrease (battery_level ?r) 1)
 )
 )
 (:action recharge
 :parameters (?r - robot)
 :precondition (and
 (robot_at ?r wp_recharge)
 )
 :effect (and
 (increase (battery_level ?r) 1)
 )
 )
)