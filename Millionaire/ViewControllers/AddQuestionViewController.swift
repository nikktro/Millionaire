//
//  AddQuestionViewController.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 14.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import UIKit

class AddQuestionViewController: UIViewController {
    
    @IBOutlet weak var userQuestionTextView: UITextView!
    @IBOutlet weak var answerATextField: UITextField!
    @IBOutlet weak var answerBTextField: UITextField!
    @IBOutlet weak var answerCTextField: UITextField!
    @IBOutlet weak var answerDTextField: UITextField!
    @IBOutlet weak var rightAnswerSelector: UISegmentedControl!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveButtonPressed() {
        
        var rightAnswer: String
        guard let answerA = answerATextField, !answerA.text!.isEmpty,
            let answerB = answerBTextField, !answerB.text!.isEmpty,
            let answerC = answerCTextField, !answerC.text!.isEmpty,
            let answerD = answerDTextField, !answerD.text!.isEmpty else { return }
                
        switch rightAnswerSelector.selectedSegmentIndex {
        case 0:
            rightAnswer = "A"
        case 1:
            rightAnswer = "B"
        case 2:
            rightAnswer = "C"
        case 3:
            rightAnswer = "D"
        default:
            return
        }
        
        let userQuestion = Question(question: userQuestionTextView.text,
                                    answers: ["A" : "\(answerA.text!)",
                                              "B" : "\(answerB.text!)",
                                              "C" : "\(answerC.text!)",
                                              "D" : "\(answerD.text!)"],
                                    rightAnswer: rightAnswer)
        
        Game.shared.userQuestions.append(userQuestion)
        
    }
    
}
