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
    if (tipo == 1) {
        return [[ArcoEFlecha alloc] initWithQuantidadeFlechas:10];
    }
    else if (tipo == 2){
        return [[Espada alloc] initWithForcaMaxima:1];
    }
    else if (tipo == 3){
        return [[Machado alloc] initWithForcaMaxima:1];
    }
    else return [[Magia alloc] initWithRaca:raca];
}

@end
