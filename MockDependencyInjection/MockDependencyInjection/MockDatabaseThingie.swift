//
//  MockDatabaseThingie.swift
//  MockDependencyInjection
//
//  Created by Dylan on 9/5/19.
//  Copyright © 2019 Dylan. All rights reserved.
//

import Foundation

class MockDatabaseThingie: Database {
    var data: String?

    var getDataFunctionWasCalled: Bool = false
    
    func getData() {
        getDataFunctionWasCalled = true
        data = "✅ This is mocked data..."
        print(data ?? "No data")
    }
}
