import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        restartGame()
        updateScoreCounter()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindFromSecondViewController(unwindSegue: UIStoryboardSegue) {
        
    }
    
    var computerChoice = randomSign() // Declared in Sign.swift
    let rock = Sign.rock
    let paper = Sign.paper
    let scissors = Sign.scissors
    
    @IBOutlet weak var winCounter: UILabel!
    @IBOutlet weak var drawCounter: UILabel!
    @IBOutlet weak var lossCounter: UILabel!
    func updateScoreCounter() {
        winCounter.text = "\(numberOfWins)"
        drawCounter.text = "\(numberOfDraws)"
        lossCounter.text = "\(numberOfLosses)"
    }

    
    func restartGame() {
        computerChoice = randomSign()
        gameStateLabel.text = whatGameState(currentGameState: GameState.start)
        computerChoiceLabel.text = "🤖"
        
    }
    
    @IBOutlet weak var gameStateLabel: UILabel!
    @IBOutlet weak var computerChoiceLabel: UILabel!
    
    @IBAction func rockButton(_ sender: Any) {
        computerChoiceLabel.text = "🤖: \(symbol(computerChoice))"
        gameStateLabel.text = whatGameState(currentGameState: whoWins(playerChoice: rock, computerChoice: computerChoice))
        computerChoice = randomSign()
        updateScoreCounter()
    }
    @IBAction func paperButton(_ sender: Any) {
        computerChoiceLabel.text = "🤖: \(symbol(computerChoice))"
        gameStateLabel.text = whatGameState(currentGameState: whoWins(playerChoice: paper, computerChoice: computerChoice))
        computerChoice = randomSign()
        updateScoreCounter()
    }
    @IBAction func scissorsButton(_ sender: Any) {
        computerChoiceLabel.text = "🤖: \(symbol(computerChoice))"
        gameStateLabel.text = whatGameState(currentGameState: whoWins(playerChoice: scissors, computerChoice: computerChoice))
        computerChoice = randomSign()
        updateScoreCounter()
    }
    @IBAction func resetScoreButton(_ sender: Any) {
        restartGame()
        resetScoreCounter()
        updateScoreCounter()
    }
    
    
}

