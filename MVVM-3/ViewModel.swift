//
//  ViewModel.swift
//  MVVM-3
//
//  Created by Артур Дохно on 12.04.2022.
//

import Foundation

class ViewModel: NSObject {
    
    @IBOutlet weak var networkManager: NetworkManager!
    
    private var moves: [String]?
    
    func fetchMoves(completion: @escaping () -> ()) {
        networkManager.feathMoves { [weak self] moves in
            self?.moves = moves
            completion()
        }
    }
    
    func numberOfRowsInSection() -> Int {
        return moves?.count ?? 0
    }
    
    func titleForCell(atIndexPath indexPath: IndexPath) -> String {
        guard let moves = moves else { return "" }

        return moves[indexPath.row]
    }
}
