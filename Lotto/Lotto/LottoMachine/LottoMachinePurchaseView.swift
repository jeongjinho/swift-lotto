//
//  LottoMachinePurchaseView.swift
//  Lotto
//
//  Created by jinho jeong on 2022/05/07.
//

import Foundation

enum PurchaseError: LocalizedError {
    case notNumber
    case remainer
}

extension PurchaseError {
    var errorDescription: String? {
        switch self {
        case .notNumber:
            return "숫자로 변환되지 않는 입력값입니다."
        case .remainer:
            return "천원단위로 구매가능합니다."
        }
    }
}



struct LottoMachinePurchaseView {
    private let lottoGenerator: LottoNumberGenerator = LottoNumberGenerator()
    
    func purchaseLotto() -> Lotto {
        do {
            guard let input = readLine(), let amount = Int(input) else { throw PurchaseError.notNumber }
            guard amount % 1000 == 0 else { throw PurchaseError.remainer }
            let gameCount = amount / 1000
            printPurchasedLotto(of: gameCount)
            let lotto = lottoGenerator.generateLotto(of: gameCount)
            printLotto(lotto)
            return lotto
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    private func printPurchasedLotto(of count: Int) {
        print("\(count)개를 구매하였습니다.")
    }
    
    private func printLotto(_ lotto: Lotto) {
        for game in lotto.games {
            print(game)
            print("\n")
        }
    }
}
