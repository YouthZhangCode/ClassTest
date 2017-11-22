//
//  ViewController.swift
//  ClassTest
//
//  Created by MAC on 2017/10/14.
//  Copyright © 2017年 MTV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let view = UIView()
        print(view)
        
        let person = Person(name: "aa", grade: "bb", lastName:"cc", petName:"July")
        person.lastName = person.name
        person.pet = nil
        
        print(person.name, person.grade, person.lastName)
        
        let personB = Person()
        print(personB.lastName, "=====")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Person {
    var name: String
    var grade: String
    var lastName: String
    var pet: Dog!
    
    convenience init() {
        self.init(name: "", grade: "", lastName: "", petName: "")
    }
    
    init(name: String, grade: String, lastName: String, petName:String) {
        self.name = name
        self.grade = grade
        self.lastName = lastName
        self.pet = Dog(name: petName, owner: self)
    }
    
    
    
}

class Dog {
    var name: String
    unowned var owner: Person
    init(name:String, owner:Person) {
        self.name = name
        self.owner = owner
    }
}

class Cat {
    var name: String = ""
    var color: String
    var weight: Double
    
    init(color: String, weight:Double) {
        self.color = color
        self.weight = weight
    }
    convenience init(color: String) {
        self.init(color: color, weight: 0.0)
        
    }
    
}




