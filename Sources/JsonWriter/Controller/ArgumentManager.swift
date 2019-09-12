//
//  ArgumentManager.swift
//  JsonWriter
//
//  Created by Michel Anderson Lutz Teixeira on 12/09/19.
//

import Foundation

class ArgumentManager {

    func getValue(from arg: String) -> String {
        let split = arg.split(separator: "=")
        return String(split[1])
    }

    func getValues(from arqs: [String]) -> [String] {
        var values: [String] = []

        for arg in arqs {
            let split = arg.split(separator: "=")
            values.append(String(split[1]))
        }

        return values
    }

    func getKeyValue(from arqs: [String]) -> [(arg: String, value: String)] {
        var values: [(arg: String, value: String)] = []

        for arg in arqs {
            let split = arg.split(separator: "=")
            values.append((arg: String(split[0]), value: String(split[1])))
        }

        return values
    }
}
