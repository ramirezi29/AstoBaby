//
//  CompatibilityChart.swift
//  AstroBaby
//
//  Created by Ivan Ramirez on 3/19/19.
//  Copyright © 2019 ramcomw. All rights reserved.
//

import Foundation


struct Aries {
    var high: Set = [Zoo.aries.rawValue,
                     Zoo.leo.rawValue,
                     Zoo.sagittarius.rawValue,
                     Zoo.gemini.rawValue,
                     Zoo.libra.rawValue,
                     Zoo.aquarius.rawValue,
                     Zoo.pisces.rawValue ]
    
    var medium: Set = [Zoo.virgo.rawValue]
    
    var low: Set = [Zoo.taurus.rawValue,
                    Zoo.capricorn.rawValue,
                    Zoo.cancer.rawValue,
                    Zoo.scorpio.rawValue]
}

struct Leo {
    var high: Set = [Zoo.aries.rawValue,
                     Zoo.leo.rawValue,
                     Zoo.sagittarius.rawValue,
                     Zoo.gemini.rawValue,
                     Zoo.libra.rawValue]
    
    var medium: Set = [Zoo.taurus.rawValue,
                       Zoo.aquarius.rawValue,
                       Zoo.cancer.rawValue,
                       Zoo.scorpio.rawValue,
                       Zoo.pisces.rawValue]
    
    let low: Set = [Zoo.virgo.rawValue,
                    Zoo.capricorn.rawValue]
}

struct Sagittarius {
    let high: Set = [Zoo.aries.rawValue,
                     Zoo.leo.rawValue,
                     Zoo.sagittarius.rawValue,
                     Zoo.gemini.rawValue,
                     Zoo.libra.rawValue,
                     Zoo.aquarius.rawValue]
    
    let medium: Set = [Zoo.scorpio.rawValue,
                       Zoo.pisces.rawValue,
                       Zoo.cancer.rawValue]
    
    let low: Set = [Zoo.taurus.rawValue,
                    Zoo.virgo.rawValue,
                    Zoo.capricorn.rawValue]
}

struct Taurus {
    let high: Set = [Zoo.taurus.rawValue,
                     Zoo.virgo.rawValue,
                     Zoo.capricorn.rawValue,
                     Zoo.cancer.rawValue,
                     Zoo.scorpio.rawValue,
                     Zoo.pisces.rawValue]
    
    let medium: Set = [Zoo.leo.rawValue,
                       Zoo.libra.rawValue]
    
    let low: Set = [Zoo.aries.rawValue,
                    Zoo.sagittarius.rawValue,
                    Zoo.gemini.rawValue,
                    Zoo.aquarius.rawValue ]
}

struct Virgo {
    let high: Set = [Zoo.taurus.rawValue,
                     Zoo.virgo.rawValue,
                     Zoo.capricorn.rawValue,
                     Zoo.cancer.rawValue,
                     Zoo.scorpio.rawValue,
                     Zoo.pisces.rawValue]
    
    let medium: Set = [Zoo.leo.rawValue,
                       Zoo.aquarius.rawValue]
    
    let low: Set = [Zoo.aries.rawValue,
                    Zoo.sagittarius.rawValue,
                    Zoo.gemini.rawValue,
                    Zoo.libra.rawValue]
}

struct Capricorn {
    let high: Set = [Zoo.taurus.rawValue,
                     Zoo.virgo.rawValue,
                     Zoo.capricorn.rawValue,
                     Zoo.cancer.rawValue,
                     Zoo.scorpio.rawValue,
                     Zoo.pisces.rawValue]
    
    let medium: Set = [Zoo.leo.rawValue,
                       Zoo.libra.rawValue]
    
    let low: Set = [Zoo.aries.rawValue,
                    Zoo.sagittarius.rawValue,
                    Zoo.gemini.rawValue,
                    Zoo.aquarius.rawValue]
}

struct Gemini {
    let high: Set = [Zoo.aries.rawValue,
                     Zoo.leo.rawValue,
                     Zoo.gemini.rawValue,
                     Zoo.libra.rawValue,
                     Zoo.aquarius.rawValue]
    
