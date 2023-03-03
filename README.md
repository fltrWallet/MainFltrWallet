# MainFltrWallet
Xcode Project for fltrWallet Bitcoin Wallet on main network

## Building
```
git clone https://github.com/fltrWallet/MainFltrWallet
open MainFltrWallet/fltrWallet.xcodeproj
```

## Running
From Xcode, choose an iOS or iPadOS simulator.

Start the app and simulator by pressing `CMD-R`

## Release Branches
The repo has branches corresponding to version numbers in the App Store. To download and build a specific branch, first clone as follows using ```v1.3``` in the example below\
`git clone -b v1.3 --single-branch https://github.com/fltrWallet/MainFltrWallet.git`

The release branch has tagged all submodules as local dependencies in the Xcode project. Download and update all submodules from the ```MainFltrWallet``` folder using the command\
`git submodule update --recursive --init`

Proceed as above and open the project in Xcode. All dependecies will retain the exact commits as submitted to the App Store for the version in question.
