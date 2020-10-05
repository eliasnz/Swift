//
//  ViewController.swift
//  exercicio03
//
//  Created by Elias Nazareno on 05/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carCollectionView: UICollectionView?
   
    var arrayCar = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayCar.append(Car(name: "Carro1", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro2", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro3", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro4", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro5", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro6", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro7", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro8", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro9", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro10", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro11", image: "car1.jpg"))
        arrayCar.append(Car(name: "Carro12", image: "car1.jpg"))
        
        
        carCollectionView?.delegate = self
        carCollectionView?.dataSource = self
    }


}

extension ViewController: UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let detailCar = CarViewController.getViewControllerCar() {

                detailCar.imageCar = arrayCar[indexPath.row].image
            
            navigationController?.pushViewController(detailCar, animated: true)
        }
    }
    
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarViewCell", for: indexPath) as! CarViewCell
        
        cell.setup(car: arrayCar[indexPath.row])
        
        return cell
    }
    
    
}
