//
//  TableCell.h
//  menu
//
//  Created by Monika Kastner on 03.04.2015.
//  Copyright (c) 2015 Monika Kastner. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TableCell : UITableViewCell


//aktualnosci
@property(strong,nonatomic) IBOutlet UILabel *TitleLabel;
@property(strong,nonatomic) IBOutlet UILabel *DescriptionLabel;
@property(strong,nonatomic) IBOutlet UIImageView *ImageView;

//plan juwenalii
@property(strong,nonatomic) IBOutlet UILabel *DayLabel;
@property(strong,nonatomic) IBOutlet UILabel *DateLabel;

//poniedzialek
@property(strong,nonatomic) IBOutlet UILabel *PoniedzialekTitle;
@property(strong,nonatomic) IBOutlet UILabel *PoniedzialekLabel;
@property(strong,nonatomic) IBOutlet UILabel *PonDescriptionLabel;
@property(strong,nonatomic) IBOutlet UILabel *PoniedzialekGodzina;
@property(strong,nonatomic) IBOutlet UIImageView *PonImage;

//wtorek
@property(strong,nonatomic) IBOutlet UILabel *WtorekTitle;
@property(strong,nonatomic) IBOutlet UILabel *WtorekLabel;
@property(strong,nonatomic) IBOutlet UILabel *WtDescriptionLabel;
@property(strong,nonatomic) IBOutlet UILabel *WtorekGodzina;
@property(strong,nonatomic) IBOutlet UIImageView *WtImage;

//sroda
@property(strong,nonatomic) IBOutlet UILabel *SrodaTitle;
@property(strong,nonatomic) IBOutlet UILabel *SrodaLabel;
@property(strong,nonatomic) IBOutlet UILabel *SrDescriptionLabel;
@property(strong,nonatomic) IBOutlet UILabel *SrodaGodzina;
@property(strong,nonatomic) IBOutlet UIImageView *SrImage;

//czwartek
@property(strong,nonatomic) IBOutlet UILabel *CzwartekTitle;
@property(strong,nonatomic) IBOutlet UILabel *CzwartekLabel;
@property(strong,nonatomic) IBOutlet UILabel *CzwDescriptionLabel;
@property(strong,nonatomic) IBOutlet UILabel *CzwartekGodzina;
@property(strong,nonatomic) IBOutlet UIImageView *CzwImage;

//piatek
@property(strong,nonatomic) IBOutlet UILabel *PiatekTitle;
@property(strong,nonatomic) IBOutlet UILabel *PiatekLabel;
@property(strong,nonatomic) IBOutlet UILabel *PiatDescriptionLabel;
@property(strong,nonatomic) IBOutlet UILabel *PiatekGodzina;
@property(strong,nonatomic) IBOutlet UIImageView *PtImage;

//sobota
@property(strong,nonatomic) IBOutlet UILabel *SobotaTitle;
@property(strong,nonatomic) IBOutlet UILabel *SobotaLabel;
@property(strong,nonatomic) IBOutlet UILabel *SobDescriptionLabel;
@property(strong,nonatomic) IBOutlet UILabel *SobotaGodzina;
@property(strong,nonatomic) IBOutlet UIImageView *SobImage;

//niedziela
@property(strong,nonatomic) IBOutlet UILabel *NiedzielaTitle;
@property(strong,nonatomic) IBOutlet UILabel *NiedzielaLabel;
@property(strong,nonatomic) IBOutlet UILabel *NiedzDescriptionLabel;
@property(strong,nonatomic) IBOutlet UILabel *NiedzielaGodzina;
@property(strong,nonatomic) IBOutlet UIImageView *NiedzImage;

//oJuwenaliach
@property(nonatomic,strong) IBOutlet UIImageView *OrganizatorzyImage;
@property(nonatomic,strong) IBOutlet UILabel *OrganizatorzyNazwa;
@property(nonatomic,strong) IBOutlet UILabel *OrganizatorzyFunkcja;

//Sponsorzy
@property(nonatomic,strong) IBOutlet UIImageView *ZlotySponsorImage;
//@property(nonatomic,strong) IBOutlet UIImageView *SrebrnySponsorImage;
//@property(nonatomic,strong) IBOutlet UIImageView *InnySponsorImage;








@end
