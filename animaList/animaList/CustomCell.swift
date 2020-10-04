//
//  CustomCell.swift
//  animaList
//
//  Created by Elias Nazareno on 04/10/20.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelBreed: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var labelSpecies: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func Setup(animal: Animal){
        
        labelName.text = "Name: \(animal.name)"
        labelBreed.text = "Breed: \(animal.breed)"
        labelWeight.text = "Weight: \(String(animal.weight)) kg"
        labelSpecies.text = "Specie: \(animal.species)"
    }

}
