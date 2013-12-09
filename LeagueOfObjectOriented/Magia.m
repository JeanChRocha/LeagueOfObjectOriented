//
//  Magia.m
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import "Magia.h"
#import "Jogador.h"

@implementation Magia

-(Magia *) initWithPrecisaoArma:(double) p andRaca:(int)r{
    self = [super init];
    if (self) {
        if (r == [Jogador ELFO] || r == [Jogador ORC]) {
            habilidade = 3;
        }
        else habilidade = 1;
    }
    return self;
}

-(double) calcularForcaAtaque:(int)raca{
    double atk = precisaoDoAtaque * habilidade;
    if (habilidade < 7) {
        habilidade++;
    }
    return atk;
}

@end
