//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Spencer Curtis on 7/30/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    
    @IBAction func submitQuestionButtonTapped(_ sender: Any) {
        guard let question = questionTextView.text,
            let asker = nameTextField.text,
            question != "" && asker != "" else { return }
        
        questionController?.createQuestion(withQuestion: question, asker: asker)
        
        navigationController?.popViewController(animated: true)
    }
    
    var questionController: QuestionController?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
}
