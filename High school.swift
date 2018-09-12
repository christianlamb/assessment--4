//
//  High school.swift
//  Assessment4
//
//  Created by Christian Lamb on 9/11/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation
//2. Create a HighSchool class that inherits from our base school class. Add a property that will represent a rival highschool. Additionally, add a property that will represent the school mascot.
//
// Add a function called pepRally that will print "\(school name) is the best! \(rival school name) is awful!"
//
// Override the schoolDescription function to make it print "\(school name) is the best in the state since \(the year it was built)! Go \(school mascot)'s!!!"
//
// Create an instance of a highschool and call both the schoolDescription and the pepRally functions.



class Highschool: School {
    let rivalSchool: String
    let mascot: String
    
    init(nameOfSchool: String, numberOfStudents: Int, publicOrPrivite: String, yearBuilt: Int, rivalSchool: String, mascot: String) {
        self.rivalSchool = rivalSchool
        self.mascot = mascot
        super .init(nameOfSchool: nameOfSchool, numberOfStudents: numberOfStudents, publicOrPrivite: publicOrPrivite, yearBuilt: yearBuilt)
    }
    
    func pepRally(){
        print("\(nameOfSchool) is the best! \(rivalSchool) is awful!")
    }
    
    override func schoolDescription() {
        print("\(nameOfSchool) is the best in the state since \(yearBuilt) GO \(mascot)!!!!")
    }
    
    
    
}

