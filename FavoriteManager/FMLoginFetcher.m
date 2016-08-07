//
//  FMLoginFetcher.m
//  FavoriteManager
//
//  Created by 南　京兵 on 2016/08/07.
//  Copyright © 2016年 南　京兵. All rights reserved.
//

#import "FMLoginFetcher.h"
#import "STTwitter.h"

@interface FMLoginFetcher()

@property STTwitterAPI *twitterAPIClient;

@end

@implementation FMLoginFetcher

- (void)loginTwitter
{
    self.twitterAPIClient = [STTwitterAPI twitterAPIWithOAuthConsumerName:nil
                                                         consumerKey:kAPIKey
                                                      consumerSecret:kAPIKeySecret
                                                          oauthToken:kAccessToken
                                                    oauthTokenSecret:kAccessTokenSecret];
    [self.twitterAPIClient verifyCredentialsWithSuccessBlock:^(NSString *username) {
        // ログイン成功
#define DEBUG 1
#if DEBUG
        NSLog(@"ログイン成功");
#endif
        //[self getTimeline];
        //[self getUserStream];
    } errorBlock:^(NSError *error) {
        // ログイン失敗
        NSLog(@"error : %@", error);
    }];
}

@end
