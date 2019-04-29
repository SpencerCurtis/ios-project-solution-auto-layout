//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Spencer Curtis on 7/30/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var hasBeenAnsweredLabel: UILabel!
    
    private func updateViews() {
        guard let question = question else { return }
        
        self.questionLabel.text = question.question
        self.askedByLabel.text = question.asker
        self.hasBeenAnsweredLabel.text = question.answer == nil ? "Can you answer this?" : "Tap to view answer."
    }
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
}
