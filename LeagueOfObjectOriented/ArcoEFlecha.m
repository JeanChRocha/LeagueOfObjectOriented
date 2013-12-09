//
//  ArcoEFlecha.m
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import "ArcoEFlecha.h"
#import "Jogador.h"

@implementation ArcoEFlecha

-(ArcoEFlecha *) initWithQuantidadeFlechas:(int)q andPrecisaoArma:(double)p {
    self = [super init];
    if (self) {
        precisaoDoAtaque = p;
        quantidadeFlechas = q;
    }
    return self;
}

-(double) calcularForcaAtaque:(int) raca {
    double bonus = (raca == [Jogador ELFO]) ? 1.1 : 1;
    return (quantidadeFlechas-- > 0) ? precisaoDoAtaque * bonus : 0;
}

@end
