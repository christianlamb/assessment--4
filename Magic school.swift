//
//  Magic school.swift
//  Assessment4
//
//  Created by Christian Lamb on 9/11/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation
//3.Create a new class called MagicalHighSchool (think Hogwarts from Harry Potter) that inherits from our HighSchool class. Add new properties for the size of the castle in square feet and the number of secret passages it contain

class MagicalHighSchool: Highschool {
    let castlesSquareFeet: Double
    let numberOfSecretPassages: Int
    
    init(nameOfSchool: String, numberOfStudents: Int, publicOrPrivite: String, yearBuilt: Int, rivalSchool: String, mascot: String, castlesSquareFeet: Double, numberOfSecretPassages: Int) {
        self.castlesSquareFeet = castlesSquareFeet
        self.numberOfSecretPassages = numberOfSecretPassages
        super .init(nameOfSchool: nameOfSchool, numberOfStudents: numberOfStudents, publicOrPrivite: publicOrPrivite, yearBuilt: yearBuilt, rivalSchool: rivalSchool, mascot: mascot)
    }
    // Override the pepRally function to make it print "\(school name) is the most magical school on earth! It's castle is (\castle size) square feet, and it has \(number of secret passages) secret passageways! Hurray!"
    
    override func pepRally() {
        print("\(nameOfSchool) is the most magical school on earth! It's castle is \(castlesSquareFeet) square feet, and it has \(numberOfSecretPassages) secret passageways! Hurray!")
    }
    // Create a new function called quidditchMatch that will print "Time for the big quidditch game!"
    func quidditchMatch() {
        print("Time for the big quidditch game!")
    }
    
}
