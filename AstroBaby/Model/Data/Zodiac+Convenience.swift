//
//  Zodiac+Convenience.swift
//  AstroBaby
//
//  Created by Ivan Ramirez on 2/19/19.
//  Copyright © 2019 ramcomw. All rights reserved.
//

import Foundation
import CoreData

extension Zodiac {
    @discardableResult
    
    convenience init(zodiacName: String, context: NSManagedObjectContext = CoreDataStack.managedObjectContext) {
        self.init(context: context)
        self.zodiacName = zodiacName
        self.zodiactImageName = zodiacName.lowercased()
    }
}
