//
//  ContentView.swift
//  Own Your Time
//
//  Created by VC on 2/4/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        
        Color.purple
        
        Label("Tap here", systemImage: "plus"  )
            .padding()
            .onTapGesture(perform: addItem)
        
        List {
            ForEach(items, id: \.self) { item in
                Text(item.timestamp, style: .date)
            }
            .onDelete(perform: deleteItems)
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
