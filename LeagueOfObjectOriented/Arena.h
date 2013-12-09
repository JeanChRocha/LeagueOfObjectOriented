//
//  Arena.h
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/22/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"
#import <time.h>

@interface Arena : NSObject {
    int tipo;
}

@property int tipo;

-(Arena *) init;
-(NSString *) imprimirmapa;
-(double) calcularBonusArena:(Jogador *)jogador;

@end
