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
        return "You won!"
    case .lose:
        incrementLosses()
        return "You lost!"
    case .draw:
        incrementDraws()
        return "Draw..."
    }
}
