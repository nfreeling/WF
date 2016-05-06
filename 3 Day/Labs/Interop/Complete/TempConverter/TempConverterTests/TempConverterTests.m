//
//  TempConverterTests.m
//  TempConverterTests
//

#import <XCTest/XCTest.h>
#import "Temperature.h"

@interface TempConverterTests : XCTestCase

@end

@implementation TempConverterTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCelsiusToFahrenheit {
    // arrange
    Temperature *t = [[Temperature alloc] init];
    t.scale = C;
    t.value = 100.0;
    TempConverter *tc = [[TempConverter alloc] init];
    
    // act
    Temperature *result = [tc convert:t toScale:F];
    
    // assert
    XCTAssertEqualWithAccuracy(result.value, 212.0, 0.1);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end













































