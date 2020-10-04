//
//  PessoaViewController.swift
//  tableViewOne
//
//  Created by Elias Nazareno on 04/10/20.
//

import UIKit

class PessoaViewController: UIViewController {

    @IBOutlet weak var labelNome: UILabel!
    @IBAction func actionButtonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
