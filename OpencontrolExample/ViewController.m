//
//  ViewController.m
//  OpencontrolExample
//
//  Created by Jonatan Mendoza on 11/22/19.
//  Copyright © 2019 Openpay. All rights reserved.
//

#import "ViewController.h"
#import "Opencontrol.h"

#define MERCHANT_ID @"merchantId"
#define PUBLIC_KEY @"publicKey"
#define USERNAME @"userName"

@interface ViewController ()

@property (nonatomic) Opencontrol *openControlAPI;
@property NSString *sessionId;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _openControlAPI = [[Opencontrol alloc] initWithMerchantId:MERCHANT_ID publicKey:PUBLIC_KEY userName:USERNAME isProductionMode:NO isDebug: NO];
    
}

- (IBAction) btnClick:(id)sender
{
    _sessionId= [_openControlAPI createDeviceSessionId];
    UIAlertController *alertvc=[UIAlertController alertControllerWithTitle:@"Session ID Generated" message:_sessionId preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * action = [UIAlertAction actionWithTitle: @ "Dismiss"
                              style: UIAlertActionStyleDefault handler: ^ (UIAlertAction * _Nonnull action) {
                                NSLog(@ "Dismiss Tapped");
                              }
                             ];
    [alertvc addAction: action];
    [self presentViewController: alertvc animated: true completion: nil];

    NSLog(@"Success SessionID...");
    NSLog(@"SessionID: %@", _sessionId);
}

@end
