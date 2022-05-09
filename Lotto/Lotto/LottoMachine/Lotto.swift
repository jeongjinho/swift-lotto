//
//  LottoTicket.swift
//  Lotto
//
//  Created by jinho jeong on 2022/05/10.
//

import Foundation



struct Lotto {
    
    struct Game {
        let numbers: [Int]
    }
    
    var games: [Game] = []
    
    mutating func add(game: Game) {
        self.games.append(game)
    }
}
