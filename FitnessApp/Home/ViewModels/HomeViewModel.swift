//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by poonam mittal on 28/07/24.
//

import Foundation


class HomeViewModel: ObservableObject {
    
    let healthManager = HealthManager.shared
    
    @Published var calories: Int = 0
    @Published var exercise: Int = 0
    @Published var stand: Int = 0
    
    @Published var activities = [Activity]()
    @Published var workouts = [
        Workout(id: 0, title: "Running", image: "figure.run", tint: .cyan, duration: "51 mins", date: "Aug 1" , calories: "512 kcal"),
        Workout(id: 1, title: "Strength Training", image: "figure.run", tint: .red, duration: "51 mins", date: "Aug 3"  , calories: "341 kcal"),
        Workout(id: 2, title: "Running", image: "figure.run", tint: .purple, duration: "51 mins", date: "Aug 11"  , calories: "341 kcal"),
        Workout(id: 3, title: "Running", image: "figure.run", tint: .cyan, duration: "51 mins", date: "Aug 13"  , calories: "341 kcal")
    ]
    var mockActivities = [
        Activity(title: "Today Steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9,810"),
        Activity(title: "Today", subtitle: "Goal 1,000", image: "figure.walk", tintColor: .red, amount: "812"),
        Activity(title: "Today Steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "9,812"),
        Activity(title: "Today Steps", subtitle: "Goal 50,000", image: "figure.run", tintColor: .purple, amount: "55,812")
    
    ]
    
    var mockWorkout = [
        Workout(id: 0, title: "Running", image: "figure.run", tint: .cyan, duration: "51 mins", date: "Aug 1" , calories: "512 kcal"),
        Workout(id: 1, title: "Strength Training", image: "figure.run", tint: .red, duration: "51 mins", date: "Aug 3"  , calories: "341 kcal"),
        Workout(id: 2, title: "Running", image: "figure.run", tint: .purple, duration: "51 mins", date: "Aug 11"  , calories: "341 kcal"),
        Workout(id: 3, title: "Running", image: "figure.run", tint: .cyan, duration: "51 mins", date: "Aug 13"  , calories: "341 kcal")
    ]
    
    init(){
        Task {
            do {
                try await healthManager.requestHealthKitAccess()
                fetchTodayCalories()
                fetchTodayExerciseTime()
                fetchTodayStandHours()
               fetchTodaySteps()
                fetchCurrentWeekActivities()
                fetchRecentWorkouts()
            }catch {
                print(error.localizedDescription)
            }
        }
     
        
    }
    
    func fetchTodayCalories() {
        healthManager.fetchTodayCaloriesBurned { result in
            switch result {
            case .success(let calories):
                DispatchQueue.main.async {
                    self.calories = Int(calories)
                    let activity = Activity(title: "Calories Burned", subtitle: "today", image: "flame", tintColor: .red, amount: calories.formattedNumberString())
                    self.activities.append(activity)
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    func fetchTodayExerciseTime() {
        healthManager.fetchTodayExerciseTime { result in
            switch result {
            case .success(let exercise):
                DispatchQueue.main.async {
                    self.exercise = Int(exercise)
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    func fetchTodayStandHours() {
        healthManager.fetchTodayStandHours { result in
            switch result {
            case .success(let hours):
                DispatchQueue.main.async {
                    self.stand = hours
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    //MARK: Fitness Activity
    
    func fetchTodaySteps() {
        healthManager.fetchTodaySteps { result in
            switch result  {
            case .success(let activity):
                DispatchQueue.main.async {
                    self.activities.append(activity)
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    func fetchCurrentWeekActivities() {
        healthManager.fetchCurrentWeekWorkoutStats { result in
            switch result  {
            case .success(let activities):
                DispatchQueue.main.async {
                    self.activities.append(contentsOf: activities)
                }
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    //MARK: Recent Workouts
    func fetchRecentWorkouts() {
        healthManager.fetchWorkoutsForMonth(month: Date()) { result in
            switch result {
            case .success(let workouts):
                DispatchQueue.main.async {
                    self.workouts = Array(workouts.prefix(4))
                }
                
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
    
    
}
