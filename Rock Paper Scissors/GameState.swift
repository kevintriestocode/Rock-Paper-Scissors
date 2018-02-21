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

func startWinLoseDraw(_ state: GameState) -> String {
    switch state {
    case .start:
        return "Rock, Paper, Scissors?"
    case .win:
        return "You won!"
    case .lose:
        return "You lost!"
    case .draw:
        return "Draw..."
    }
}
