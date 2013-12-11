//
//  JogadorFactory.m
//  LeagueOfObjectOriented
//
//  Created by JEAN APARECIDO on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "JogadorFactory.h"

@implementation JogadorFactory


-(Jogador *) Criar:(NSString *)n andRaca:(int)r andArmaPrimaria:(Arma *)ap andArmaSecundaria:(Arma *)as{
    return [[Jogador alloc] initWithNome:n andRaca:r andArmaPrimaria:ap andArmaSecundaria:as];
}

@end
