//
//  ViewController.swift
//  Idade de Cachorro Aula
//
//  Created by Bruno Santos on 02/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var campoIdadeCachorro: UITextField!
    @IBOutlet weak var legendaResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        legendaResultado.isHidden = true
    }
    
    @IBAction func descobrirIdade(_ sender: Any) {
        
        var idadeCachorro = Int(campoIdadeCachorro.text!)!
        
        idadeCachorro = idadeCachorro * 7
        
        legendaResultado.isHidden = false
        legendaResultado.text = "A idade do cachorro é \(idadeCachorro)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
