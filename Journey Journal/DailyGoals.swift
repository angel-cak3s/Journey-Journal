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
                     .fontWeight(.black)
                Spacer()
                Button(action: {
                    self.showNewTask = true
                }) {
                Text("+")
                }
            }
            .padding()
            Spacer()
            List {
                ForEach(toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text(":bangbang:" + (toDoItem.title ?? "No title"))
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
