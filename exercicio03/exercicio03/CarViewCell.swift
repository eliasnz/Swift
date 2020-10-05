//
//  CarViewCell.swift
//  exercicio03
//
//  Created by Elias Nazareno on 05/10/20.
//

import UIKit

class CarViewCell: UICollectionViewCell {
   
    @IBOutlet weak var imageCar: UIImageView?
    @IBOutlet weak var labelNameCar: UILabel?
    
    func setup(car: Car){
        labelNameCar?.text = car.name
        imageCar?.image = UIImage(named: car.image)
    }
    
}
