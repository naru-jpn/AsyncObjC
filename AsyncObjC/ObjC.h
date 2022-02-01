//
//  ObjC.h
//  AsyncObjC
//
//  Created by Naruki Chigira on 2022/02/02.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObjC : NSObject

- (void)handleVoidWithCompletion:(void (^)(void))completion;

- (void)handleVoidTwiceWithCompletion:(void (^)(void))completion;

// Ambiguous use of 'handleVoid()'
//- (void)handleVoidWithCompletionHandler:(void (^)(void))completion;

- (void)handleIntWithCompletion:(void (^)(NSInteger))completion;

@end

NS_ASSUME_NONNULL_END
