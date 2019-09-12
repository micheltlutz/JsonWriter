import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(JsonWriterTests.allTests),
        testCase(ArgumentsMenagerTest.allTests)
    ]
}
#endif
