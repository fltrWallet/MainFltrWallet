import fltrWallet
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
