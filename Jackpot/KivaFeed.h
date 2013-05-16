//
//  KivaFeed.h
//  Jackpot
//
//  Created by Bilou on 16/05/13.
//  Copyright (c) 2013 WM_BN. All rights reserved.
//


#import "JSONModel.h"
#import "LoanModel.h"

@interface KivaFeed : JSONModel

@property (strong, nonatomic) NSArray<LoanModel>* loans;

@end
