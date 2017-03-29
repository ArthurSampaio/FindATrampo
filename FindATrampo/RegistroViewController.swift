//
//  RegistroViewController.swift
//  FindATrampo
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 FindATrampo. All rights reserved.
//

import UIKit

class RegistroViewController: UIViewController {

 
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var senhaTextField: UITextField!
    
    @IBOutlet weak var repeatSenhaTextField: UITextField!
    @IBAction func salvarUsuario(_ sender: Any) {
        let usuario = Usuario()
        
        usuario.nome = nameTextField.text
     
        usuario.senha = senhaTextField.text
        
        if (TrampoDAO.adicionar(usuario: usuario)) {
            nameTextField.text = ""
            senhaTextField.text = ""
            repeatSenhaTextField.text = ""
            print ("worked")
        self.performSegue(withIdentifier: "showLoginView", sender: self)

        }else{
            print ("fjdjfskdfs")
        }
        
    }
    
    func performSegueWithIdentifier(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showLoginView"
        {
            if let newView = segue.destination as? LoginViewController {
                
              
                
            }
        }
        
        
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
