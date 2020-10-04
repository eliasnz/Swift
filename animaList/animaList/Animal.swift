//
//  Animal.swift
//  animaList
//
//  Created by Elias Nazareno on 04/10/20.
//

import Foundation

class Animal {
    var name: String
    var breed: String
    var weight: Double
    var species: String
    
    init(name: String, breed: String, weight: Double, species: String) {
        self.name = name
        self.breed = breed
        self.weight = weight
        self.species = species
    }
}
