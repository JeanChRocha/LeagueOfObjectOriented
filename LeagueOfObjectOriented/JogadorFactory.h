//
//  JogadorFactory.h
//  LeagueOfObjectOriented
//
//  Created by JEAN APARECIDO on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"

@interface JogadorFactory : NSObject


-(Jogador *) Criar:(NSString *)n andRaca:(int)r andArmaPrimaria:(Arma *)ap andArmaSecundaria:(Arma *)as;




@end
