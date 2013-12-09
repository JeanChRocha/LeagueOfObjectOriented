//
//  Jogador.h
//  LeagueOfObjectOriented
//
//  Created by Vinicius Miana on 12/8/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arma.h"

#define ELFO 0
#define HUMANO 1
#define ORC 2
#define ANAO 3

@interface Jogador : NSObject {
    
    
}

@property (nonatomic) int raca;
@property (nonatomic) float vida;
@property (nonatomic) int forcaEscudo;
@property (nonatomic) Arma* armaPrimaria;
@property (nonatomic) Arma* armaSecundaria;

-(float)ataque:(Jogador*)adversario;
-(float)sofreAtaque:(Arma*)armaUsada forca:(double) forca;
-(void) dizOi;

@end
