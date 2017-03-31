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
        
        let usuarios = TrampoDAO.buscarTodosUsuarios()
        
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
        
        let usuarios = TrampoDAO.buscarTodosUsuarios()
        
        for i in usuarios{
            TrampoDAO.remover(usuario: i)
        }
        
        
        
        let usuario1 = Usuario()
        let usuario2 = Usuario()
        let usuario3 = Usuario()
        let usuario4 = Usuario()
        
        usuario1.nome = "Pedro Correa"
        usuario1.profissao = "Encanador"
        usuario1.avaliacao = 4.5
        usuario1.descricao = "Olá. Procuro alguém que lide com problemas relacionados encanamentos. Minha pia entupiu e não tenho tempo de resolver por mim no fim de semana. Ajuda!"
        usuario1.foto = "encanador"
        
        usuario2.nome = "Melissa Correa"
        usuario2.profissao = "Diarista"
        usuario2.avaliacao = 5.0
        usuario2.descricao = "Preciso de ajuda com Matemática no geral. Alguém disponível durante todos os dias na semana, à noite.Umas duas horinhas! Geometria, Álgebra e que tenha paciência para ensinar Aritmética. =]"
        usuario2.foto = "diarista"
        
        usuario3.nome = "Lazaro Henrique"
        usuario3.profissao = "Prof. de Reforço"
        usuario3.avaliacao = 4.5
        usuario3.descricao = "Oi, tudo bem? Preciso de alguém com bons dotes culinários. Com final de semana livre!!!  Desejo fazer um almoço para minha família e não tenho tempo, preciso de uma mãozinha!"
        usuario3.foto = "ic-prof"
        
        usuario4.nome = "Zé do Bar da Esquina"
        usuario4.profissao = "Garçom"
        usuario4.descricao = "Olá! Sou dono de um bar e próximo fim de semana irei precisar de mais garçons do que o comum. Preciso de pessoas livre do sábado ao domingo! Interessados entrar em contato!"
        usuario4.foto = "garcom"
        
        
        
        
        TrampoDAO.adicionar(usuario: usuario1)
        TrampoDAO.adicionar(usuario: usuario2)
        TrampoDAO.adicionar(usuario: usuario3)
        TrampoDAO.adicionar(usuario: usuario4)
        
    
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
