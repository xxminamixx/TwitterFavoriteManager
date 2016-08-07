//
//  FMLoginFetcher.h
//  FavoriteManager
//
//  Created by 南　京兵 on 2016/08/07.
//  Copyright © 2016年 南　京兵. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *const kAPIKey = @"fFZAY5FDfuCs1OUVEOtoCrhgA";
NSString *const kAppOnlyAuthentication = @" https://api.twitter.com/oauth2/token";
NSString *const kRequestTokenURL = @"https://api.twitter.com/oauth/request_token";
NSString *const kAuthorizeURL = @"https://api.twitter.com/oauth/authorize";
NSString *const kAccesstokenURL = @"https://api.twitter.com/oauth/access_token";

@interface FMLoginFetcher : NSObject

@end
