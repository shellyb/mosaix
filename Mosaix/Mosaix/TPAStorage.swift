//
//  TPAStorage.swift
//  Mosaix
//
//  Copyright © 2017 Nathan Eliason. All rights reserved.
//

import Foundation
import Photos


protocol TPAStorage : NSCoding {
    
    var pListPath : String {get set}
    
    init()
    func insert(asset : String, tpa: TenPointAverage) -> Void
    func findNearestMatch(to refTPA: TenPointAverage) -> (closest: String, diff: Float)?
    func isMember(_ asset: String) -> Bool

}
