//
//  main.swift
//  Assessment4
//
//  Created by Ryan Brashear on 9/10/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation

//1. Create a class called School. Give it properties to model:
// -the name of the school
// -the number of students that attend
// -if it is a public or private school
// -the year it was built
//
// Add a function called schoolDescription to the School class that will print out "\(name of school) was founded in \(the year it was built) and has \(number of students) currently in attendance"

class School {
    let nameOfSchool: String
    var numberOfStudents: Int
    let publicOrPrivite: String
    let yearBuilt: Int
    
    init(nameOfSchool: String, numberOfStudents: Int, publicOrPrivite: String, yearBuilt: Int ) {
        self.nameOfSchool = nameOfSchool
        self.numberOfStudents = numberOfStudents
        self.publicOrPrivite = publicOrPrivite
        self.yearBuilt = yearBuilt
        }
    
    func schoolDescription() {
        print("\(nameOfSchool) was built in \(yearBuilt) and has \(numberOfStudents) students.")
    }
}



// Create an instance of school and then call it's schoolDescription function

let barrenCounty = School(nameOfSchool: "Barren county High", numberOfStudents: 1300, publicOrPrivite: "Public", yearBuilt: 1989)
barrenCounty.schoolDescription()
//2. Create a HighSchool class that inherits from our base school class. Add a property that will represent a rival highschool. Additionally, add a property that will represent the school mascot.
//Check highschool file for class!!!


// Add a function called pepRally that will print "\(school name) is the best! \(rival school name) is awful!"
//
// Override the schoolDescription function to make it print "\(school name) is the best in the state since \(the year it was built)! Go \(school mascot)'s!!!"
//
// Create an instance of a highschool and call both the schoolDescription and the pepRally functions.
let barrenHigh = Highschool(nameOfSchool: "Barren county", numberOfStudents: 1300, publicOrPrivite: "Public", yearBuilt: 1898, rivalSchool: "Glassgow", mascot: "Trojan")

barrenHigh.pepRally()


//3.Create a new class called MagicalHighSchool (think Hogwarts from Harry Potter) that inherits from our HighSchool class. Add new properties for the size of the castle in square feet and the number of secret passages it contains.
//Check Magic school file for class!!!


// Override the pepRally function to make it print "\(school name) is the most magical school on earth! It's castle is (\castle size) square feet, and it has \(number of secret passages) secret passageways! Hurray!"
//
// Create a new function called quidditchMatch that will print "Time for the big quidditch game!"
//
// Create an instance of a magical highschool. Then call all 3 of the functions that it contains/inherits.
let hogwarts = MagicalHighSchool(nameOfSchool: "Hogwarts", numberOfStudents: 280, publicOrPrivite: "Privite", yearBuilt: 990, rivalSchool: "Beauxbatons, Academy", mascot: "Lion", castlesSquareFeet: 51000, numberOfSecretPassages: 7)
hogwarts.pepRally()
hogwarts.quidditchMatch()
hogwarts.schoolDescription()

//BONUS: Create a new Date() object that represents the current date. Create a date formatter and set the custom date format for it. Use the date formatter to create a formatted String from the date object, and print the formatted String.

let currentDate = Date()
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MMM d, yyyy"
print(dateFormatter.string(from: currentDate))

