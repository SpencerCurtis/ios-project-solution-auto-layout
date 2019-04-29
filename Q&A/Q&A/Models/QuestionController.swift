//
//  QuestionController.swift
//  Q&A
//
//  Created by Spencer Curtis on 7/30/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class QuestionController {
    
    func createQuestion(withQuestion questionString: String, asker: String) {
        let question = Question(question: questionString, asker: asker)
        
        questions.append(question)
    }
    
    func update(question: Question, withAnswer answer: String, andAnswerer answerer: String) {
        guard let index = questions.index(of: question) else { return }
        
        questions[index].answer = answer
        questions[index].answerer = answerer
    }
    
    func delete(question: Question) {
        guard let index = questions.index(of: question) else { return }
        
        questions.remove(at: index)
    }
    
    
    var questions: [Question] = []
    
}
