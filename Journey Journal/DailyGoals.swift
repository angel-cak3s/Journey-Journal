//
//  DailyGoals.swift
//  Journey Journal
//
//  Created by scholar on 8/16/23.
//

import SwiftUI
struct DailyGoals: View {
    @State private var showNewTask = false
    @Environment(\.managedObjectContext) var context
    @FetchRequest(
            entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
    var toDoItems: FetchedResults<ToDo>
    var body: some View {
        
        VStack {
            HStack {
                // title of app
                Text("Daily Goals")
                     .font(.system(size: 40))
                     .fontWeight(.semibold)
                     .foregroundColor(Color(red: 0.88, green: 0.43, blue: 0.43))
                
                Spacer()
                
                Button(action: {
                    self.showNewTask = true
                }) {
                    Text("+")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.94, green: 0.56, blue: 0.35))
                    
                    //UIColor(red: 0.94, green: 0.56, blue: 0.35, alpha: 1)
                }
            }
            .padding()
            Spacer()
            List {
                ForEach(toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + (toDoItem.title ?? "No title"))
                    } else {
                        Text(toDoItem.title ?? "No title")
                    }
                }
                .onDelete(perform: deleteTask)
            }
        }
        .padding()
        if showNewTask {
            NewToDoView(title: "", isImportant: false, showNewTask: $showNewTask)
        }
    }
    private func deleteTask(offsets: IndexSet) {
            withAnimation {
                offsets.map { toDoItems[$0] }.forEach(context.delete)
                do {
                    try context.save()
                } catch {
                    print(error)
                }
            }
    }
}
struct DailGoals_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
