//
//  Database.swift
//  MockDependencyInjection
//
//  Created by Dylan on 9/5/19.
//  Copyright © 2019 Dylan. All rights reserved.
//

import Foundation

protocol Database {
    var data: String { get set }
    
    func getData()
}
