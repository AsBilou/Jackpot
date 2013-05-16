//
//  DetailViewController.h
//  Jackpot
//
//  Created by Bilou on 16/05/13.
//  Copyright (c) 2013 WM_BN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
