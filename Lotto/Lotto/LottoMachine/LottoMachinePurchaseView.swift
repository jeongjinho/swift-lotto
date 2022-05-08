//
//  LottoMachinePurchaseView.swift
//  Lotto
//
//  Created by jinho jeong on 2022/05/07.
//

import Foundation


struct LottoMachinePurchaseView {

    enum PurchaseError: Error {
        case notNumber
    }
    
    func purchaseLotto() throws -> Int {

        guard let input = readLine(), let amount = Int(input) else { throw PurchaseError.notNumber }
        return amount / 1000
    }
}
