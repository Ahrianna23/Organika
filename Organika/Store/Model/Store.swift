//
//  Store.swift
//  Organika
//
//  Created by Artem Vaniukov on 23.09.2020.
//  Copyright © 2020 Ahrianna Daniels. All rights reserved.
//

import Foundation
import MapKit

class Store {
    
    /// What else do we need here?
    var owner: User?
    
    var name: String?
    var description: String?
    var location: CLLocation?
    
    var items: [Item]?
    
}
