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
    UIView *testSuperview;
}

@end

@implementation UIViewMoveTest

- (void)setUp {
    [super setUp];
    
    testView = [UIView new];
    testView.frame = CGRectMake(10, 20, 40, 80);
    
    testSuperview = [UIView new];
    testSuperview.frame = CGRectMake(0, 0, 375, 667);
    
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
    XCTAssertEqual(testView.right,  0);         //should not calculate right value, when there's no superview
    XCTAssertEqual(testView.bottom, 0);
    
    [testSuperview addSubview:testView];
    XCTAssertEqual(testView.x,      10);
    XCTAssertEqual(testView.y,      20);
    XCTAssertEqual(testView.width,  40);
    XCTAssertEqual(testView.height, 80);
    XCTAssertEqual(testView.top,    20);
    XCTAssertEqual(testView.left,   10);
    XCTAssertEqual(testView.right,  325);
    XCTAssertEqual(testView.bottom, 567);
    
    [testView removeFromSuperview];
    XCTAssertEqual(testView.x,      10);
    XCTAssertEqual(testView.y,      20);
    XCTAssertEqual(testView.width,  40);
    XCTAssertEqual(testView.height, 80);
    XCTAssertEqual(testView.top,    20);
    XCTAssertEqual(testView.left,   10);
    XCTAssertEqual(testView.right,  0);
    XCTAssertEqual(testView.bottom, 0);
    
    
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
    XCTAssertEqual(testView.right,  0);
    XCTAssertEqual(testView.bottom, 0);
    
    [testSuperview addSubview:testView];
    XCTAssertEqual(testView.x,      110);
    XCTAssertEqual(testView.y,      220);
    XCTAssertEqual(testView.width,  440);
    XCTAssertEqual(testView.height, 880);
    XCTAssertEqual(testView.top,    220);
    XCTAssertEqual(testView.left,   110);
    XCTAssertEqual(testView.right,  -175);
    XCTAssertEqual(testView.bottom, -433);
}

@end
