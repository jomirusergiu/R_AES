R_AES
=================

R_AES is a small class for data encryption/decryption based on The Advanced Encryption Standard (AES) algorythm.

Advanced Encryption Standard
----------------------------

The Advanced Encryption Standard (AES) is a specification for the encryption of electronic data established by the U.S. National Institute of Standards and Technology (NIST) in 2001. It is based on the Rijndael cipher developed by two Belgian cryptographers, Joan Daemen and Vincent Rijmen, who submitted a proposal to NIST during the AES selection process. Rijndael is a family of ciphers with different key and block sizes. For AES, NIST selected three members of the Rijndael family, each with a block size of 128 bits, but three different key lengths: 128, 192 and 256 bits.
AES has been adopted by the U.S. government and is now used worldwide. It supersedes the Data Encryption Standard (DES), which was published in 1977. The algorithm described by AES is a symmetric-key algorithm, meaning the same key is used for both encrypting and decrypting the data.
In the United States, AES was announced by the NIST as U.S. FIPS PUB 197 (FIPS 197) on November 26, 2001. This announcement followed a five-year standardization process in which fifteen competing designs were presented and evaluated, before the Rijndael cipher was selected as the most suitable (see Advanced Encryption Standard process for more details). It became effective as a federal government standard on May 26, 2002 after approval by the Secretary of Commerce. AES is included in the ISO/IEC 18033-3 standard. AES is available in many different encryption packages, and is the first publicly accessible and open cipher approved by the National Security Agency (NSA) for top secret information when used in an NSA approved cryptographic module (see Security of AES, below).

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
