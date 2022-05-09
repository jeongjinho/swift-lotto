//
//  LottoNumberGenerator.swift
//  Lotto
//
//  Created by jinho jeong on 2022/05/10.
//

import Foundation

final class LottoNumberGenerator {
    
    struct Option {
        static let generationLimit: Int = 5
        static let range: Range<Int> = Range(1...45)
    }
    
    func generateLotto(of count: Int) -> Lotto {
        var lotto: Lotto = Lotto()
        for _ in 0..<count {
            let game = generateGame()
            lotto.add(game: game)
        }
        return lotto
    }
    
    private func generateGame() -> Lotto.Game {
        var numbers: Set<Int> = .init()
        while(numbers.count < Option.generationLimit) {
            let randomNumber = Int.random(in: Option.range)
            numbers.insert(randomNumber)
        }
        return Lotto.Game.init(numbers: Array(numbers.sorted(by: <)))
    }
}
