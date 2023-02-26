//
//  UtilsTests.swift
//  AppTestesUnitariosTests
//
//  Created by Davi Capistrano on 26/02/23.
//

import XCTest
@testable import AppTestesUnitarios

// 01 - Função para verificar se uma string é um número Inteiro
// 02 - Função para gerar um número aleatório de 0 a um valor especifico
// 03 - Função para remover os espaços em branco no in[icio e no final de uma string

final class UtilsTests: XCTestCase {

// Func Test apenas para exemplo
    func testAverage(){
        let numbers = [1, 2, 3, 4, 5]
        let expected = 3
        let result = Utils.average(numbers: numbers)
        XCTAssertEqual(result, expected)
    }

// 01 - Func
    func testIsInt(){
        let textTrue = "10000"
        let resultTrue = Utils.isInt(text: textTrue)

        let textFalse = "100Text"
        let resultFalse = Utils.isInt(text: textFalse)

        XCTAssertTrue(resultTrue)
        XCTAssertFalse(resultFalse)
    }

// 02 - Func
    func testRandom(){
        let upperBound = 1000
        let result = Utils.random(upperBound: upperBound)
        XCTAssertTrue(result >= 0 && result <= upperBound, "O número sorteado não pode ser menor que zero ou maior que o upperBound!")
    }

// 03 - Func
    func testTrim(){
        let text = "        Test Exemplo        "
        let expected = "Test Exemplo"
        let result = Utils.trim(text: text)
        XCTAssertEqual(expected, result, "Os textos não condiz por causa dos espaços")
    }
}
