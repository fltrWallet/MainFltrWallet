//===----------------------------------------------------------------------===//
//
// This source file is part of the fltrWallet open source project
//
// Copyright (c) 2022 fltrWallet AG and the fltrWallet project authors
// Licensed under Apache License v2.0
//
// See LICENSE for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//
import fltrWallet_lib
import SwiftUI

@main
struct FltrWalletMainApp: App {
    #if os(macOS)
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    #else
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    #endif

    init() {
        GlewSettings.main.setup()
    }

    var body: some Scene {
        WindowGroup {
            FirstRunSemaphore {
                RocketLauncherView {
                    OrientationView {
                        SyncEnvironment {
                            NewFltrView()
                        }
                    }
                }
            }
            firstRun: { initializeComplete in
                OrientationView {
                    FirstRunView(initializeComplete: initializeComplete)
                }
            }
            .environmentObject(appDelegate)
            .environment(\.buttonColor, Color("newGray"))
        }
    }
}
