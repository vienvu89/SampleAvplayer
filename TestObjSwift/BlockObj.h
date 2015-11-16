//
//  BlockObj.h
//  TestObjSwift
//
//  Created by Vien Vu  on 10/26/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlockObj : NSObject

+ (void) while2:(id)obj name:(void(^)(NSString*))callback;
- (void)complexMethodWithArg1:(id)arg1 arg2:(id)arg2 arg3:(id)arg3;

@end
