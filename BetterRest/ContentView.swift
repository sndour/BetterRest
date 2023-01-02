//
//  ContentView.swift
//  BetterRest
//
//  Created by Stéphane Adefemi NDOUR on 02/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        VStack (spacing: 20){
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                .padding()
            DatePicker("Please enter a date", selection: $wakeUp, in: Date.now..., displayedComponents: .date)
                .labelsHidden()
            
        }
        
    }
    
    func trivialExample(){
        let now = Date.now
        let tomorrow = now.addingTimeInterval(86400)
        let range = now...tomorrow
        
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let date = Calendar.current.date(from: components) ?? Date.now
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
