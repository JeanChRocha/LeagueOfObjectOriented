//
//  ArcoEFlecha.h
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arma.h"

@interface ArcoEFlecha : Arma {
    int quantidadeFlechas;
}

-(ArcoEFlecha *) initWithQuantidadeFlechas:(int) q;

@end
