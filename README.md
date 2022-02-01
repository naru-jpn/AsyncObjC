# AsyncObjC
Example Project for [Calling Objective-C APIs Asynchronously](https://developer.apple.com/documentation/swift/calling_objective-c_apis_asynchronously).

## Overview
Method written Objective-C having specific format completion is automatically converted asynchronous functions in Swift.

1. The method has a void return type.
2. The block has a void return type.
3. The block is called exactly once, on all possible paths of control flow.

For example,

```objc
- (void)handleVoidWithCompletion:(void (^)(void))completion;
```

can be called as below in Swift.

```swift
await objc.handleVoid()
```
