//
//  LotoMachineResult.swift
//  LottoTests
//
//  Created by jinho jeong on 2022/05/07.
//

import XCTest

class LotoMachineResult: XCTestCase {
    
    let sut: LottoMachineCheckerView = LottoMachineCheckerView()
    
    
    func test_given숫자가아닌당첨번호_when숫자로이뤄져있는지체크_then숫자가아니라는에러발생() {
        
    }
    
    func test_given입력된당첨번호중_0between45사이_미포함_when범위체크_then_범위밖숫자에러발생() {
        
    }
    
    func test_given중복숫자가있는당첨번호_when중복체크_then_각번호가독립이아니라는에러발생() {
        
    }
    
    func test_given로또의한게임_when게임당당첨체크_then당첨갯수가정확한지확인() {
        
    }
    
    func test_given3개일치하는로또게임2개_when로또당첨체크_then3개하는로또가2개인지확인() {
        
    }
    
    func test_given구매금액_when총당첨금액비율계산_then계산된비율이같은지확인() {
        
    }

}
