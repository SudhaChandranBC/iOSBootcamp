//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var option1Button: UIButton!
    
    var timer = Timer()
//    var quizModel = QuizBrain()
    var quizModel = QuizBrain1()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        updateAnswers()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        if quizModel.checkAnswer(userAnswer: userAnswer) {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        quizModel.nextQuestion()
        
        timer  = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
    }
    
    @objc func updateUI() {
        scoreLabel.text = "Score: \(quizModel.getScore())"
        questionLabel.text = quizModel.getQuestionText()
        progressBar.progress = quizModel.getProgress()
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
        option1Button.backgroundColor = .clear
        updateAnswers()
    }
    
    func updateAnswers() {
        let answers = quizModel.getAnswers()
        option1Button.setTitle(answers[0], for: .normal)
        trueButton.setTitle(answers[1], for: .normal)
        falseButton.setTitle(answers[2], for: .normal)
    }
}

