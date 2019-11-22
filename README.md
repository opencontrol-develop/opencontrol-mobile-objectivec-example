iOS objective-c library for collect device information

Current version: v1.0.0

Looking for Swift Version? Checkout: (https://github.com/opencontrol-develop/opencontrol-mobile-swift-example)

## Requirements
* iOS SDK 9.3+
* WebKit.framework

## Installation
* Download the latest released version (https://github.com/opencontrol-develop/opencontrol-mobile-objectivec-example/releases/download/1.0.0/SDK-v1.0.0.zip)

* Add openpay library (libOpencontrol.a)
  * Go to **General -> Linked Framework and Libraries**
  * Click **Add items**
  * In the popup, click **Add Other...** option
  * Select the file **libOpencontrol.a** and click **Open**
  * Go to **Build Settings ->Search Paths -> Library Search Paths**
  * Click Add and put the route to the folder where is the file libOpencontrol.a
* Add webkit framework
  * Go to **Build Phases -> Link Binary With Libraries**
  * Click **Add items**
  * Search for **WebKit.framework**, select it and click **Add**
## Headers
### Option A
Copy the Opencontrol.h file in the include folder of your project.

_The includes folder is automatically included in the project's header search path_

_If you copy the files to a location other than includes you'll probably need to add the path to User Header Search Paths in your project settings._

### Option B
* If the include folder does not exist, then you have to add the files to the project folder.
  * Right click on the project folder and select the option **Add files to ...**
  * In the popup, select the file Opencontrol.h, check the option **Copy items if needed** and click **Add**
## Usage

```Objective-C
#import "Opencontrol.h"
```
### Create a instance object
For create an instance Openpay needs:
* MerchantId
* Public API Key
* User Name

```Objective-C
#define MERCHANT_ID @"merchantId"
#define PUBLIC_KEY @"publicKey"
#define USERNAME @"userName"

@property (nonatomic) Opencontrol *openControlAPI;

- (void)myFunction {
    _openControlAPI = [[Opencontrol alloc] initWithMerchantId:MERCHANT_ID publicKey:PUBLIC_KEY userName:USERNAME isProductionMode:NO isDebug: NO];
}

```
### Production Mode
Use isProductionMode = YES
```Objective-C
@property (nonatomic) Opencontrol *openControlAPI;

- (void)myFunction {
    _openControlAPI = [[Opencontrol alloc] initWithMerchantId:MERCHANT_ID publicKey:PUBLIC_KEY userName:USERNAME isProductionMode:YES isDebug: NO];
}
```
### Create a SessionID
The framework contains a function for generate a device sessionID.
```Objective-C
@property (nonatomic) Opencontrol *openControlAPI;
@property NSString *sessionId;

- (void)myFunction {
    _openControlAPI = [[Opencontrol alloc] initWithMerchantId:MERCHANT_ID publicKey:PUBLIC_KEY userName:USERNAME isProductionMode:YES isDebug: NO];
    _sessionId= [_openControlAPI createDeviceSessionId];
}
```
