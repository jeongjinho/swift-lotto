//
//  StringAdditionCaculatorTests.swift
//  StringAdditionCaculator
//
//  Created by jinho jeong on 2022/05/04.
//

import XCTest
@testable import Lotto

class StringAdditionCaculatorTests: XCTestCase {

    let sut: StringAdditionCaculator = StringAdditionCaculator()
    
    func test_given음수_then에러가발생해야함() {
    
    }
    
    func test_given문자_then에러가발생해야함() throws {
    
    }
    
    func test_given공백문자열_then0값을_반환해야함() {
        
    }
    
    func test_given숫자배열_when더하기_then숫자배열을_모두더한_합반환() {
        
    }
    
    func test_given문자내에허용되지않는구분자_when더하기_then에러발생() throws {
        
    }
    
    func test_given문자열_when구분자를기준으로나누기_then나뉜문자열배열반환() {
        
        let given = "1,3,5"
        
        sut.add(string: given)
//        let expectaion: [String] = ["1", "2", "3"]
    }

}
