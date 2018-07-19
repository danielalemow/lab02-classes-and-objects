//
//  main.swift
//  prog2.1
//
//  Created by Daniela Lemow on 18/07/18.
//  Copyright © 2018 Daniela Lemow. All rights reserved.
//

import Foundation

var u = Fraction(num: 2, dem: 3)
var v = Fraction(num: -7, dem: 9)

print("v=\(v.description)")
print("decimal value of v=\(v.decimal)")

var f: Fraction

f = u + v
print("(" + u.description + ")+(" + v.description + ") = " + f.description)

f = u - v
print("(" + u.description + ")-(" + v.description + ") = " + f.description)

f = u * v
print("(" + u.description + ")*(" + v.description + ") = " + f.description)

f = u / v
print("(" + u.description + ")/(" + v.description + ") = " + f.description)
