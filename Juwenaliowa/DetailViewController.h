//
//  DetailViewController.h
//  Juwenalia app
//
//  Created by Monika Kastner on 05.04.2015.
//  Copyright (c) 2015 AngelWingsStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property(nonatomic,strong) IBOutlet UILabel *TitleLabel;
@property(nonatomic,strong) IBOutlet UILabel *DescriptionLabel;
@property(nonatomic,strong) IBOutlet UIImageView *ImageView;

@property(strong,nonatomic) NSArray*DetailModal;

@end
