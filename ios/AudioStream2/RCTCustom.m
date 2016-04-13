//
//  RCTCustom.m
//  AudioStream2
//
//  Created by Shrikanth on 4/13/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "RCTCustom.h"
#import <RCTLog.h>
@implementation RCTCustom

RCT_EXPORT_MODULE();
RCT_EXPORT_METHOD(play:(NSString *)url)
{
  RCTLogInfo(@"Pretending to create an event %@ ", url);
}
@end

