//
//  AvengersController.swift
//  Avengers1
//
//  Created by Yan Akhrameev on 05/10/21.
//

import Foundation


class AvengersController {
    
    // MARK: - Properties:
    
    private var avengers: [Avenger] = avengersList
    
    
    var count: Int {
        return avengers.count
    }
    
    func currentAvenger(for index: Int) -> Avenger {
        return avengers[index]
    }
}
