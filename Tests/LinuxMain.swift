import XCTest

import MultiplexTests

var tests = [XCTestCaseEntry]()
tests += MultiplexTests.allTests()
XCTMain(tests)
