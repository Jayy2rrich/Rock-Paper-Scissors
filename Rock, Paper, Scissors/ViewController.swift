//
//  ViewController.swift
//  Rock, Paper, Scissors
//
//  Created by 7g on 12/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Status: UILabel!
    @IBOutlet weak var AppSign: UILabel!
    @IBOutlet weak var Paper: UIButton!
    @IBOutlet weak var Rock: UIButton!
    @IBOutlet weak var PlayAgain: UIButton!
    @IBOutlet weak var Scissor: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func PlayRock(_ sender: Any) {
    }
    
    @IBAction func PlayPaper(_ sender: Any) {
    }
    @IBAction func PlayScissors(_ sender: Any) {
    }
    
    @IBAction func PlayAgainButton(_ sender: Any) {
    }
    func updateUI(state: GameState) {
      switch state {
      case .win:
        Status.text = "You win!"
        view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
      case .lose:
        Status.text = "You lose!"
        view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
      case .draw:
        Status.text = "It's a draw!"
        view.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
      case .start:
          Status.text = "Rock, paper, or scissors?"
          view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
          PlayAgain.isHidden = true
          Rock.isEnabled = true
          Paper.isEnabled = true
          Scissor.isEnabled = true
      }
    }
