R_AES
=================

R_AES is a small class for data encryption/decryption based on The Advanced Encryption Standard (AES) algorythm.

Usage
-------------
```Objective-C
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
```

License
--------

This code is under the BSD license.
