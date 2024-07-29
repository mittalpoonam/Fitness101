//
//  HealthManager.swift
//  FitnessApp
//
//  Created by poonam mittal on 29/07/24.
//

import Foundation
import HealthKit



class HealthManager {
    
    static let shared = HealthManager()
    let healthStore = HKHealthStore()
    
    
    
    private init() {
   
        Task {
            do {
                try await requestHealthKitAccess()
              
            }catch{
                print(error.localizedDescription)
            }
        }
        
    }
    
    func requestHealthKitAccess() async throws {
        let calories = HKQuantityType(.activeEnergyBurned)
        let exercise = HKQuantityType(.appleExerciseTime)
        let stand = HKCategoryType(.appleStandHour)
        let healthTypes: Set = [calories, exercise, stand]
        try await healthStore.requestAuthorization(toShare: [], read:healthTypes)
        
    }
    
    func fetchTodayCaloriesBurned(completion: @escaping(Result<Double, Error>) -> Void) {
        
        let calories = HKQuantityType(.activeEnergyBurned)
        let predicate = HKQuery.predicateForSamples(withStart: Date().startOfDay , end: Date())
        let query = HKStatisticsQuery(quantityType: calories, quantitySamplePredicate: predicate) { _, results, error in
            guard let quantity = results?.sumQuantity(), error == nil else{
                completion (.failure(NSError()))
                return
            }
            
            let calorieCount = quantity.doubleValue(for: .kilocalorie())
            completion(.success(calorieCount))
        }
        
        healthStore.execute(query)
    }
    
    func fetchTodayExerciseTime(completion: @escaping(Result<Double, Error>) -> Void) {
        
        let exercise = HKQuantityType(.appleExerciseTime)
        let predicate = HKQuery.predicateForSamples(withStart: Date().startOfDay , end: Date())
        let query = HKStatisticsQuery(quantityType: exercise, quantitySamplePredicate: predicate) { _, results, error in
            guard let quantity = results?.sumQuantity(), error == nil else{
                completion (.failure(NSError()))
                return
            }
            
            let exerciseTime = quantity.doubleValue(for: .minute())
            completion(.success(exerciseTime))
        }
        
        healthStore.execute(query)
    }

    func fetchTodayStandHours(completion: @escaping(Result<Int, Error>) -> Void) {
        
        let stand = HKCategoryType(.appleStandHour)
        let predicate = HKQuery.predicateForSamples(withStart: Date().startOfDay , end: Date())
        let query = HKSampleQuery(sampleType: stand, predicate: predicate, limit: HKObjectQueryNoLimit, sortDescriptors: nil) { _, results, error in
            guard let samples = results as? [HKCategorySample], error == nil else{
                completion (.failure(NSError()))
                return
            }
           
            print(samples.map({ $0.value}))
            let standCount = samples.filter( {$0.value == 0 }).count
            completion(.success(standCount))
        }
        
        healthStore.execute(query)
    }
    
    
    
    
}



extension Date {
    var startOfDay: Date {
        return Calendar.current.startOfDay(for: self)
    }
}
