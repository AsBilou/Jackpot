//
//  LocationModel.h
//  Jackpot
//
//  Created by Bilou on 16/05/13.
//  Copyright (c) 2013 WM_BN. All rights reserved.
//

#import "JSONModel.h"

@interface LocationModel : JSONModel

//Recupère les valeurs du JSON
@property (strong, nonatomic) NSString* country_code;
@property (strong, nonatomic) NSString* country;

@end
