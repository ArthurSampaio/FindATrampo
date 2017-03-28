//
//  Usuario+CoreDataProperties.swift
//  FindATrampo
//
//  Created by Student on 3/28/17.
//  Copyright © 2017 FindATrampo. All rights reserved.
//

import Foundation
import CoreData


extension Usuario {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Usuario> {
        return NSFetchRequest<Usuario>(entityName: "Usuario");
    }

    @NSManaged public var nome: String?
    @NSManaged public var endereco: String?
    @NSManaged public var telefone: String?
    @NSManaged public var email: String?
    @NSManaged public var profissao: String?
    @NSManaged public var idade: Int16
    @NSManaged public var tipo: String?
    @NSManaged public var senha: String?
    @NSManaged public var descricao: String?
    @NSManaged public var foto: String?
    @NSManaged public var avaliacao: Float

}
