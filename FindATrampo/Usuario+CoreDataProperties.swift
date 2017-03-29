//
//  Usuario+CoreDataProperties.swift
//  FindATrampo
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 FindATrampo. All rights reserved.
//

import Foundation
import CoreData


extension Usuario {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Usuario> {
        return NSFetchRequest<Usuario>(entityName: "Usuario");
    }

    @NSManaged public var avaliacao: Float
    @NSManaged public var descricao: String?
    @NSManaged public var email: String?
    @NSManaged public var endereco: String?
    @NSManaged public var foto: String?
    @NSManaged public var idade: Int16
    @NSManaged public var nome: String?
    @NSManaged public var profissao: String?
    @NSManaged public var senha: String?
    @NSManaged public var telefone: String?
    @NSManaged public var tipo: String?
    @NSManaged public var servicoEscolhido: NSSet?
    @NSManaged public var servicoOferecido: NSSet?

}

// MARK: Generated accessors for servicoEscolhido
extension Usuario {

    @objc(addServicoEscolhidoObject:)
    @NSManaged public func addToServicoEscolhido(_ value: Servico)

    @objc(removeServicoEscolhidoObject:)
    @NSManaged public func removeFromServicoEscolhido(_ value: Servico)

    @objc(addServicoEscolhido:)
    @NSManaged public func addToServicoEscolhido(_ values: NSSet)

    @objc(removeServicoEscolhido:)
    @NSManaged public func removeFromServicoEscolhido(_ values: NSSet)

}

// MARK: Generated accessors for servicoOferecido
extension Usuario {

    @objc(addServicoOferecidoObject:)
    @NSManaged public func addToServicoOferecido(_ value: Servico)

    @objc(removeServicoOferecidoObject:)
    @NSManaged public func removeFromServicoOferecido(_ value: Servico)

    @objc(addServicoOferecido:)
    @NSManaged public func addToServicoOferecido(_ values: NSSet)

    @objc(removeServicoOferecido:)
    @NSManaged public func removeFromServicoOferecido(_ values: NSSet)

}
