//
//  ObjC.m
//  AsyncObjC
//
//  Created by Naruki Chigira on 2022/02/02.
//

#import "ObjC.h"

@implementation ObjC

- (void)handleVoidWithCompletion:(void (^)(void))completion {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"Sleep 3 seconds.");
        sleep(3);
        NSLog(@"Complete sleep 3 seconds.");
        completion();
    });
}

- (void)handleVoidTwiceWithCompletion:(void (^)(void))completion {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"Sleep 3 seconds.");
        sleep(3);
        NSLog(@"Complete sleep 3 seconds.");
        completion();
        completion();
    });
}

//- (void)handleVoidWithCompletionHandler:(void (^)(void))completion {
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        sleep(3);
//        completion();
//    });
//}

- (void)handleIntWithCompletion:(void (^)(NSInteger))completion {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"Sleep 3 seconds.");
        sleep(3);
        NSLog(@"Complete sleep 3 seconds.");
        completion(100);
    });
}

@end
