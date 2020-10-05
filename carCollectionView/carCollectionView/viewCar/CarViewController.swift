//
//  CarViewController.swift
//  carCollectionView
//
//  Created by Elias Nazareno on 04/10/20.
//

import UIKit

class CarViewController: UIViewController {

    @IBOutlet weak var imageCar: UIImageView!
    @IBOutlet weak var labelNome: UILabel!
    var nome = ""
    var imagem = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        labelNome.text = nome
        imageCar.image = UIImage(named: imagem)
    }
    
}
