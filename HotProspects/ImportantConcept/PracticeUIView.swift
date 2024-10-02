//
//  PracticeUIView.swift
//  HotProspects
//
//  Created by APPLE on 25/09/24.
//
import UserNotifications
import SwiftUI

struct PracticeUIView: View {
    
    var body: some View {
        Button("Request Permission"){
            UNUserNotificationCenter.current().requestAuthorization(options:[.alert,.badge,.sound]){ success, error in
                if success{
                    print("Success")
                }
                else if let error{
                    print(error.localizedDescription)
                }
            }
        }
        Button("Scheduled Notifications"){
            let content = UNMutableNotificationContent()
            content.title = "can we access you location"
            content.subtitle = "we ensure your privacy"
            content.sound = UNNotificationSound.default
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(request)
        }
    }
}

#Preview {
    PracticeUIView()
}
