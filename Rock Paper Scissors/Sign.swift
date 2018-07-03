//
//  Sign.swift
//  Rock Paper Scissors
//
//  Created by Kevin Wang on 2/21/18.
//  Copyright © 2018 KevinWang. All rights reserved.
//

import Foundation
import GameplayKit //Enables GKRandomDistribution


    enum Sign {
        case rock, paper, scissors
    }

    //Function takes Sign as argument and returns corresponding EMOJI

    func symbol(_ sign: Sign) -> String {
        switch sign {
        case .rock: return "✊"
        case .paper: return "✋"
        case .scissors: return "✌️"
        }
    }

    //Constant that is a random Int from 0-2. (Three cases)
    let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

    //Randomizer function
    func randomSign() -> Sign {
        let randomInt = randomChoice.nextInt()
        switch randomInt {
        case 0: return .rock
        case 1: return .paper
        default: return .scissors
        }
    }

  

