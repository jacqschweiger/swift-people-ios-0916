//
//  Person.swift
//  swift-people
//
//  Created by Jacqueline Minneman on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

//Declare the Person class with four readonly properties:
//name, an immutable String,
//ageInYears, a mutable Int optional,
//skills, an empty mutable Array of Strings,
//qualifiedTutor, a calculated property of type Bool that, for now, simply returns false.
//We want to allow our experienced Persons to help out those who are just starting out. Make the qualifiedTutor calculated property return true if the person knows at least four (4) skills.


//Write a designated initializer that takes values for the name and ageInYears properties. Top-tip: Remember that ageInYears is an optional property.


class Person {
    
    let name: String
    var ageInYears: Int?
    var skills: [String] = []
    var qualifiedTutor: Bool {
        switch skills.count >= 4 {
        case true:
            return true
            
        case false:
            return false
        }
    }
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    //Write a convenience initializer that takes an argument for name, but not ageInYears. This should call the designated initializer with a nil value for ageInYears, since no information was collected for it.
    
    init(name: String) {
        self.name = name
        self.ageInYears = nil
    }
    
    //calls the designated initializer to set the name property to "John Doe" and ageInYears to nil.
    
    init(){
        name = "John Doe"
        ageInYears = nil
    }
    
    // If the ageInYears property contains nil, it should return a happy-birthday message with the person's name formatted like this for Jenny: HAPPY BIRTHDAY, JENNY!!! Hint: Make sure to upcase the person's name.
    
    //However, if ageInYears contains an integer value (not nil), this method should add one to the ageInYears property, determine the ordinal for the property's new value, and then return a string that, for Mark's 30th birthday, would read:

    
    func celebrateBirthday() -> String {
        var message = ""
        if ageInYears == nil {
            return "HAPPY BIRTHDAY, \(name.uppercased())!!!"
        } else if ageInYears != nil {    //how do you unwrap and mutate if not clear nil/not nil?
            ageInYears! += 1
            let ordinal = ageInYears!.ordinal()
            message = "HAPPY \(ageInYears!)\(ordinal.uppercased()) BIRTHDAY, \(name.uppercased())!!!"
        } else {
            print("error")
        }
        return message
    }



    //Use an if statement to check if the skill is already in the skills array (i.e. use the .contains() method which returns a Bool).
    
    
    func learnSkillBash() {
        if skills.contains("bash"){
            print("already there")
        } else {
            skills.append("bash")
        }
    }
    
    func learnSkillXcode() {
        if skills.contains("Xcode"){
            print("already there")
        } else {
            skills.append("Xcode")
        }
    }
    
    func learnSkillObjectiveC() {
        if skills.contains("Objective-C"){
            print("already there")
        } else {
            skills.append("Objective-C")
        }
    }
    
    func learnSkillSwift() {
        if skills.contains("Swift"){
            print("already there")
        } else {
            skills.append("Swift")
        }
    }
    
    func learnSkillInterfaceBuilder() {
        if skills.contains("Interface Builder"){
            print("already there")
        } else {
            
            skills.append("Interface Builder")
        }
    }

    
    

}
