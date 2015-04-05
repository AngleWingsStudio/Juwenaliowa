//
//  PagerViewController.h
//  Juwenalia app
//
//  Created by Monika Kastner on 07.03.2015.
//  Copyright (c) 2015 AngelWingsStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PagerViewController : UIViewController

@property(nonatomic,strong) IBOutlet UIScrollView *scrollView;
@property(nonatomic,strong) IBOutlet UIPageControl *pageControll;

-(IBAction)changePage:(id)sender;


@end
