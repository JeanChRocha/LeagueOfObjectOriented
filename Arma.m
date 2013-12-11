//
//  Arma.m
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import "Arma.h"
#import <time.h>

@implementation Arma

@synthesize precisaoDoAtaque;

-(Arma *) init {
    self = [super init];
    return self;
}

-(void) mudarPrecisao {
    precisaoDoAtaque = (rand() % 40) + 1 + 60;
}

-(double) calcularForcaAtaque:(int)raca {
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
    return -1;
}

@end
