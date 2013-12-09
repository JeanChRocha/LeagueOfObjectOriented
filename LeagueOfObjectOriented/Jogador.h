//
//  Jogador.h
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arma.h"
@class Arena;


@interface Jogador : NSObject {
    NSString *nome;
    int raca;
    double vida;
    int forcaEscudo;
    Arma * armaPrimaria;
    Arma * armaSecundaria;
}

+(int)ELFO;
+(int)HUMANO;
+(int)ORC;
+(int)ANAO;

@property NSString *nome;
@property int raca;
@property double vida;
@property int forcaEscudo;
@property Arma * armaPrimaria;
@property Arma * armaSecundaria;

-(Jogador *) initWithNome:(NSString *)n andRaca:(int)r andArmaPrimaria:(Arma *)ap andArmaSecundaria:(Arma *)as;
-(double) ataque:(Arena *)a andEscolhe:(int)e;
-(void) sofrerAtaque:(double) forca;

@end
