//
//  main.swift
//  prog2.1
//
//  Created by Daniela Lemow on 18/07/18.
//  Copyright © 2018 Daniela Lemow. All rights reserved.
//

import Foundation

// Define a new fraction object
var u: Fraction

// Create and initialise a new object instance
u = Fraction.init()

// Show the state of the object's internal variables
print("u = \(u.num)/\(u.dem)")

// Change the values of object's internal variables
u.num = 2
u.dem = 3

// Show the state of the object's internal variables
print("u = \(u.num)/\(u.dem)")

// Define and create a new instance of a Fraction object
var x: Fraction = Fraction()
x.num = -5
x.dem = 1

print("x = \(x.num)/\(x.dem)")
