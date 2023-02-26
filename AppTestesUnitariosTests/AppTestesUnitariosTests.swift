//
//  AppTestesUnitariosTests.swift
//  AppTestesUnitariosTests
//
//  Created by Davi Capistrano on 25/02/23.
//

import XCTest
@testable import AppTestesUnitarios

final class AppTestesUnitariosTests: XCTestCase {

    var viewController : ViewController?

    //life cycle
    override func setUpWithError() throws {
        viewController = ViewController()
    }

    //Desacolacao da Memoria
    //Saida do APP
    override func tearDownWithError() throws {
        viewController = nil
    }

    func testPrimeiraFuncao() throws {
        let valorTotal = 10 + 10
        XCTAssertEqual(20, valorTotal)
    }

}
