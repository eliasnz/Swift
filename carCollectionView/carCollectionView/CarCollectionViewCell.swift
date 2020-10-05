//
//  CarCollectionViewCell.swift
//  carCollectionView
//
//  Created by Elias Nazareno on 04/10/20.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageCar: UIImageView!
    
    @IBOutlet weak var labelNome: UILabel!
    
    func Setup(car: Car){
        imageCar.image = UIImage(named: car.image)
        labelNome.text = car.name
    }
}
