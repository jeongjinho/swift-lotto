//
//  LottoMachinePurchaseView.swift
//  Lotto
//
//  Created by jinho jeong on 2022/05/07.
//

import Foundation

enum PurchaseError: Error {
    case notNumber
    case remainer
}

struct LottoMachinePurchaseView {
        
    func purchaseLotto() throws -> Int {
        guard let input = readLine(), let amount = Int(input) else { throw PurchaseError.notNumber }
        guard amount % 1000 == 0 else { throw PurchaseError.remainer }
        printPurchasedLotto(of: amount / 1000)
        return amount / 1000
    }
    
    private func printPurchasedLotto(of count: Int) {
        print("\(count)개를 구매하였습니다.")
    }
}
