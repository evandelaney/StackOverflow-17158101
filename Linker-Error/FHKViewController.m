//
//  Copyright (c) 2013 Evan DeLaney. All rights reserved.
//

#import "FHKViewController.h"

//----------------------------------------------------------------------------//

@interface FHKViewController ()

@end

//----------------------------------------------------------------------------//

NSString * const FHKViewControllerViewDidAppearNotification = @"FHKViewControllerDidAppearNotification";
NSString * const FHKViewControllerThisSymbolWontLink = @"name";

//----------------------------------------------------------------------------//

@implementation FHKViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:FHKViewControllerViewDidAppearNotification
                                                        object:self];
}

@end
