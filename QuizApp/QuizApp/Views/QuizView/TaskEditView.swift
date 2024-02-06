//
//  TaskEdidView.swift
//  QuizApp
//
//  Created by Martin Hegel on 05.02.24.
//

import SwiftUI

struct TaskEditView: View {

    var body: some View {
        
            VStack {
                
                Text(title)
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.black)
                
                Picker("test", selection: $amountSelectedView) {
                    ForEach(amountListView, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
                .onChange(of: amountSelectedView) {
                    newValue in
                    questionViewModel.amountQuestions = newValue
                    
                    questionViewModel.fetchData()
                    questionViewModel.printAmount()
                }
                 
                 
                
                NavigationLink {
                    WrapperQuizView()
                    
                } label: {
                    Text("Start Quiz")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.black)
                }
                .frame(width: 300, height: 50)
                .background(Color("SecondColor"))
                .clipShape(Capsule())
                .shadow(radius: 4, x: 0, y: 4)
                .offset(y: -8)
                
                
            }
    }
    
    @ObservedObject var questionViewModel: QuestionListViewModel
    
   // @Binding var isPresented: Bool
    @State var title: String
    @State private var amountSelectedView = ""
    @State var amountListView = ["1", "2", "3"]
    


}

#Preview {
    TaskEditView( questionViewModel: QuestionListViewModel(), title: "Book")
}
