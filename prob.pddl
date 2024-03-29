(define (problem travel-problem)
(:domain travel)
;; Instantiate the objects.
(:objects
minicooper - vehicle
alcorcon leganes fuenlabrada mostoles madrid - city
)
(:init
; Define the initial state predicates.
(vehicle_at minicooper fuenlabrada)
(connected alcorcon leganes)
(connected leganes alcorcon)
(connected mostoles alcorcon)
(connected alcorcon mostoles)
(connected fuenlabrada leganes)
(connected leganes fuenlabrada)
(connected mostoles fuenlabrada)
(connected fuenlabrada mostoles)
(connected madrid leganes)
(connected leganes madrid)
(connected madrid alcorcon)
(connected alcorcon madrid)
(= (deposit_level) 100)
(= (fuel alcorcon leganes) 2)
(= (fuel leganes alcorcon) 2)
(= (fuel mostoles alcorcon) 1)
(= (fuel alcorcon mostoles) 1)
(= (fuel fuenlabrada leganes) 5)
(= (fuel leganes fuenlabrada) 5)
(= (fuel mostoles fuenlabrada) 2)
(= (fuel fuenlabrada mostoles) 2)
(= (fuel madrid leganes) 3)
(= (fuel leganes madrid) 3)
(= (fuel madrid alcorcon) 3)
(= (fuel alcorcon madrid) 3)
)
(:goal (and
(vehicle_at minicooper madrid)
))
(:metric maximize (deposit_level))
)