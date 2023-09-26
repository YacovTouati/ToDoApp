//
//  ContentView.swift
//  ToDoDemo
//
//  Created by yacov touati on 18/09/2023.
//

import SwiftUI

struct toDoDemo: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TasksView()
                .environmentObject(realmManager)
            
            AddSmallButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
                .environmentObject(realmManager)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
    }
}


struct toDoDemow_Previews: PreviewProvider {
    static var previews: some View {
        toDoDemo()
    }
}
