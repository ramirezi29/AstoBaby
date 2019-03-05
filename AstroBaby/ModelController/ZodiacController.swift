//
//  ZodiacController.swift
//  AstroBaby
//
//  Created by Ivan Ramirez on 2/19/19.
//  Copyright © 2019 ramcomw. All rights reserved.
//

import UIKit
import CoreData

class ZodiacController {
    
    var predicate: NSPredicate?
    
    // Source of Truth
    static var zodiacs: [Zodiac] {
        
        let aries = Zodiac(zodiacName: "Aries")
        let taurus = Zodiac(zodiacName: "Taurus")
        let gemini = Zodiac(zodiacName: "Gemini")
        let cancer = Zodiac(zodiacName: "Cancer")
        let leo = Zodiac(zodiacName: "Leo")
        let virgo = Zodiac(zodiacName: "Virgo")
        let libra = Zodiac(zodiacName: "Libra")
        let scorpio = Zodiac(zodiacName: "Scorpio")
        let sagittarius = Zodiac(zodiacName: "Sagittarius")
        let capricorn = Zodiac(zodiacName: "Capricorn")
        let aquarius = Zodiac(zodiacName: "Aquarius")
        let pisces = Zodiac(zodiacName: "Pisces")
        
        return[aries, taurus, gemini, cancer, leo, virgo, libra, scorpio, sagittarius, capricorn, aquarius, pisces]
    }
    
    var selectedZodiac: [Zodiac] {
        // our array of entries to return by. asking MOC. need Fetch Request. Allow you to ask for data from CoreData and can even specifiy critieria
        
        let request: NSFetchRequest<Zodiac> = Zodiac.fetchRequest()
        request.predicate = predicate
        // how to tell CoreData you want those items
        do {
            return try CoreDataStack.managedObjectContext.fetch(request)
            //now an array of of entries will be returned
        } catch {
            print("Error fetching entries: \(error)")
            // return an emtpy array bc it needs to return something even if it doesnt work
            return []
        }
    }
    
    
    let fetchResultsController: NSFetchedResultsController <Zodiac> = {
        
        let fetchRequest: NSFetchRequest<Zodiac> = Zodiac.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "zodiacName", ascending: false)
        fetchRequest.sortDescriptors = [sortDescriptor]
        return NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: CoreDataStack.managedObjectContext, sectionNameKeyPath: nil, cacheName: nil)
    }()
    
    //create
   static func add(zodiac: Zodiac) {
        saveToPersistentStorage()
    }
    
    //Delete
  static func remove(zodiac: Zodiac) {
        //optional
        if  let moc = zodiac.managedObjectContext {
            moc.delete(zodiac)
            saveToPersistentStorage()
        }
    }
    
    //Update
  static  func update(zodiac: Zodiac, zodiacName: String, zodiacImage: String) {
        zodiac.zodiacName = zodiacName
        zodiac.zodiactImageName = zodiacImage
        saveToPersistentStorage()
    }
    
    // MARK: - Persistence
    
    //2. Save to CoreData
   static func saveToPersistentStorage() {
        do {
            try CoreDataStack.managedObjectContext.save()
            
        } catch let error {
            print("🚀 There was an error in \(#function); \(error); \(error.localizedDescription) 🚀")
        }
    }
    
    static func transferZodiact(zodiactName: String) -> [String] {
        
        
        let selectedParentZodiact =  ZodiacController.zodiacs.first {$0.zodiacName == zodiactName}

        add(zodiac: selectedParentZodiact!)
     
        return [selectedParentZodiact?.zodiacName ?? "Error"]
    }
}




