//
//  ViewController.m
//  R_AES
//
//  Created by RocKK on 11/22/13.
//  Copyright (c) 2013 RocKK.
//  All rights reserved.
//
//  Redistribution and use in source and binary forms are permitted
//  provided that the above copyright notice and this paragraph are
//  duplicated in all such forms and that any documentation,
//  advertising materials, and other materials related to such
//  distribution and use acknowledge that the software was developed
//  by the RocKK.  The name of the
//  RocKK may not be used to endorse or promote products derived
//  from this software without specific prior written permission.
//  THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
//  IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
//  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.

#import "ViewController.h"
#import "R_AES.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //Alloc R_AES
    R_AES *aes = [R_AES new];
    
    //Define String and Key
    NSString *string = @"Someone Stole The String";
    NSString *key = @"nv93h50sk1zh508v";
    
    //Encryption
    NSData *stringData = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSData *encryptedData = [aes EncryptAES:key andData:stringData];
    NSString* encryptedBase64String = [aes Base64Encode:encryptedData];
    NSLog(@"String: %@", string);
    NSLog(@"Encrypted: %@", encryptedBase64String);
    
    //Decryption
    NSData *decrypedData = [aes DecryptAES:key andData:encryptedData];
    NSString *decryptedString = [[NSString alloc] initWithData:decrypedData encoding:NSUTF8StringEncoding];
    NSLog(@"Decrypted: %@", decryptedString);
    
    //Dealloc
    aes = nil;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
