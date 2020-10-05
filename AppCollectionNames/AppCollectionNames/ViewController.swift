//
//  ViewController.swift
//  AppCollectionNames
//
//  Created by Elias Nazareno on 04/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayNames = [String]()

    @IBOutlet weak var collectionViewNames: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewNames.delegate = self
        collectionViewNames.dataSource = self
        arrayNames.append("João")
        arrayNames.append("Maria")
        arrayNames.append("Pedro")
        arrayNames.append("Marcos")
        arrayNames.append("Marilia")
        arrayNames.append("Paulo")
        arrayNames.append("Lucas")
        arrayNames.append("Marcos")
        arrayNames.append("Paula")
        arrayNames.append("Italo")
        arrayNames.append("Luciano")
        arrayNames.append("Carlos")
        arrayNames.append("Nelson")
        arrayNames.append("Dimas")
        arrayNames.append("Dario")
        arrayNames.append("Antônio")
        arrayNames.append("Agostinho")
        arrayNames.append("Alan")
        arrayNames.append("Carla")
        arrayNames.append("Clara")
        arrayNames.append("Bianca")
        arrayNames.append("Bruno")
        arrayNames.append("Débora")
        arrayNames.append("Diego")
        arrayNames.append("Evaldo")
        arrayNames.append("Lucio")
        arrayNames.append("Levi")
        arrayNames.append("Marta")
        arrayNames.append("Roberta")
        
        
    }


}

extension ViewController: UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        arrayNames.remove(at: indexPath.row)
        collectionView.reloadData()
        }
         
     }

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellName", for: indexPath) as! CollectionViewCellName
        
        cell.Setup(name: arrayNames[indexPath.row])
        
        return cell
        
    }
    
    
}
