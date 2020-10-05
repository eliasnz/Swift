//
//  CarViewController.swift
//  exercicio03
//
//  Created by Elias Nazareno on 05/10/20.
//

import UIKit

class CarViewController: UIViewController {
    
    @IBOutlet weak var imagePrincipal: UIImageView?
    
    var imageCar = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        imagePrincipal?.image = UIImage(named: imageCar)
    }
    
    static func getViewControllerCar() -> CarViewController? {
        
        if let myCarDetail = UIStoryboard(name: "Car", bundle: nil).instantiateInitialViewController() as? CarViewController {
           return myCarDetail
        }
        
        return nil
    }

}
