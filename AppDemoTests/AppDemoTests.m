//
//  AppDemoTests.m
//  AppDemoTests
//
//  Created by ydc on 14-7-8.
//  Copyright (c) 2014年 ydc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Tool.h"
@interface AppDemoTests : XCTestCase

@end

@implementation AppDemoTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

- (void)testdateStartOfWeek{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	[dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    [dateFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]];
	
    assert([[Tool dateStartOfWeek:[dateFormatter dateFromString:@"2014/07/23 11:11:11"]] isEqualToDate:[dateFormatter dateFromString:@"2014/07/21 00:00:00"]]);
    
    assert([[Tool dateStartOfWeek:[dateFormatter dateFromString:@"2014/07/2 11:11:11"]] isEqualToDate:[dateFormatter dateFromString:@"2014/06/30 00:00:00"]]);
    
    assert([[Tool dateStartOfWeek:[dateFormatter dateFromString:@"2014/07/11 11:11:11"]] isEqualToDate:[dateFormatter dateFromString:@"2014/07/7 00:00:00"]]);
    
    assert([[Tool dateStartOfWeek:[dateFormatter dateFromString:@"2014/07/20 11:11:11"]] isEqualToDate:[dateFormatter dateFromString:@"2014/07/14 00:00:00"]]);
    
    assert([[Tool dateStartOfWeek:[dateFormatter dateFromString:@"2014/07/31 11:11:11"]] isEqualToDate:[dateFormatter dateFromString:@"2014/07/28 00:00:00"]]);
}

@end
