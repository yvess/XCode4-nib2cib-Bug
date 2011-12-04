/*
 * AppController.j
 * desk_pad
 *
 * Created by You on May 18, 2011.
 * Copyright 2011, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>
@import <AppKit/CPTableView.j>
@import <AppKit/CPTextField.j>
@import <AppKit/CPPopUpButton.j>
@import <AppKit/CPButtonBar.j>
@import <AppKit/CPArrayController.j>

@implementation AppController : CPObject
{
    CPWindow              theWindow; //this "outlet" is connected automatically by the Cib
    CPMutableArray        clients;
    IBOutlet              CPArrayController aClientArrayController;
    IBOutlet              CPTableView aClientsTable;

    CPMutableArray        projects;
    IBOutlet              CPArrayController aProjectArrayController;
    IBOutlet              CPTableView aProjectsTable;

    IBOutlet              CPTabView myTabView;
    IBOutlet              CPButton clientsSwitchButton;
    IBOutlet              CPButton projectsSwitchButton;

}
- (id)init
{
    return self;
}

- (void)switchTabFromButton:(id)sender
{
    switch ([sender title])
    {
    case @"Clients":
        [myTabView selectTabViewItemAtIndex:0];
        break;
    case @"Projects":
        [myTabView selectTabViewItemAtIndex:1];
        break;
    }
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    // This is called when the application is done loading.
    [clientsSwitchButton setAction:@selector(switchTabFromButton:)];
    [projectsSwitchButton setAction:@selector(switchTabFromButton:)];
    [myTabView selectTabViewItemAtIndex:0];
}

- (void)awakeFromCib
{
}

@end
