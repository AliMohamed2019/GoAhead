//
//  GoAheadTests.swift
//  GoAheadTests
//
//  Created by Maged on 3/31/19.
//  Copyright © 2019 Maged. All rights reserved.
//

import XCTest
@testable import GoAhead


class GoAheadTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetAllCate() {
        //let GetAllCateInst = netWorking()
        let exp = waitForExpectations(timeout: 10) { (error) in
            print (error?.localizedDescription)
            
            netWorking.GetAllCate { (cate) in
                XCTAssertTrue(cate!.count != 0)
                XCTAssertNil(cate , "This Fanc shoud not be nil")
            }
            XCTFail()
        }
        
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
