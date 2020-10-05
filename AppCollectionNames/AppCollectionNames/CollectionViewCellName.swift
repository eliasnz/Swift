//
//  CollectionViewCellName.swift
//  AppCollectionNames
//
//  Created by Elias Nazareno on 04/10/20.
//

import UIKit

class CollectionViewCellName: UICollectionViewCell {
    @IBOutlet weak var labelName: UILabel!

    func Setup(name: String){
        labelName.text = name
    }
}
