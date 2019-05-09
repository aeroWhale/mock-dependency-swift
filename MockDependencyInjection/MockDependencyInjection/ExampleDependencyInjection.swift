//
//  ExampleDenpendencyInjection.swift
//  MockDependencyInjection
//
//  Created by Dylan on 9/5/19.
//  Copyright © 2019 Dylan. All rights reserved.
//

import Foundation

class ExampleDependencyInjection {
    var myDatabase: Database
    
    // Original stuff
    init() {
        self.myDatabase = DatabaseThingie()
    }
    
    // Inject other kind of DatabaseThingie
    init(useThisDatabaseInstead: Database) {
        myDatabase = useThisDatabaseInstead
    }
    
    func doStuff() {
        myDatabase.getData()
    }
}
