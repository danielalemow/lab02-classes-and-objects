//
//  Fraction.swift
//  prog2.1
//
//  Created by Daniela Lemow on 18/07/18.
//  Copyright © 2018 Daniela Lemow. All rights reserved.
//

import Foundation

/**
 * Represents a number as a fraction of two integers.
 */

class Fraction {
    
    // STORED PROPERTIES
    
    private let num: Int // Numerator
    private let dem: Int // Denominator
    
    // COMPUTED PROPERTIES
    
    /**
     * Converts fraction to a float value.
     * - returns: Float Decimal value of the fraction
     */
    var decimal: Float {
        get {
            // num and dem are of type Int, therefore,
            // they need to be explicitly converted to Floats
            return Float(self.num)/Float(self.dem)
        }
    }
    
    /**
     * Converts object to a string description.
     * - returns: String String representation of a fraction
     */
    var description: String {
        return "\(self.num)/\(self.dem)"
    }
    
    // INITIALISERS
    
    /**
     * Default initialiser
     * Numerator gets set to 0 and denominator gets set to 1
     */
    
    init() {
        // Setting numerator to 0 and
        // denominator to 1 is equivalent
        // to setting the fraction to zero
        self.num = 0
        self.dem = 1
    }
    
    /**
     * Designated initialiser
     * Numerator and denominator values are passed in the arguments of the initialiser.
     * - parameter num: Fraction's numerator
     * - parameter den: Fraction's denominator
     */
    
    init(num: Int, dem: Int) {
        
        var num = num;
        var dem = dem;
        
        if (dem < 0) {
            num = -num
            dem = -dem
        }
        
        for gcd in (1...dem).reversed() {
            if (num % gcd == 0 && dem % gcd == 0) {
                num /= gcd
                dem /= gcd
                break
            }
        }
        
        self.num = num
        self.dem = dem
    }
    
    /**
     * Convenience initialiser
     * Numerator is set to some value, denominator is set to 1.
     * - parameter num: Fraction's numerator
     */
    convenience init(num : Int) {
        self.init(num: num, dem: 1)
    }
    
    // METHODS
    
    /**
     * Adds a fraction to self.
     * - parameter f: Fraction to add to self.
     * - returns: Fraction The result of adding f to self.
     */
    func add(_ f: Fraction) -> Fraction {
        return Fraction(num: (self.num * f.dem) + (self.dem * f.num),
                        dem: self.dem * f.dem)
    }
    
    /**
     * Subtracts fraction from self.
     * - parameter f: Fraction to subtract from self.
     * - returns: Fraction The result of subtracting f from self.
     */
    func subtract(_ f: Fraction) -> Fraction {
        return Fraction(num: (self.num * f.dem) - (self.dem * f.num),
                        dem: self.dem * f.dem)
    }
    
    /**
     * Multiplies self by a fraction.
     * - parameter f: Fraction to multiply self by.
     * - returns: Fraction The result of multiplying self by f.
     */
    func multiply(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num * f.num, dem: self.dem * f.dem)
    }
    
    /**
     * Divides self by a fraction.
     * - parameter f: Fraction to divide self by.
     * - returns: Fraction The result of dividing self by f.
     */
    func divide(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num * f.dem, dem: self.dem * f.num)
    }
    
    /**
     + operator between two Fractions
    */
    static func +(f1: Fraction, f2: Fraction) -> Fraction {
        return f1.add(f2)
    }
    
    /**
     - operator between two Fractions
     */
    static func -(f1: Fraction, f2: Fraction) -> Fraction {
        return f1.subtract(f2)
    }
    
    /**
     * operator between two Fractions
     */
    static func *(f1: Fraction, f2: Fraction) -> Fraction {
        return f1.multiply(f2)
    }
    
    /**
     / operator between two Fractions
     */
    static func /(f1: Fraction, f2: Fraction) -> Fraction {
        return f1.divide(f2)
    }
    
}
