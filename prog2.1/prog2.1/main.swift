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
u = Fraction(num: 2, dem: 3)

// Show the state of the object's internal variables
print("u = \(u.description)")
print("decimal value of u = \(u.decimal)")

// Define and create a new instance of a Fraction object
var x: Fraction = Fraction(num: -5)

print("x = \(x.description)")
print("decimal value of x = \(x.decimal)")

var test: Fraction = u.add(_f: x)
print("value of test after addition = \(test.description)")
