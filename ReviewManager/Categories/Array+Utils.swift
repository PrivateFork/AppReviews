//
//  Array+Utils.swift
//  App Reviews
//
//  Created by Knut Inge Grosland on 2015-04-19.
//  Copyright (c) 2015 Cocmoc. All rights reserved.
//

extension Array {
    mutating func removeObject<U: Equatable>(object: U) {
        var index: Int?
        for (idx, objectToCompare) in self.enumerate() {
            if let to = objectToCompare as? U {
                if object == to {
                    index = idx
                }
            }
        }
        
        if(index != nil) {
            removeAtIndex(index!)
        }
    }
}

