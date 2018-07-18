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
    
    var num: Int // Numerator
    var dem: Int // Denominator
    
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
        
        // Check the denominator
        assert(dem != 0, "Denominator cannot be zero")
        
        self.num = num
        self.dem = dem
    }
}
