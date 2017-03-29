//
//  LoginViewController.swift
//  FindATrampo
//
//  Created by Student on 3/27/17.
//  Copyright © 2017 FindATrampo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var senhaTextField: UITextField!
    
    @IBAction func loginAction(_ sender: Any) {
        
        var usuarios = TrampoDAO.buscarTodosUsuarios()
        
        for usr in usuarios{
            if(usr.nome == loginTextField.text! && usr.senha != "" && usr.senha! == senhaTextField.text!){
                 self.performSegue(withIdentifier: "showLoginView", sender: self)
                
            }
        }
    }
    
    func performSegueWithIdentifier(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "loginSegue"
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
