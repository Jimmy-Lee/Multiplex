import XCTest
@testable import Multiplex

final class MultiplexTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Multiplex().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
