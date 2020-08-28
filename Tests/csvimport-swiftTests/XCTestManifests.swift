import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(csvimport_swiftTests.allTests),
    ]
}
#endif
