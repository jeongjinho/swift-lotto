//
//  LottoNumberGeneratorTests.swift
//  LottoTests
//
//  Created by jinho jeong on 2022/05/10.
//

import XCTest

class LottoNumberGeneratorTests: XCTestCase {

    let sut: LottoNumberGenerator = LottoNumberGenerator()
    
    func test_given로또발급갯수_when갯수에따른발급_then발급된로또배열의카운트가_같은지체크() {
        //given
        let gameCount: Int = 3
        
        //when
        let lotto: Lotto = sut.generateLotto(of: gameCount)
        let lottoGameCount: Int = lotto.games.count
        
        //then
        XCTAssertEqual(lottoGameCount, gameCount)
    }
    
    func test_given_하나의로또번호_when중복번호확인_then중복번호가있다면넘어가야함() {
        
    }
    
}
