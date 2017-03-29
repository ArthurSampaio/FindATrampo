//
//  TrampoDAO.swift
//  FindATrampo
//
//  Created by Student on 3/28/17.
//  Copyright © 2017 FindATrampo. All rights reserved.
//

import Foundation


//
//  TrampoDAO.swift
//  musicNavBar
//
//  Created by Student on 3/28/17.
//  Copyright © 2017 Rafael Albuquerque. All rights reserved.
//

import Foundation
import CoreData

class TrampoDAO {
    
    // -------------- USUARIOS --------------------
    
    static func adicionar(usuario: Usuario) -> Bool {
        return CoreDataManager.inserir(usuario)
    }
    
    static func remover(usuario: Usuario) -> Bool {
        
        return CoreDataManager.remover(usuario)
    }
    
    static func buscarTodos() -> [Usuario] {
        var resultados = [Usuario] ()
        
        let request: NSFetchRequest<Usuario> = Usuario.fetchRequest()
        
        request.sortDescriptors = [
            NSSortDescriptor(key: "nome", ascending: true)
        ]
        
        do {
            try resultados = CoreDataManager.getContext().fetch(request)
        } catch let error {
            print("Error ao buscar usuarios: \(error)")
        }
        
        return resultados
    }
    
    
    
    // -------------SERVICOS -------------------
    
    
    static func adicionar(servico: Servico) -> Bool {
        return CoreDataManager.inserir(servico)
    }
    
    static func remover(servico: Servico) -> Bool {
        
        return CoreDataManager.remover(servico)
    }
    
    static func buscarTodos() -> [Servico] {
        var resultados = [Servico] ()
        
        let request: NSFetchRequest<Servico> = Servico.fetchRequest()
        
        request.sortDescriptors = [
            NSSortDescriptor(key: "nome", ascending: true)
        ]
        
        do {
            try resultados = CoreDataManager.getContext().fetch(request)
        } catch let error {
            print("Error ao buscar Servicos: \(error)")
        }
        
        return resultados
    }
    
}
