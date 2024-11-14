//
//  ContentView.swift
//  GridCalendar
//
//  Created by Otavio Lourenço on 14/11/2024.
//

import SwiftUI

struct ContentView: View {
    let layout = [
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40))
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: layout, pinnedViews: [.sectionHeaders]) {
                ForEach(year, id: \.name) {month in
                    Section(header: Text(verbatim: month.name).font(.headline)){
                        ForEach(month.days) {day in
                            Capsule()
                                .overlay(Text("\(day.value)").foregroundStyle(Color.white))
                                .foregroundStyle(Color.blue)
                                .frame(height: 40)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
