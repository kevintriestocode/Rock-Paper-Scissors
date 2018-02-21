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
        case .rock:
            return "✊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        }
    }

    //Constant that is a random Int from 0-2. (Three cases)
    let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

    //Randomizer function
    func randomSign() -> Sign {
        let randomInt = randomChoice.nextInt()
        if randomInt == 0 {
            return .rock
        } else if randomInt == 1 {
            return .paper
        } else {
            return .scissors
        }
    }

    //Function takes Sign as argument and returns GameState. Should compare Signs within body
func compare(playerChoice: Sign, computerChoice: Sign) -> GameState {
        if playerChoice == computerChoice {                                         //Draw to same
            return GameState.draw
    //    } else if playerChoice == Sign.rock && computerChoice == Sign.paper {       //Lose To paper
    //        return GameState.lose
    //    } else if playerChoice == Sign.paper && computerChoice == Sign.scissors {   //Lose to scissors
    //        return GameState.lose
    //    } else if playerChoice == Sign.scissors && computerChoice == Sign.rock {    //Lose to rock
    //        return GameState.lose
        } else if playerChoice == Sign.rock && computerChoice == Sign.scissors {    //Win with rock
            return GameState.win
        } else if playerChoice == Sign.paper && computerChoice == Sign.rock {       //Win with paper
            return GameState.win
        } else if playerChoice == Sign.scissors && computerChoice == Sign.paper {   //Win with scissors
            return GameState.win
        } else {
            return GameState.lose                                                   //DRAW is defined. WIN is defined. So all else that's left is LOSE.
        }
    }

