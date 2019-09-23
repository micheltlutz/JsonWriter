//
//  ArgumentsMenagerTest.swift
//  JsonWriterTests
//
//  Created by Michel Anderson Lutz Teixeira on 12/09/19.
//

import XCTest
import class Foundation.Bundle
@testable import JsonWriter

class ArgumentsMenagerTest: XCTestCase {
    var argumentManager: ArgumentManager!

    let arguments = ["--path=/Users/michel.lutz/DeviOS/ManipulaJson/Resources/",
                     "--fileName=ModuleBinary.json",
                     "--newVersion=1.0.2",
                     "--newUrlVersion=https://micheltlutz.me"]
    override func setUp() {
        super.setUp()
        argumentManager = ArgumentManager()
    }

    func testSplitPathHasValue() {
        let value = argumentManager.getValue(from: arguments[0])
        XCTAssertNotNil(value)
    }

    static var allTests = [
        ("testSplitPathHasValue", testSplitPathHasValue),
    ]
}
