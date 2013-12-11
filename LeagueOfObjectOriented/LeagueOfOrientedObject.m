//
//  LeagueOfOrientedObject.m
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import "LeagueOfOrientedObject.h"
#import "Jogador.h"
#import "ArcoEFlecha.h"
#import "Machado.h"
#import "Magia.h"
#import "Espada.h"
#import <stdio.h>
#import <time.h>
#import "ArmaFactory.h"

@implementation LeagueOfOrientedObject

-(LeagueOfOrientedObject *) init {
    self = [super init];
    return self;
}

-(BOOL) verificarVencedor {
    return ([player1 vida] <= 0 || [player2 vida] <= 0);
}

-(Jogador *) vencedor {
    if ([player1 vida] <= 0){
        return player2;
    }
    else return player1;
}


-(void) jogar {
    //srand((int)time(NULL));
    Arena* arena = [[Arena alloc] init];
    NSLog(@"Arena: %@\n", [arena imprimirmapa]);
    
    int primeiro = rand() % 2 + 1;
    int escolhe;
    while (1) {
        if (primeiro == 1) {
            NSLog(@"Jogador 1 - digite 1 ou 2 para escolher sua arma: ");
            scanf("%d", &escolhe);
            
            double a = [player1 ataque:arena andEscolhe:escolhe-1];
            NSLog(@"Ataque do player1 = %f\n",a);
            [player2 sofrerAtaque:a];
            NSLog(@"Vida do player2 = %f\n",[player2 vida]);
            
            
            if ([self verificarVencedor]) {
                break;
            }
            
            NSLog(@"Jogador 2 - digite 1 ou 2 para escolher sua arma: ");
            scanf("%d", &escolhe);
            
            double b = [player2 ataque:arena andEscolhe:escolhe-1];
            NSLog(@"Ataque do player2 = %f\n",b);
            [player1 sofrerAtaque:b];
            NSLog(@"Vida do player1 = %f\n",[player1 vida]);
            
            if ([self verificarVencedor]) {
                break;
            }
            
        }
        
        
        else {
            NSLog(@"Jogador 2 - digite 1 ou 2 para escolher sua arma: ");
            scanf("%d", &escolhe);
            
            double b = [player2 ataque:arena andEscolhe:escolhe-1];
            NSLog(@"Ataque do player2 = %f\n",b);
            [player1 sofrerAtaque:b];
            NSLog(@"Vida do player1 = %f\n",[player1 vida]);
            
            if ([self verificarVencedor]) {
                break;
            }
            
            NSLog(@"Jogador 1 - digite 1 ou 2 para escolher sua arma: ");
            scanf("%d", &escolhe);
            
            double a = [player1 ataque:arena andEscolhe:escolhe-1];
            NSLog(@"Ataque do player1 = %f\n",a);
            [player2 sofrerAtaque:a];
            NSLog(@"Vida do player2 = %f\n",[player2 vida]);
            
            if ([self verificarVencedor]) {
                break;
            }
            
        }
    }
    NSLog(@"Vencedor = %@\n",[[self vencedor] nome]);
}

-(void) main {
    char s1[100] = {0}, s2[100] = {0};
    NSString *nome1, *nome2;
    int raca1, raca2, forcaEscudo1, forcaEscudo2, arma1, arma2;
    Arma *principal1, *principal2, *secundaria1, *secundaria2;
    NSLog(@"\tJogador 1\n");
    NSLog(@"Nome: ");
    scanf("%s",s1);
    nome1 = [NSString stringWithUTF8String:s1];
    NSLog(@"Raca: ");
    scanf("%d",&raca1);
    NSLog(@"Forca do escudo: ");
    scanf("%d",&forcaEscudo1);
    NSLog(@"Arco e flecha = 1 | Espada = 2 || Machado = 3 || Magia = 4\n");
    NSLog(@"Arma: ");
    scanf("%d",&arma1);
    principal1 = [ArmaFactory getArma:arma1 andRaca:raca1];
    NSLog(@"Arma secundaria: ");
    scanf("%d",&arma1);
    secundaria1 = [ArmaFactory getArma:arma1 andRaca:raca1];
    player1 = [[Jogador alloc] initWithNome:nome1 andRaca:raca1 andArmaPrimaria:principal1 andArmaSecundaria:secundaria1];
    NSLog(@"\tJogador 2\n");
    NSLog(@"Nome: ");
    scanf("%s",s2);
    nome2 = [NSString stringWithUTF8String:s2];
    NSLog(@"Raca: ");
    scanf("%d",&raca2);
    NSLog(@"Forca do escudo: ");
    scanf("%d",&forcaEscudo2);
    NSLog(@"Arco e flecha = 1 | Espada = 2 || Machado = 3 || Magia = 4\n");
    NSLog(@"Arma: ");
    scanf("%d",&arma2);
    principal2 = [ArmaFactory getArma:arma2 andRaca:raca2];
    NSLog(@"Arma secundaria: ");
    scanf("%d",&arma2);
    secundaria2 = [ArmaFactory getArma:arma2 andRaca:raca2];
    player2 = [[Jogador alloc] initWithNome:nome2 andRaca:raca2 andArmaPrimaria:principal2 andArmaSecundaria:secundaria2];
    [self jogar];
}

@end
