//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyModel = StoryModel()
//    let story0 = "You see a fork in the road."
//
//    let choice1  = "Take a left."
//
//    let choice2  = "Take a right."
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        storyLabel.text = story0
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if sender == choice1Button {
            storyModel.nextStory(choiceMade: 1)
        } else {
            storyModel.nextStory(choiceMade: 2)
        }
        updateUI()
    }
    
    func updateUI() {
//        choice1Button.setTitle(choice1, for: .normal)
//        choice2Button.setTitle(choice2, for: .normal)
        updateNextQuestion()
    }
    
    func updateNextQuestion() {
        let nextStory = storyModel.getStory()
        storyLabel.text = nextStory.title
        choice1Button.setTitle(nextStory.choice1, for: .normal)
        choice2Button.setTitle(nextStory.choice2, for: .normal)
    }
}

