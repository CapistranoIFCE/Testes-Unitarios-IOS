//
//  Utils.swift
//  AppTestesUnitarios
//
//  Created by Davi Capistrano on 26/02/23.
//

import Foundation

class Utils {

    static func average(numbers: [Int]) -> Int {
        /*
         var total = 0
         for number in numbers {
         total = total + number
         }
         total = total / numbers.count
         return total
         */

        // REFATORADO ->
        return numbers.reduce(0, +) / numbers.count
    }

    // Função para verificar se uma string é um número Inteiro
    static func isInt(text: String) -> Bool{
        return Int(text) != nil
    }

    static func random(upperBound: Int) -> Int {
        return Int.random(in: 0...upperBound)
    }
    static func trim(text: String) -> String {
        return text.trimmingCharacters(in: .whitespaces)
    }
}
