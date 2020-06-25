#line 1 "Tweak.x"

#import <UIKit/UIKit.h>
#import <CoreGraphics/CGGeometry.h>
BOOL toggle = NO;
UIView* view;



















static __attribute__((constructor)) void _logosLocalCtor_83d94dac(int __unused argc, char __unused **argv, char __unused **envp){
    
    
    
    view = [[UIView alloc] initWithFrame:CGRectMake(0,
                                                                0,
                                                                [[UIScreen mainScreen] bounds].size.width,
                                                                [[UIScreen mainScreen] bounds].size.height)];
    [view setBackgroundColor:[UIColor blackColor]];
    view.userInteractionEnabled = YES;
    view.alpha = 1;
}
