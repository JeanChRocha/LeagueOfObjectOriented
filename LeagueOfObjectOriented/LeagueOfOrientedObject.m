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
#import "JogadorFactory.h"

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
    NSLog(@"\nArena: %@\n", [arena imprimirmapa]);
    
    int primeiro = rand() % 2 + 1;
    int escolhe;
    while (1) {
        if (primeiro == 1) {
            NSLog(@"\nJogador 1 - digite 1 ou 2 para escolher sua arma: ");
            scanf("%d", &escolhe);
            
            double a = [player1 ataque:arena andEscolhe:escolhe-1];
            NSLog(@"\nAtaque do player1 = %f\n",a);
            [player2 sofrerAtaque:a];
            NSLog(@"\nVida do player2 = %f\n",[player2 vida]);
            
            
            if ([self verificarVencedor]) {
                break;
            }
            
            NSLog(@"\nJogador 2 - digite 1 ou 2 para escolher sua arma: ");
            scanf("%d", &escolhe);
            
            double b = [player2 ataque:arena andEscolhe:escolhe-1];
            NSLog(@"\nAtaque do player2 = %f\n",b);
            [player1 sofrerAtaque:b];
            NSLog(@"\nVida do player1 = %f\n",[player1 vida]);
            
            if ([self verificarVencedor]) {
                break;
            }
            
        }
        
        
        else {
            NSLog(@"\nJogador 2 - digite 1 ou 2 para escolher sua arma e ATACAR: ");
            scanf("%d", &escolhe);
            
            double b = [player2 ataque:arena andEscolhe:escolhe-1];
            NSLog(@"\nAtaque do player2 = %f\n",b);
            [player1 sofrerAtaque:b];
            NSLog(@"\nVida do player1 = %f\n",[player1 vida]);
            
            if ([self verificarVencedor]) {
                break;
            }
            
            NSLog(@"\nJogador 1 - digite 1 ou 2 para escolher sua arma e ATACAR: ");
            scanf("%d", &escolhe);
            
            double a = [player1 ataque:arena andEscolhe:escolhe-1];
            NSLog(@"Ataque do player1 = %f",a);
            [player2 sofrerAtaque:a];
            NSLog(@"Vida do player2 = %f",[player2 vida]);
            
            if ([self verificarVencedor]) {
                break;
            }
            
        }
    }
    NSLog(@"Vencedor = %@\n",[[self vencedor] nome]);
}

-(void) main {
    char s1[100] = {0};
    NSString *nome;
    int raca, arma1, arma2, opcao;
    Arma *principal, *secundaria;
    JogadorFactory *jogadorFabrica = [[JogadorFactory alloc] init];
    NSMutableDictionary *jogadores = [[NSMutableDictionary alloc] init];
    
    do {
        NSLog(@"Opções:\n1 - Criar Jogador \n2 - Jogar \n3 - Sair");
        scanf("%d", &opcao);
        
        
        if (opcao == 1) {
            NSLog(@"\nNome: ");
            scanf("%s",s1);
            nome = [NSString stringWithUTF8String:s1];
            NSLog(@"\nRaca:\n 1. Elfo\n 2. Humano\n 3. Orc\n 4. Anão\n");
            scanf("%d",&raca);
            NSLog(@"\nEscolha sua Arma:\n 1. Arco e flecha \n 2. Espada \n 3. Machado \n 4. Magia\n");
            scanf("%d",&arma1);
            principal = [ArmaFactory getArma:arma1 andRaca:raca];
            NSLog(@"\nEscolha sua Arma:\n 1. Arco e flecha \n 2. Espada \n 3. Machado \n 4. Magia\n");
            scanf("%d",&arma2);
            secundaria = [ArmaFactory getArma:arma1 andRaca:raca];
            
            
            player1 = [jogadorFabrica Criar:nome andRaca:raca andArmaPrimaria:principal andArmaSecundaria: secundaria];
            
            
            [jogadores setObject: player1 forKey: nome];

        }
        else if (opcao ==2) {
            NSLog(@"\nJogadores Cadastrados: ");
            NSArray *keys = [jogadores allKeys];
            for (NSString *nome in keys) {
                NSLog(@"%@", nome);
            }
            
            NSLog(@"\nDigite o nome do primeiro Jogador:\n ");
            scanf("%s", s1);
            nome = [NSString stringWithUTF8String:s1];
            player1 = [jogadores objectForKey:nome];
            
            NSLog(@"\nEscolha o nome do segundo Jogador:\n ");
            scanf("%s", s1);
            nome = [NSString stringWithUTF8String:s1];
            player2 = [jogadores objectForKey:nome];
            
            [self jogar];
            
        }
        
    } while (opcao != 3);
}

@end
