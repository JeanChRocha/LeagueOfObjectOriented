//
//  Jogador.m
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import "Jogador.h"
#import "Arena.h"



@implementation Jogador

static int const ELFO = 0;
static int const HUMANO = 1;
static int const ORC = 2;
static int const ANAO = 3;

@synthesize nome;
@synthesize raca;
@synthesize vida;
@synthesize forcaEscudo;
@synthesize armaPrimaria;
@synthesize armaSecundaria;


+(int)HUMANO{
    return HUMANO;
}

+(int)ELFO {
    return ELFO;
}

+(int)ORC {
    return ORC;
}

+(int)ANAO {
    return ANAO;
}

-(Jogador *) initWithNome:(NSString *)n andRaca:(int)r andArmaPrimaria:(Arma *)ap andArmaSecundaria:(Arma *)as {
    self = [super init];
    if (self) {
        nome = n;
        raca = r;
        vida = 1000;
        forcaEscudo = 10;
        armaPrimaria = ap;
        armaSecundaria = as;
    }
    return self;
}

-(double) ataque:(Arena *)a andEscolhe:(int)e{
    double bonus, atk;
    switch (raca) {
        case ORC:
            bonus = 10;
            break;
        case ANAO:
            bonus = 5;
            break;
        default:
            bonus = 0;
            break;
    }
    
    if (e == 1) {
        atk = [armaPrimaria calcularForcaAtaque:raca];
    }
    else
        atk = [armaSecundaria calcularForcaAtaque:raca];
    

    float f = ((rand() % 41) + 60);
    return atk*[a calcularBonusArena:self]*f/100;
}

-(void) sofrerAtaque:(double) forca{
    
    
    double bonus;
    switch (raca) {
        case 0:
            bonus = 10;
            break;
        case 1:
            bonus = 15;
            break;
        case 2:
            bonus = 5;
            break;
        case 3:
            bonus = 15;
            break;
    }
    
    if (forca - bonus - forcaEscudo <= 0) {
        return;
    }else{
        vida -= forca - bonus - forcaEscudo--;
    }
    
    if (vida < 0) {
        vida = 0;
    }
}

@end
