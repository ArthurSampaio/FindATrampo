//
//  Servico+CoreDataProperties.swift
//  FindATrampo
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 FindATrampo. All rights reserved.
//

import Foundation
import CoreData


extension Servico {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Servico> {
        return NSFetchRequest<Servico>(entityName: "Servico");
    }

    @NSManaged public var nome: String?
    @NSManaged public var valor: Double
    @NSManaged public var dataInicio: NSDate?
    @NSManaged public var dataFinal: NSDate?
    @NSManaged public var descricao: String?
    @NSManaged public var local: String?
    @NSManaged public var usuarioContratado: NSSet?
    @NSManaged public var patrao: NSSet?

}

// MARK: Generated accessors for usuarioContratado
extension Servico {

    @objc(addUsuarioContratadoObject:)
    @NSManaged public func addToUsuarioContratado(_ value: Usuario)

    @objc(removeUsuarioContratadoObject:)
    @NSManaged public func removeFromUsuarioContratado(_ value: Usuario)

    @objc(addUsuarioContratado:)
    @NSManaged public func addToUsuarioContratado(_ values: NSSet)

    @objc(removeUsuarioContratado:)
    @NSManaged public func removeFromUsuarioContratado(_ values: NSSet)

}

// MARK: Generated accessors for patrao
extension Servico {

    @objc(addPatraoObject:)
    @NSManaged public func addToPatrao(_ value: Usuario)

    @objc(removePatraoObject:)
    @NSManaged public func removeFromPatrao(_ value: Usuario)

    @objc(addPatrao:)
    @NSManaged public func addToPatrao(_ values: NSSet)

    @objc(removePatrao:)
    @NSManaged public func removeFromPatrao(_ values: NSSet)

}
