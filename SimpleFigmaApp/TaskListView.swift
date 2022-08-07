//
//  TaskListView.swift
//  SimpleFigmaApp
//
//  Created by Pavel Bohomolnyi on 07/08/2022.
//

import SwiftUI

struct TaskListView: View {
    
    var tasks = Task.getDummyTasks()
    
    var body: some View {
        
        ZStack {
            
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView {
                
                ZStack {
                    
                    Rectangle()
                        .foregroundColor(.white)
                    
                    VStack {
                        
                        HStack {
                            Text("Today")
                            Spacer()
                            Text("\(tasks.count)")
                            Image("ic-downarrow")
                        }
                        .font(Font.taskTest)
                        
                        ForEach(tasks) { task in
                            
                            HStack {
                                Image("ic-checkbox")
                                Text(task.title)
                                    .font(Font.taskTest)
                                Spacer()
                                VStack(alignment: .trailing, spacing: 4) {
                                    Text("18:00")
                                        .foregroundColor(Color("Alarm"))
                                        .font(Font.taskAlarmTest)
                                    Image("ic-alarm")
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 16)
            }
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        // TODO: Add new task
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 64, height: 64)
                            .foregroundColor(Color.accentColor)
                            .padding(.bottom, 28)
                            .padding(.trailing, 24)
                    }
                }
            }
        }
        .toolbar {
            
            ToolbarItem(placement: .navigationBarLeading) {
                Image("ic-hamburger")
            }
            
            ToolbarItem(placement: .principal) {
                Text("Today")
                    .font(.navTitle)
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Image("ic-dots")
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
