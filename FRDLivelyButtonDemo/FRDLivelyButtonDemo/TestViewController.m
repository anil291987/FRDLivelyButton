//
//  TestViewController.m
//  FancyBarButton
//
//  Created by Sebastien Windal on 2/24/14.
//  Copyright (c) 2014 Sebastien Windal. All rights reserved.
//

#import "TestViewController.h"
#import "FRDLivelyButton.h"

@interface TestViewController ()

@property (weak, nonatomic) IBOutlet FRDLivelyButton *bigButton;

@property (weak, nonatomic) IBOutlet FRDLivelyButton *burgerButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *plustButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *plusCircleButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *closeButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *closeCircleButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *upCaretButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *downCaretButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *leftCaretButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *rightCaretButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *leftArrowButton;
@property (weak, nonatomic) IBOutlet FRDLivelyButton *rightArrowButton;

@end

@implementation TestViewController
{
    FRDLivelyButtonStyle newStyle;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self.burgerButton setStyle:FRDLivelyButtonStyleDoubleLines animated:NO];
    [self.plusCircleButton setStyle:FRDLivelyButtonStyleCirclePlus animated:NO];
    [self.plustButton setStyle:FRDLivelyButtonStyleVerticalLines animated:NO];
    [self.closeButton setStyle:FRDLivelyButtonStyleClose animated:NO];
    [self.closeCircleButton setStyle:FRDLivelyButtonStyleCircleClose animated:NO];
    [self.upCaretButton setStyle:FRDLivelyButtonStyleCaretUp animated:NO];
    [self.downCaretButton setStyle:FRDLivelyButtonStyleCaretDown animated:NO];
    [self.leftCaretButton setStyle:FRDLivelyButtonStyleCaretLeft animated:NO];
    [self.rightCaretButton setStyle:FRDLivelyButtonStyleCaretRight animated:NO];
    [self.leftArrowButton setStyle:FRDLivelyButtonStyleArrowLeft animated:NO];
    [self.rightArrowButton setStyle:FRDLivelyButtonStyleArrowRight animated:NO];
    
    [self.bigButton setStyle:FRDLivelyButtonStyleClose animated:YES];
    [self.bigButton setOptions:@{FRDLivelyButtonLineWidth: @(4.0f)}];
    
    FRDLivelyButton *button = [[FRDLivelyButton alloc] initWithFrame:CGRectMake(0,0,36,28)];
    [button setOptions:@{ FRDLivelyButtonLineWidth: @(2.0f),
                          FRDLivelyButtonHighlightedColor: [UIColor colorWithRed:0.5 green:0.8 blue:1.0 alpha:1.0],
                          FRDLivelyButtonColor: [UIColor blueColor]
                          }];
    [button setStyle:FRDLivelyButtonStyleHamburger animated:NO];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.rightBarButtonItem = buttonItem;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeButtonStyleAction:(FRDLivelyButton *)sender
{
    [self.bigButton setStyle:sender.buttonStyle animated:YES];
}

- (IBAction)buttonAction:(FRDLivelyButton *)sender
{
    newStyle = (newStyle + 1) % 11;
    
    [sender setStyle:newStyle animated:YES];
}

@end
