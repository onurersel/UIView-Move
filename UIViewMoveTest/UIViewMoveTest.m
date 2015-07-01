//
//  UIViewMoveTest.m
//  UIViewMoveTest
//
//  Created by Onur Ersel on 01/07/15.
//
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "UIView+Move.h"

@interface UIViewMoveTest : XCTestCase
{
    UIView *testView;
}

@end

@implementation UIViewMoveTest

- (void)setUp {
    [super setUp];
    
    testView = [UIView new];
    testView.frame = CGRectMake(10, 20, 40, 80);
    
}

- (void)tearDown {
    
    testView = nil;
    
    [super tearDown];
}


-(void)testMove
{
    
    //getters
    XCTAssertEqual(testView.x,      10);
    XCTAssertEqual(testView.y,      20);
    XCTAssertEqual(testView.width,  40);
    XCTAssertEqual(testView.height, 80);
    XCTAssertEqual(testView.top,    20);
    XCTAssertEqual(testView.left,   10);
    XCTAssertEqual(testView.right,  50);
    XCTAssertEqual(testView.bottom, 100);
    
    
    //setters
    testView.x = 110;
    testView.y = 220;
    testView.width = 440;
    testView.height = 880;
    
    XCTAssertEqual(testView.x,      110);
    XCTAssertEqual(testView.y,      220);
    XCTAssertEqual(testView.width,  440);
    XCTAssertEqual(testView.height, 880);
    XCTAssertEqual(testView.top,    220);
    XCTAssertEqual(testView.left,   110);
    XCTAssertEqual(testView.right,  550);
    XCTAssertEqual(testView.bottom, 1100);
}

@end
