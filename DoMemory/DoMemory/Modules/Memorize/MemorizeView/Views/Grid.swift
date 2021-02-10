//
//  Grid.swift
//  DoMemory
//
//  Created by Ezequiel Barreto on 24/09/20.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    private var items: [Item]
    private var viewForItem: (Item) -> ItemView
    
    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }
    
    var body: some View {
        GeometryReader { geometry in
            self.body(for: GridLayout(itemCount: self.items.count, in: geometry.size))
        }
        
    }
    
    func body(for layout: GridLayout) -> some View {
        ForEach(self.items) { item in
            self.body(for: item, in: layout)
            
        }
    }
    
    func body(for item: Item, in layout: GridLayout) -> some View {
        let index = items.firstIndex(matching: item)!
        return Group {
            viewForItem(item)
             .frame(width: layout.itemSize.width, height: layout.itemSize.height)
             .position(layout.location(ofItemAt: index))
        }
        
        
    }
}
