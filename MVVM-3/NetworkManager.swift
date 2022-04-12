//
//  NetworkManager.swift
//  MVVM-3
//
//  Created by Артур Дохно on 12.04.2022.
//

import Foundation

class NetworkManager: NSObject {
    
    func feathMoves(completion: ([String]) -> ()) {
        completion(["Move_1", "Move_2", "Move_3"])
    }
}
