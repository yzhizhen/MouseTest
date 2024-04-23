//
//  AppDelegate.m
//  MouseTest
//
//  Created by 杨志振 on 2024/4/7.
//

#import "AppDelegate.h"

#define checkURL @"https://sandbox.itunes.apple.com/verifyReceipt"

@interface AppDelegate ()
@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification 
{
    /*
    kCGEventNull                空
    kCGEventLeftMouseDown       鼠标左键按下
    kCGEventLeftMouseUp         鼠标左键弹起
    kCGEventRightMouseDown      鼠标右键按下
    kCGEventRightMouseUp        鼠标右键弹起
    kCGEventMouseMoved          鼠标移动
    kCGEventLeftMouseDragged    鼠标左键拖动
    kCGEventRightMouseDragged   鼠标右键拖动

    // 键盘事件
    kCGEventKeyDown
    kCGEventKeyUp
    kCGEventFlagsChanged

    // 专用控制装置。
    kCGEventScrollWheel         滚动事件
    kCGEventTabletPointer
    kCGEventTabletProximity
    kCGEventOtherMouseDown
    kCGEventOtherMouseUp
    kCGEventOtherMouseDragged

    // 带外事件类型。这些被传递给事件点击回调通知它在异常情况下禁用事件点击。
    kCGEventTapDisabledByTimeout
    kCGEventTapDisabledByUserInput
    */
    
    
    CGEventSourceRef source = CGEventSourceCreate(kCGEventSourceStateCombinedSessionState);
    //  kCGEventMouseMoved   移动  更换参数 模拟不同事件

    CGEventRef mouse = CGEventCreateMouseEvent(NULL, kCGEventKeyDown, CGPointMake( 110, 100), 0);
    CGEventPost(kCGHIDEventTap, mouse);
    CFRelease(mouse);
    CFRelease(source);
}


- (void)applicationWillTerminate:(NSNotification *)aNotification 
{
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app
{
    return YES;
}


@end
