//
//  LeagueOfOrientedObject.h
//  Loo
//
//  Created by ANDRE GIMENEZ on 11/18/13.
//  Copyright (c) 2013 Andre_Glauco. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arena.h"
@class Jogador;

@interface LeagueOfOrientedObject : NSObject {
    Jogador * player1, * player2;
}

-(LeagueOfOrientedObject *) init;
-(void) main;
-(void) jogar;
-(BOOL) verificarVencedor;

-(Jogador *) vencedor;

@end
