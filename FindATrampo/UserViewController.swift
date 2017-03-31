//
//  UserViewController.swift
//  FindATrampo
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 FindATrampo. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    
    var user = Usuario()

    @IBOutlet weak var userImageView: UIImageView!

    
    @IBOutlet weak var nomeImageView: UILabel!
    
    
    @IBOutlet weak var profissaoText: UILabel!
    
    @IBOutlet weak var AvaliacaoText: UILabel!
    
    @IBOutlet weak var descricaoTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nomeImageView.text = user.nome;
        
        profissaoText.text = user.profissao;
        
        AvaliacaoText.text = (String)(user.avaliacao as Float);
        
        descricaoTextView.text = user.descricao
        
        userImageView.image = UIImage(named: user.foto!)
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
