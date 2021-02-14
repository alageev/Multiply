//
//  DataHandler.swift
//  Multiply
//
//  Created by Алексей Агеев on 14.02.2021.
//

import SwiftUI

class DataHandler: ObservableObject {
    
    @Published var answerString: String
    
    var numberOfPositiveAnswers: Int
    var question: String
    
    private let generator = UINotificationFeedbackGenerator()
    private var userAnswer: Int?
    private var lhs: Int
    private var rhs: Int
    
    init() {
        userAnswer = nil
        lhs = Int.random(in: 0...10)
        rhs = Int.random(in: 0...10)
        numberOfPositiveAnswers = 0
        question = "\(lhs) ⨉ \(rhs) = ?"
        answerString = " "
    }
    
    func submit() {
        if userAnswer == lhs * rhs {
            numberOfPositiveAnswers += 1
            generator.notificationOccurred(.success)
        } else {
            numberOfPositiveAnswers = 0
            generator.notificationOccurred(.error)
        }
        reset()
    }
    
    func input(_ value: Int) {
        guard let userAnswer = userAnswer else {
            setAnswer(value)
            return
        }
        setAnswer(10 * userAnswer + value)
    }
    
    func erase() {
        guard let userAnswer = userAnswer else {
            return
        }
        setAnswer(userAnswer / 10)
    }
    
    private func setAnswer(_ value: Int?) {
        userAnswer = value
        if userAnswer != nil {
            answerString = "\(userAnswer!)"
        } else {
            answerString = " "
        }
    }
    
    private func reset() {
        lhs = Int.random(in: 0...10)
        rhs = Int.random(in: 0...10)
        question = "\(lhs) ⨉ \(rhs) = ?"
        setAnswer(nil)
    }
}
