//
//  LottoTicket.swift
//  Lotto
//
//  Created by jinho jeong on 2022/05/10.
//

import Foundation

struct Lotto {
    
    struct Game {
        struct CandidateNumber: Hashable {
            static func == (lhs: Lotto.Game.CandidateNumber, rhs: Lotto.Game.CandidateNumber) -> Bool {
                return (lhs.number == rhs.number) &&
                (lhs.isWinning == rhs.isWinning)
            }
            
            let number: Int
            private(set) var isWinning: Bool = false
            
            init(number: Int) {
                self.number = number
            }
            
            mutating func check() -> CandidateNumber {
                var candidateNumber = CandidateNumber(number: number)
                self.isWinning.toggle()
                candidateNumber.isWinning = self.isWinning
                return candidateNumber
                
            }
        }
        var numbers: [CandidateNumber]
        
        init(numbers: [CandidateNumber]) {
            self.numbers = numbers
        }
        
        func checkSameNumber(of game: Game) -> Int {
            return Set(self.numbers).intersection(Set(game.numbers)).count
        }
        
        func checkedNumberCount() -> Int {
            return numbers.filter{$0.isWinning}.count
        }
    }
    
    var games: [Game] = []
    
    mutating func add(game: Game) {
        self.games.append(game)
    }
}