    let medium: Set = [Zoo.sagittarius.rawValue,
                       Zoo.virgo.rawValue,
                       Zoo.capricorn.rawValue]
    
    let low: Set = [Zoo.taurus.rawValue,
                    Zoo.cancer.rawValue,
                    Zoo.scorpio.rawValue,
                    Zoo.pisces.rawValue]
}

struct Libra {
    let high: Set = [Zoo.leo.rawValue,
                     Zoo.sagittarius.rawValue,
                     Zoo.gemini.rawValue,
                     Zoo.libra.rawValue,
                     Zoo.aquarius.rawValue]
    
    let medium: Set = [Zoo.aries.rawValue,
                       Zoo.taurus.rawValue,
                       Zoo.pisces.rawValue]
    
    let low: Set = [Zoo.virgo.rawValue,
                    Zoo.capricorn.rawValue,
                    Zoo.cancer.rawValue,
                    Zoo.scorpio.rawValue]
}

struct Aquarius {
    let high: Set = [Zoo.aries.rawValue,
                     Zoo.leo.rawValue,
                     Zoo.sagittarius.rawValue,
                     Zoo.gemini.rawValue,
                     Zoo.libra.rawValue,
                     Zoo.aquarius.rawValue]
    
    let medium: Set = [Zoo.scorpio.rawValue,
                       Zoo.pisces.rawValue]
    
    let low: Set = [Zoo.taurus.rawValue,
                    Zoo.virgo.rawValue,
                    Zoo.capricorn.rawValue,
                    Zoo.cancer.rawValue]
}

struct Cancer {
    let high: Set = [Zoo.taurus.rawValue,
                     Zoo.virgo.rawValue,
                     Zoo.capricorn.rawValue,
                     Zoo.cancer.rawValue,
                     Zoo.scorpio.rawValue,
                     Zoo.pisces.rawValue]
    
    let medium: Set = [Zoo.leo.rawValue,
                       Zoo.sagittarius.rawValue]
    
    let low: Set = [Zoo.aries.rawValue,
                    Zoo.gemini.rawValue,
                    Zoo.libra.rawValue,
                    Zoo.aquarius.rawValue]
}

struct Scorpio {
    let high: Set = [Zoo.taurus.rawValue,
                     Zoo.virgo.rawValue,
                     Zoo.capricorn.rawValue,
                     Zoo.cancer.rawValue,
                     Zoo.scorpio.rawValue,
                     Zoo.pisces.rawValue]
    
    let medium: Set = [Zoo.aries.rawValue,
                       Zoo.leo.rawValue]
    
    let low: Set = [Zoo.sagittarius.rawValue,
                    Zoo.gemini.rawValue,
                    Zoo.libra.rawValue,
                    Zoo.aquarius.rawValue]
}

struct Pisces {
    let high: Set = [Zoo.taurus.rawValue,
                     Zoo.capricorn.rawValue,
                     Zoo.cancer.rawValue,
                     Zoo.scorpio.rawValue,
                     Zoo.pisces.rawValue]
    
    let medium: Set = [Zoo.aries.rawValue,
                       Zoo.leo.rawValue,
                       Zoo.sagittarius.rawValue,
                       Zoo.virgo.rawValue]
    
    let low: Set = [Zoo.gemini.rawValue,
                    Zoo.libra.rawValue,
                    Zoo.aquarius.rawValue]
}

var LeoMed: Set = ["Aries", "Leo", "Sagittarius", "Gemini", "Aquarius"]
var AriesHigh: Set = ["Taurus", "Virgo", "Capricorn", "Cancer", "Scorpio", "Pisces"]

/*
 
 let aries = Aries()
 
 let leo = Leo()
 
 print("These are the best matches for Leo and Aries:\(aries.high.intersection(leo.high))")
 
 print("These are the so-so matches for Leo and Aries:\(aries.medium.intersection(leo.medium))")
 
 print("These are the low matches for leo and aries: \(aries.low.intersection(leo.low))")
 
 
 */
