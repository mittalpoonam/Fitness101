//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by poonam mittal on 28/07/24.
//

import Foundation


class HomeViewModel: ObservableObject {
    
    
    var calories: Int = 123
    var active: Int = 56
    var stand: Int = 8
    
    
    var mockActivities = [
        Activity(id: 0, title: "Today Steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9,810"),
        Activity(id: 1, title: "Today", subtitle: "Goal 1,000", image: "figure.walk", tintColor: .red, amount: "812"),
        Activity(id: 2, title: "Today Steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "9,812"),
        Activity(id: 3, title: "Today Steps", subtitle: "Goal 50,000", image: "figure.run", tintColor: .purple, amount: "55,812")
    
    ]
    
    var mockWorkout = [
        Workout(id: 0, title: "Running", image: "figure.run", tint: .cyan, duration: "51 mins", date: "Aug 1" , calories: "512 kcal"),
        Workout(id: 1, title: "Strength Training", image: "figure.run", tint: .red, duration: "51 mins", date: "Aug 3"  , calories: "341 kcal"),
        Workout(id: 2, title: "Running", image: "figure.run", tint: .purple, duration: "51 mins", date: "Aug 11"  , calories: "341 kcal"),
        Workout(id: 3, title: "Running", image: "figure.run", tint: .cyan, duration: "51 mins", date: "Aug 13"  , calories: "341 kcal")
    ]
    
    
    
    
}
