//
//  ViewController.swift
//  animaList
//
//  Created by Elias Nazareno on 04/10/20.
//

import UIKit

class ViewController: UIViewController {

    var arrayAnimal = [Animal]()
    
    
    @IBOutlet weak var tableViewAnimal: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayAnimal.append(Animal(name: "Zeige", breed: "Gambá", weight: 10.2, species: "Mamíferos"))
        arrayAnimal.append(Animal(name: "Wofes", breed: "Quati", weight: 30.0, species: "Mamíferos"))
        arrayAnimal.append(Animal(name: "Malre", breed: "Lontra", weight: 110, species: "Mamíferos"))
        arrayAnimal.append(Animal(name: "Nugal", breed: "Aracuã", weight: 2.36, species: "Aves"))
        arrayAnimal.append(Animal(name: "Ushnbak", breed: "Araponga", weight: 1.14, species: "Aves"))
        arrayAnimal.append(Animal(name: "Doyadar", breed: "Socozinho", weight: 0.98, species: "Aves"))
        arrayAnimal.append(Animal(name: "Reci", breed: "Traíra", weight: 3.14, species: "Peixes"))
        arrayAnimal.append(Animal(name: "Zuida", breed: "Cará-pitanga", weight: 1, species: "Peixes"))
        arrayAnimal.append(Animal(name: "Eavfai", breed: "Cascudo", weight: 3.4, species: "Peixes"))
        arrayAnimal.append(Animal(name: "Burzherba", breed: "Jararaca", weight: 7.1, species: "Répteis"))
        arrayAnimal.append(Animal(name: "Lebocini", breed: "Cágado", weight: 2.69, species: "Répteis"))
        arrayAnimal.append(Animal(name: "Jurema", breed: "Cobra-coral", weight: 4.67, species: "Répteis"))
        
        // Do any additional setup after loading the view.
        tableViewAnimal.delegate = self
        tableViewAnimal.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let animalView = UIStoryboard(name: "Animal", bundle: nil).instantiateInitialViewController() as? AnimalViewController {
            present(animalView, animated: true, completion: nil)
            
            animalView.labelName.text = "Name: \(arrayAnimal[indexPath.row].name)"
            animalView.labelBreed.text = "Breed: \(arrayAnimal[indexPath.row].breed)"
            animalView.labelWeight.text = "Weight: \(String(arrayAnimal[indexPath.row].weight)) kg"
            animalView.labelSpecie.text = "Specie: \(arrayAnimal[indexPath.row].species)"
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAnimal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        cell.Setup(animal: arrayAnimal[indexPath.row])
        
        return cell
    }
    
    
}
