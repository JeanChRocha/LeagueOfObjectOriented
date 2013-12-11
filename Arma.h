//
//  Arma.h
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Jogador;

@interface Arma : NSObject {
    double precisaoDoAtaque;
}

@property double precisaoDoAtaque;

-(Arma *) init;
-(void) mudarPrecisao;
-(double) calcularForcaAtaque:(int)raca;
@end
