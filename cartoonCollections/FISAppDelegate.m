//
//  FISAppDelegate.m
//  cartoonCollections
//
//  Created by Joe Burgess on 6/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    NSArray *dwarvesToBeRollCalled = @[@"Doc",@"Dopey",@"Bashful"];
    NSLog(@"%@",[self rollCallDwarves:dwarvesToBeRollCalled]);

    NSArray *callsToBeGivenWithHeart = @[@"earth",@"wind"];
    NSLog(@"%@",[self summonCaptainPlanet:callsToBeGivenWithHeart]);

    NSLog(@"%@",[self longPlaneteerCalls:callsToBeGivenWithHeart]);

    NSArray *possibleCheeses= @[@"prosciutto", @"cambert", @"baguette"];
    NSLog(@"%@",[self findTheCheese:possibleCheeses]);

    NSArray *scroogesMoney = @[@"$$",@"$",@"$$$"];
    NSLog(@"%@",[self calculateDollarAmountsWithReceipt:scroogesMoney]);

    
    return YES;
}

- (NSString *)rollCallDwarves:(NSArray *)dwarves
{
    NSMutableString *carToons = [[NSMutableString alloc] init];
    NSUInteger i = 1;
    
    for (NSString *character in dwarves) {
        [carToons appendFormat:@"%i. %@", (unsigned) i, character];
        
        if (i < [dwarves count]) {
            [carToons appendFormat:@" | "];
        }
        i++;
    }
    
    return carToons;
}

- (NSArray *)summonCaptainPlanet:(NSArray *)planteerCalls
{
    NSMutableArray *addedHeart = [[NSMutableArray alloc] init];
    for (NSString *elements in planteerCalls) {
        NSString *addHeart = [elements uppercaseString];

        [addedHeart addObject:[NSString stringWithFormat:@"%@!", addHeart]];
                }
   return addedHeart;
}

- (NSArray *)longPlaneteerCalls:(NSArray *)planteerCalls
{
    NSMutableArray *fourletterPowers = [[NSMutableArray alloc] init];
    for (NSString *power in planteerCalls) {
        NSUInteger characterCount = [power length];
        if (characterCount > 4) {
            [fourletterPowers addObject:power];
        } else {
            [fourletterPowers removeObject:power];
        }
    }
    return fourletterPowers;
}

- (NSString *)findTheCheese:(NSArray *)cheeses
{
    for (NSString *cheese in cheeses) {
        if ([cheese isEqualToString:@"cheddar"] || [cheese isEqualToString:@"gouda"] || [cheese isEqualToString:@"cambert"] ) {
            return cheese;
        }
        }
    return nil;
    }

- (NSArray *)calculateDollarAmountsWithReceipt:(NSArray *)receipt
{
    NSMutableArray *convertedreceipts = [[NSMutableArray alloc] init];
    for (NSString *dollarAmount in receipt) {
        NSString *dollarValue = [NSString stringWithFormat:@"$%lu", (unsigned long) [dollarAmount length]];
        [convertedreceipts addObject:dollarValue];
    }
    return convertedreceipts;
}



















- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
