//
//  CustomCell.swift
//  tableViewOne
//
//  Created by Elias Nazareno on 03/10/20.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelCargo: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func Setup(pessoa: Pessoas) {
        labelNome.text = "Nome: \(pessoa.nome)"
        labelEmail.text = "Email:\(pessoa.email)"
        labelCargo.text = pessoa.cargo
    }

}
