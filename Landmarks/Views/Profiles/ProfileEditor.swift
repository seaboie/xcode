//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by krit on 15/6/2566 BE.
//

import SwiftUI

struct ProfileEditor: View {
    
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
        guard let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate) else { return Date.now...Date.now}
        guard let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate) else { return Date.now...Date.now }
        
        return min...max;
    }
    
    var body: some View {
        List {
            HStack {
                Text("Username")
                    .bold()
                Divider()
                
                TextField("Username", text: $profile.username)
            }
            
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications")
                    .bold()
            }
            
            VStack(alignment: .leading) {
                Text("Seasonal Photo")
                    .bold()
                
                Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases) { season in
                        Text(season.rawValue)
                            .tag(season)
                    }
                }
                .pickerStyle(.segmented)
            }
            
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text("Goal Date")
                    .bold()
            }
        }
        .listStyle(.inset)
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
