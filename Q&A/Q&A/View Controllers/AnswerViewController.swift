//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Spencer Curtis on 7/30/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    @IBAction func submitAnswerButtonTapped(_ sender: Any) {
        guard let question = question,
            let answerer = answererTextField.text,
            let answer = answerTextView.text,
            answerer != "" && answer != "" else { return }
        
        questionController?.update(question: question, withAnswer: answer, andAnswerer: answerer)
        
        navigationController?.popViewController(animated: true)
    }
    
    private func updateViews() {
        guard let question = question else { return }
    
        title = question.question
        questionLabel.text = question.question
        askerLabel.text = question.asker
        
        guard let answerer = question.answerer,
            let answer = question.answer else { return }
        
        answererTextField.text = answerer
        answerTextView.text = answer
    }
    
    var questionController: QuestionController?
    var question: Question?
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
}
