//
//  ExampleDependencyNonInjection.swift
//  MockDependencyInjection
//
//  Created by Dylan on 9/5/19.
//  Copyright © 2019 Dylan. All rights reserved.
//

import Foundation

class ExampleDependencyNonInjection {
    // Variable, Instance variable... Denpendency...
    var myDatabase: Database
    
    init() {
        self.myDatabase = DatabaseThingie()
    }
    
    func doStuff() {
        myDatabase.getData()
    }
}
