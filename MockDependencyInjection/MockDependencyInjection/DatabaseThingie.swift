//
//  DatabaseThingie.swift
//  MockDependencyInjection
//
//  Created by Dylan on 9/5/19.
//  Copyright © 2019 Dylan. All rights reserved.
//

import Foundation

class DatabaseThingie: Database {
    var data: String?
    
    func getData() {
        data = "⚠️ This is the real data, becareful..."
        print(data ?? "No data")
    }
}
