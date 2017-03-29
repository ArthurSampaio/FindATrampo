//
//  RegistroViewController.swift
//  FindATrampo
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 FindATrampo. All rights reserved.
//

import UIKit

class RegistroViewController: UIViewController {

    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var profissaoLabel: UILabel!
    @IBOutlet weak var profissaoTextField: UITextField!
    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var descricaoTextField: UITextField!
    
    
    @IBAction func salvarUsuario(_ sender: Any) {
        let usuario = Usuario()
        
        usuario.nome = nomeTextField.text
        usuario.profissao = profissaoTextField.text
        usuario.descricao = descricaoTextField.text
        usuario.avaliacao = 1.0
        
        if (TrampoDAO.adicionar(usuario: usuario)) {
            nomeTextField.text = ""
            profissaoTextField.text = ""
            descricaoTextField.text = ""
            print ("worked")
            
        }else{
            print ("fjdjfskdfs")
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
