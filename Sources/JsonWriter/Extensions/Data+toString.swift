//
//  Data+toString.swift
//  JsonWriter
//
//  Created by Michel Anderson Lutz Teixeira on 12/09/19.
//

import Foundation

extension Data {
    func toString() -> String {
        // swiftlint:disable force_unwrapping
        return (String(data: self, encoding: .utf8)?.replacingOccurrences(of: "\\/", with: ""))!
    }
}
