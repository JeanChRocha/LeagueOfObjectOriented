//
//  ArmaFactory.h
//  LeagueOfObjectOriented
//
//  Created by ANDRE GIMENEZ on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Arma;

@interface ArmaFactory : NSObject

+(Arma *) getArma:(int)tipo andRaca:(int)raca;

@end
