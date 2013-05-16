//
//  LoanModel.h
//  Jackpot
//
//  Created by Bilou on 16/05/13.
//  Copyright (c) 2013 WM_BN. All rights reserved.
//

#import "JSONModel.h"
#import "LocationModel.h"

@protocol LoanModel @end
@interface LoanModel : JSONModel

//Recupère les valeurs du JSON
@property (strong, nonatomic) NSString* title;
@property (strong, nonatomic) NSString* description;
@property (strong, nonatomic) NSString* price;
@property (strong, nonatomic) LocationModel* location;

@end