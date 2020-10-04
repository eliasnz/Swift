//
//  AnimalViewController.swift
//  animaList
//
//  Created by Elias Nazareno on 04/10/20.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelBreed: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var labelSpecie: UILabel!
    
    @IBAction func actionFechar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
