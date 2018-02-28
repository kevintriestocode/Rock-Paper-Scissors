//
//  ScoreCounter.swift
//  Rock Paper Scissors
//
//  Created by Kevin Wang on 2/28/18.
//  Copyright © 2018 KevinWang. All rights reserved.
//

import Foundation
var numberOfWins = 0
var numberOfLosses = 0
var numberOfDraws = 0

func incrementWins() {
    numberOfWins += 1
}
func incrementLosses() {
    numberOfLosses += 1
}
func incrementDraws() {
    numberOfDraws += 1
}
func resetScoreCounter() {
    numberOfWins = 0
    numberOfLosses = 0
    numberOfDraws = 0
}
