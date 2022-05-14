//
//  LottoMachineCheckerView.swift
//  Lotto
//
//  Created by jinho jeong on 2022/05/10.
//

import Foundation


enum Rank: Int {
    case first = 6
    case second
    case third
    case fourth
    
}


struct LottoMachineCheckerView {
    
    let winingGame: Lotto.Game
    
    func check(lotto: Lotto) {
        var ranks: [Rank] = []
        for game in lotto.games {
            let checkedCount = winingGame.checkSameNumber(of: game)
            if let rank = Rank(rawValue: checkedCount) {
                ranks.append(rank)
            }
        }
    }
}
