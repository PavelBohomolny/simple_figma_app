//
//  Task.swift
//  SimpleFigmaApp
//
//  Created by Pavel Bohomolnyi on 07/08/2022.
//

import Foundation

struct Task: Identifiable {
    
    var id = UUID()
    var title: String
    
    static func getDummyTasks() -> [Task] {
        
        var tasks = [Task]()
        
        tasks.append(Task(title: "Check emails"))
        tasks.append(Task(title: "Discuss marketing plan"))
        tasks.append(Task(title: "Morning Meeting"))
        tasks.append(Task(title: "Branding campaign"))
        
        return tasks
    }
}
