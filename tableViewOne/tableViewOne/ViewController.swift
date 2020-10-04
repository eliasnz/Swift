//
//  ViewController.swift
//  tableViewOne
//
//  Created by Elias Nazareno on 03/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayPessoas = [Pessoas]()

    @IBOutlet weak var tableViewPessoas: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        arrayPessoas.append(Pessoas(nome: "Alana Esther Luciana Peixoto",cargo: "Gerente",email: "alanaestherlucianapeixoto@metraseg.com.br"))
        arrayPessoas.append(Pessoas(nome: "Raimunda Luna Beatriz Pereira",cargo: "Promotor",email: "raimundalunabeatrizpereira@mavex.com.br"))
        arrayPessoas.append(Pessoas(nome: "Ana Sophia Luna Freitas",cargo: "Vendedor",email: "anasophialunafreitas@vivax.com.br"))
        arrayPessoas.append(Pessoas(nome: "Sandra Amanda Ribeiro",cargo: "Vendedor",email: "ssandraamandaribeiro@publiout.com.br"))
        arrayPessoas.append(Pessoas(nome: "Enrico Kauê Calebe Rezende",cargo: "Vendedor",email: "enricokauecaleberezende@predilectasorocaba.com.br"))
        arrayPessoas.append(Pessoas(nome: "Heloise Clara Vitória da Mata",cargo: "Vendedor",email: "hheloiseclaravitoriadamata@tkk.com.br"))
        arrayPessoas.append(Pessoas(nome: "Jennifer Beatriz Pires",cargo: "Vendedor",email: "jenniferbeatrizpires@brunofaria.com"))
        arrayPessoas.append(Pessoas(nome: "Andrea Gabriela da Mata",cargo: "Atendente",email: "andreagabrieladamata_@brws.com.br"))
        arrayPessoas.append(Pessoas(nome: "Márcio Luís Yago Melo",cargo: "Atendente",email: "marcioluisyagomelo-71@inbox.com"))
        arrayPessoas.append(Pessoas(nome: "Elza Tânia Hadassa Araújo",cargo: "Atendente",email: "elzataniahadassaaraujo@cvc.com.br"))
        arrayPessoas.append(Pessoas(nome: "Raimundo Eduardo Freitas",cargo: "Op. Caixa",email: "raimundoeduardofreitas@jglima.com.br"))
        arrayPessoas.append(Pessoas(nome: "Hadassa Daniela Figueiredo",cargo: "Op. Caixa",email: "hadassadanielafigueiredo_@gat.com.br"))
        arrayPessoas.append(Pessoas(nome: "Breno Ruan Henrique Galvão",cargo: "Op. Caixa",email: "brenoruanhenriquegalvao@bfgadvogados.com"))
        arrayPessoas.append(Pessoas(nome: "Ester Vanessa Cardoso",cargo: "Fiscal",email: "estervanessacardoso_@aprimor.com"))
        arrayPessoas.append(Pessoas(nome: "Lívia Daniela Laura Rodrigues",cargo: "Diretor",email: "lliviadanielalaurarodrigues@mantegassi.com"))
        
        tableViewPessoas.delegate = self
        tableViewPessoas.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let pessoaView = UIStoryboard(name: "Pessoa", bundle: nil).instantiateInitialViewController() as? PessoaViewController {            
            present(pessoaView, animated: true, completion:     nil)
            pessoaView.labelNome.text = arrayPessoas[indexPath.row].nome
        }
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPessoas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        cell.Setup(pessoa: arrayPessoas[indexPath.row])
        
        return cell
    }
    
    
}
