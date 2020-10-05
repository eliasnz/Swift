//
//  ViewController.swift
//  carCollectionView
//
//  Created by Elias Nazareno on 04/10/20.
//

import UIKit

class ViewController: UIViewController {

    var arrayCar = [Car]()
    
    @IBOutlet weak var collectionViewCar: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        arrayCar.append(Car(name: "Carro 1", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro 2", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro 3", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro 4", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro 5", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro 6", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro 7", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro 8", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro 9", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro 10", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro 11", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro 12", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro 13", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro 14", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro 15", image: "car1.jpg"))
        
        
        collectionViewCar.delegate = self
        collectionViewCar.dataSource = self
    }


}

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        if let myCar = UIStoryboard(name: "Car", bundle: nil).instantiateInitialViewController() as? CarViewController {
            myCar.nome = arrayCar[indexPath.row].name
            myCar.imagem = arrayCar[indexPath.row].image
            navigationController?.pushViewController(myCar, animated: true)
            
        }
    }
    
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCollectionViewCell", for: indexPath) as! CarCollectionViewCell
        cell.Setup(car: arrayCar[indexPath.row])
        return cell
    }
    
    
}
