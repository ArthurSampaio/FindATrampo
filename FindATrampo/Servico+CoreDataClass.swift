//
//  Servico+CoreDataClass.swift
//  FindATrampo
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 FindATrampo. All rights reserved.
//

import Foundation
import CoreData


public class Servico: NSManagedObject {

    convenience init() {
        
        let context = CoreDataManager.getContext()
        let entity = NSEntityDescription.entity(forEntityName: "Servico", in: context)
        
        self.init(entity: entity!, insertInto: context)
        
    }
    
}
