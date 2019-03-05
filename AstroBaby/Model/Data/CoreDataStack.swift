//
//  CoreDataStack.swift
//  AstroBaby
//
//  Created by Ivan Ramirez on 2/19/19.
//  Copyright © 2019 ramcomw. All rights reserved.
//

import Foundation
import CoreData

enum CoreDataStack {
    static let container: NSPersistentContainer = {
        //This line of code grabs the app name
        let appName = Bundle.main.object(forInfoDictionaryKey: (kCFBundleNameKey as String)) as! String
        let container = NSPersistentContainer(name: appName)
        container.loadPersistentStores() { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    static var managedObjectContext: NSManagedObjectContext { return container.viewContext}
}
