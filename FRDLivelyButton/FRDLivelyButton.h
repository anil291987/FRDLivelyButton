//
//  FRDLivelyButton.h
//  FRDLivelyButton
//
//  Created by Sebastien Windal on 2/24/14.
//  MIT license. See the LICENSE file distributed with this work.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSUInteger, FRDLivelyButtonStyle) {
    FRDLivelyButtonStyleHamburger,
    FRDLivelyButtonStyleDoubleLines,
    FRDLivelyButtonStyleClose,
    FRDLivelyButtonStylePlus,
    FRDLivelyButtonStyleCirclePlus,
    FRDLivelyButtonStyleCircleClose,
    FRDLivelyButtonStyleCaretUp,
    FRDLivelyButtonStyleCaretDown,
    FRDLivelyButtonStyleCaretLeft,
    FRDLivelyButtonStyleCaretRight,
    FRDLivelyButtonStyleArrowLeft,
    FRDLivelyButtonStyleArrowRight
};

@interface FRDLivelyButton : UIButton

-(FRDLivelyButtonStyle) buttonStyle;

-(void) setStyle:(FRDLivelyButtonStyle)style animated:(BOOL)animated;

@property (nonatomic, strong) NSDictionary *options;
@property (nonatomic, readonly) FRDLivelyButtonStyle buttonStyle;
+(NSDictionary *) defaultOptions;

// button customization options:

// scale to apply to the button CGPath(s) when the button is pressed. Default is 0.9:
extern NSString *const FRDLivelyButtonHighlightScale;
// the button CGPaths stroke width, default 1.0f pixel
extern NSString *const FRDLivelyButtonLineWidth;
// the button CGPaths stroke color, default is black
extern NSString *const FRDLivelyButtonColor;
// the button CGPaths stroke color when highlighted, default is light gray
extern NSString *const FRDLivelyButtonHighlightedColor;
// duration in second of the highlight (pressed down) animation, default 0.1
extern NSString *const FRDLivelyButtonHighlightAnimationDuration;
// duration in second of the unhighlight (button release) animation, defualt 0.15
extern NSString *const FRDLivelyButtonUnHighlightAnimationDuration;
// duration in second of the style change animation, default 0.3
extern NSString *const FRDLivelyButtonStyleChangeAnimationDuration;


@end