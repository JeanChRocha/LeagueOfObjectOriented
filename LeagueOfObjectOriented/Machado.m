//
//  Machado.m
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import "Machado.h"
#import "Jogador.h"

@implementation Machado

-(Machado *) initWithForcaMaxima:(int)f andPrecisaoArma:(double)p {
    self = [super init];
    if (self) {
        precisaoDoAtaque = p;
        forcaMaxima = f;
        desgate = 0;
    }
    return self;
}

-(double) calcularForcaAtaque:(int)raca {
    double bonus = (raca == [Jogador ANAO]) ? 1.1 : 1;
    return (forcaMaxima * (1 - ((desgate++)/10)) * precisaoDoAtaque) * bonus;
}

@end
