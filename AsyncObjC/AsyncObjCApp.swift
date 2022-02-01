//
//  AsyncObjCApp.swift
//  AsyncObjC
//
//  Created by Naruki Chigira on 2022/02/02.
//

import SwiftUI

@main
struct AsyncObjCApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    func log(message: String) {
                        print("\(message): isMain(\(Thread.current.isMainThread))")
                    }
                    let objc = ObjC()
                    log(message: "Start await objc.handleVoid()")
                    await objc.handleVoid()
//                    await objc.handleVoidTwice() // This call causes EXC_BAD_ACCESS.
                    log(message: "Complete await objc.handleVoid()")
                    log(message: "Start await objc.handleInt()")
                    let result = await objc.handleInt()
                    log(message: "Complete await objc.handleInt() with result \(result)")
                }
        }
    }
}
