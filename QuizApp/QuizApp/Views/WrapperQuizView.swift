//
//  WrapperQuizView.swift
//  QuizApp
//
//  Created by Martin Hegel on 31.01.24.
//

import SwiftUI

struct WrapperQuizView: View {
    var body: some View {
        
        if questionViewModel.isFinished == true {
            ResultView()
        } else {
            QuizView()
                .environmentObject(questionViewModel)
        }

    }
    
    
    @StateObject private var questionViewModel = QuestionListViewModel()
    
}

#Preview {
    WrapperQuizView()
}