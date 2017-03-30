//
//  LoginViewController.swift
//  FindATrampo
//
//  Created by Student on 3/27/17.
//  Copyright © 2017 FindATrampo. All rights reserved.
//

import UIKit
import CoreData

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var senhaTextField: UITextField!
    
    @IBAction func loginAction(_ sender: Any) {
        
        var usuarios = TrampoDAO.buscarTodosUsuarios()
        
        for usr in usuarios{
            if(usr.nome == loginTextField.text! && usr.senha != "" && usr.senha! == senhaTextField.text!){
                 self.initDAO()
                
                 self.performSegue(withIdentifier: "loginSegue", sender: self)
                
            }
        }
        
        self.initDAO()
    }
    
    func performSegueWithIdentifier(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "loginSegue"
        {
            if let newView = segue.destination as? RegistroViewController {
                
                
                
            }
        }
        
    
        
        
    }
    
    func initDAO(){
        
        var usuarios = TrampoDAO.buscarTodosUsuarios()
        
        for i in usuarios{
            TrampoDAO.remover(usuario: i)
        }
        
        
        
        var usuario1 = Usuario()
        var usuario2 = Usuario()
        var usuario3 = Usuario()
        
        usuario1.nome = "Pedro Correa"
        usuario1.profissao = "Encanador"
        usuario1.avaliacao = 4.5
        
        usuario2.nome = "Melissa Correa"
        usuario2.profissao = "Diarista"
        usuario2.avaliacao = 5.0
        
        usuario3.nome = "Lazaro Henrique"
        usuario3.profissao = "Prof. de Reforco"
        usuario3.avaliacao = 4.5
        
        TrampoDAO.adicionar(usuario: usuario1)
        TrampoDAO.adicionar(usuario: usuario2)
        TrampoDAO.adicionar(usuario: usuario3)
    
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
