//
//  NotificationsView.swift
//  HotProspects
//
//  Created by APPLE on 02/09/24.
//
import UserNotifications
import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack{
            Button("Request Permission"){
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]){ success, error in
                    if success{
                        print("success")
                    }
                    if let error{
                        print(error.localizedDescription)
                    }
                    
                }
            }
            
            Button("Schedule Notifications"){
                let content  = UNMutableNotificationContent()
                content.title = "welcome aditya"
                content.subtitle = "you should update your profiile"
                content.sound = UNNotificationSound.default
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval:5,repeats: false)
                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
}

#Preview {
    NotificationsView()
}
