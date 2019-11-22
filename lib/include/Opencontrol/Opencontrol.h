//
//  Opencontrol.h
//  Opencontrol
//
//  Created by Jonatan Mendoza on 11/22/19.
//  Copyright © 2019 Openpay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

//#define API_URL_SANDBOX @"https://sandbox-api.opencontrol.mx"
#define API_URL_SANDBOX @"https://dev-api.opencontrol.mx"
#define API_URL_PRODUCTION @"https://api.opencontrol.mx"
#define API_VERSION @"1.1"
@interface Opencontrol : NSObject <NSURLConnectionDelegate>

@property NSString* merchantId;
@property NSString* publicKey;
@property NSString* userName;
@property BOOL isProductionMode;
@property(strong,nonatomic) WKWebView *webViewDF;

- (Opencontrol*) initWithMerchantId: (NSString*) merchantId
             publicKey:(NSString*) publicKey
             userName:(NSString*) userName
             isProductionMode:(BOOL) isProductionMode;

- (Opencontrol*) initWithMerchantId: (NSString*) merchantId
          publicKey:(NSString*) publicKey
          userName:(NSString*) userName
          isProductionMode:(BOOL) isProductionMode
          isDebug:(BOOL) isDebug;

- (NSString*)createDeviceSessionId;

@end
