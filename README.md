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

## Example 

- [ObjC.h](https://github.com/naru-jpn/AsyncObjC/blob/main/AsyncObjC/ObjC.h)
   - Definition of Objective-C methods.
- [ObjC.m](https://github.com/naru-jpn/AsyncObjC/blob/main/AsyncObjC/ObjC.m)
   - Implementation of Objective-C methods.
- [AsyncObjCApp.swift](https://github.com/naru-jpn/AsyncObjC/blob/454a93381fa5d857f246ce5aeeb3f9877352ac2d/AsyncObjC/AsyncObjCApp.swift#L19-L26)
   - Async func calls. 
