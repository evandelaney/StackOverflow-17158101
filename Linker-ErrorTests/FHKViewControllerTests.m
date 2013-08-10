//
//  Copyright (c) 2013 Evan DeLaney. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "FHKViewController.h"

@interface FHKViewControllerTests : SenTestCase
{
    FHKViewController *viewController;
}
@end

//----------------------------------------------------------------------------//

@implementation FHKViewControllerTests

- (void)setUp
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:[NSBundle bundleForClass:[FHKViewController class]]];
    viewController = [sb instantiateViewControllerWithIdentifier:@"FHKViewController"];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(viewDidAppearNotification:)
                                                 name:FHKViewControllerViewDidAppearNotification
                                               object:viewController];
    
}

- (void)viewDidAppearNotification:(NSNotification *)note
{
    STAssertEqualObjects(note.object, viewController, @"Notification should include the view controller instance");
}

- (void)testNotificationIsPostedInViewDidAppear
{
    [viewController viewDidAppear:YES];
}

- (void)testConstantsAreDefined
{
    STAssertEqualObjects(FHKViewControllerThisSymbolWontLink, @"name", @"This test causes a link error when run on device");
}

@end
