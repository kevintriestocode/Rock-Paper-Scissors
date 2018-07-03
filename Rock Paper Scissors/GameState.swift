//
//  GameState.swift
//  Rock Paper Scissors
//
//  Created by Kevin Wang on 2/21/18.
//  Copyright © 2018 KevinWang. All rights reserved.
//

import Foundation

enum GameState {
    case start, win, lose, draw
}

func whatGameState(currentGameState: GameState) -> String {
    switch currentGameState {
    case .start:
        return "Rock, Paper, Scissors?"
    case .win:
        incrementWins()
        return "You won! \(winStreakMessage())"
    case .lose:
        incrementLosses()
        return "You lost!"
    case .draw:
        incrementDraws()
        return "Draw..."
    }
}

//Function takes Sign as argument and returns GameState. Should compare Signs within body
func whoWins(playerChoice: Sign, computerChoice: Sign) -> GameState {
    if playerChoice == computerChoice {                                         //Draw to same
        return GameState.draw
    } else if playerChoice == Sign.rock && computerChoice == Sign.scissors {    //Win with rock
        return GameState.win
    } else if playerChoice == Sign.paper && computerChoice == Sign.rock {       //Win with paper
        return GameState.win
    } else if playerChoice == Sign.scissors && computerChoice == Sign.paper {   //Win with scissors
        return GameState.win
    } else {
        return GameState.lose //DRAW is defined. WIN is defined. So all else that's left is LOSE.
    }
}
