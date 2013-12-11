//
//  ArmaFactory.m
//  LeagueOfObjectOriented
//
//  Created by ANDRE GIMENEZ on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "ArmaFactory.h"
#import "ArcoEFlecha.h"
#import "Machado.h"
#import "Espada.h"
#import "Magia.h"

@implementation ArmaFactory

+(Arma *) getArma:(int)tipo andRaca:(int)raca {
    float f = (rand() % 41) + 60;
    if (tipo == 1) {
        return [[ArcoEFlecha alloc] initWithQuantidadeFlechas:10 andPrecisaoArma:f];
    }
    else if (tipo == 2){
        return [[Espada alloc] initWithForcaMaxima:1 andPrecisaoAtaque:f];
    }
    else if (tipo == 3){
        return [[Machado alloc] initWithForcaMaxima:1 andPrecisaoArma:f];
    }
    else return [[Magia alloc] initWithPrecisaoArma:f andRaca:raca];
}

@end
