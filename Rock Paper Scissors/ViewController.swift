//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Kevin Wang on 2/21/18.
//  Copyright © 2018 KevinWang. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        restartGame()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var computerChoice = randomSign()
    let playerRock = Sign.rock
    let playerPaper = Sign.paper
    let playerScissors = Sign.scissors
    
    func restartGame() {
        computerChoice = randomSign()
        titleLabel.text = startWinLoseDraw(GameState.start)
        computerLabel.text = "🤖"
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var computerLabel: UILabel!
    
    @IBAction func rockButton(_ sender: Any) {
        computerLabel.text = "🤖: \(symbol(computerChoice))"
        titleLabel.text = startWinLoseDraw(compare(playerChoice: playerRock, computerChoice: computerChoice))
        computerChoice = randomSign()
    }
    @IBAction func paperButton(_ sender: Any) {
        computerLabel.text = "🤖: \(symbol(computerChoice))"
        titleLabel.text = startWinLoseDraw(compare(playerChoice: playerPaper, computerChoice: computerChoice))
        computerChoice = randomSign()
    }
    @IBAction func scissorsButton(_ sender: Any) {
        computerLabel.text = "🤖: \(symbol(computerChoice))"
        titleLabel.text = startWinLoseDraw(compare(playerChoice: playerScissors, computerChoice: computerChoice))
        computerChoice = randomSign()
    }
    @IBAction func playAgainButton(_ sender: Any) {
        restartGame()
    }
    
    
}

