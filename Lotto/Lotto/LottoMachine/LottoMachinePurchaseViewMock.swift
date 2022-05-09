//
//  LottoMachinePurchaseView.swift
//  Lotto
//
//  Created by jinho jeong on 2022/05/07.
//

import Foundation


struct LottoMachinePurchaseViewMock {

    var input: String? = ""
   
    
    init(input: String) {
        self.input = input
    }
    
    @discardableResult
    mutating func purchaseLotto() throws -> Int {
        guard let input = input, let amount = Int(input) else { throw PurchaseError.notNumber }
        guard amount % 1000 == 0 else { throw PurchaseError.remainer }
        printPurchasedLotto(of: amount / 1000)
        return amount / 1000
    }
    
    var printPurchasedLottoCallCount: Int = 0
    private mutating func printPurchasedLotto(of count: Int) {
        printPurchasedLottoCallCount += 1
        print("\(count)개를 구매하였습니다.")
    }
    
    func generateLottoNumber(of tickets: Int) -> [[Int]] {
        return [[]]
    }
}
