//
//  LottoMachinePurchaseView.swift
//  Lotto
//
//  Created by jinho jeong on 2022/05/07.
//

import Foundation

struct LottoMachinePurchaseViewMock {
    private let lottoGenerator: LottoNumberGenerator = LottoNumberGenerator()
    var input: String? = ""
   
    init(input: String) {
        self.input = input
    }
    
    @discardableResult
    mutating func purchaseLotto() throws -> Lotto {
        guard let input = input, let amount = Int(input) else { throw PurchaseError.notNumber }
        guard amount % 1000 == 0 else { throw PurchaseError.remainer }
        let gameCount = amount / 1000
        printPurchasedLotto(of: gameCount)
        let lotto = lottoGenerator.generateLotto(of: gameCount)
        printLotto(lotto)
        return lotto
      
    }
    
    var printPurchasedLottoCallCount: Int = 0
    private mutating func printPurchasedLotto(of count: Int) {
        printPurchasedLottoCallCount += 1
        print("\(count)개를 구매하였습니다.")
    }
    
    var printLottoCallCount: Int = 0
    private mutating func printLotto(_ lotto: Lotto) {
        for game in lotto.games {
            print(game)
            print("\n")
            printLottoCallCount += 1
        }
    }
}
