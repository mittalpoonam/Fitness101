//
//  HKWorkoutActivityType+Ext.swift
//  FitnessApp
//
//  Created by poonam mittal on 02/08/24.
//

import HealthKit
import SwiftUI

extension HKWorkoutActivityType {

    /*
     Simple mapping of available workout types to a human readable name.
     */
    var name: String {
        switch self {
        case .americanFootball:             return "American Football"
        case .archery:                      return "Archery"
        case .australianFootball:           return "Australian Football"
        case .badminton:                    return "Badminton"
        case .baseball:                     return "Baseball"
        case .basketball:                   return "Basketball"
        case .bowling:                      return "Bowling"
        case .boxing:                       return "Boxing"
        case .climbing:                     return "Climbing"
        case .crossTraining:                return "Cross Training"
        case .curling:                      return "Curling"
        case .cycling:                      return "Cycling"
        case .dance:                        return "Dance"
        case .danceInspiredTraining:        return "Dance Inspired Training"
        case .elliptical:                   return "Elliptical"
        case .equestrianSports:             return "Equestrian Sports"
        case .fencing:                      return "Fencing"
        case .fishing:                      return "Fishing"
        case .functionalStrengthTraining:   return "Functional Strength Training"
        case .golf:                         return "Golf"
        case .gymnastics:                   return "Gymnastics"
        case .handball:                     return "Handball"
        case .hiking:                       return "Hiking"
        case .hockey:                       return "Hockey"
        case .hunting:                      return "Hunting"
        case .lacrosse:                     return "Lacrosse"
        case .martialArts:                  return "Martial Arts"
        case .mindAndBody:                  return "Mind and Body"
        case .mixedMetabolicCardioTraining: return "Mixed Metabolic Cardio Training"
        case .paddleSports:                 return "Paddle Sports"
        case .play:                         return "Play"
        case .preparationAndRecovery:       return "Preparation and Recovery"
        case .racquetball:                  return "Racquetball"
        case .rowing:                       return "Rowing"
        case .rugby:                        return "Rugby"
        case .running:                      return "Running"
        case .sailing:                      return "Sailing"
        case .skatingSports:                return "Skating Sports"
        case .snowSports:                   return "Snow Sports"
        case .soccer:                       return "Soccer"
        case .softball:                     return "Softball"
        case .squash:                       return "Squash"
        case .stairClimbing:                return "Stair Climbing"
        case .surfingSports:                return "Surfing Sports"
        case .swimming:                     return "Swimming"
        case .tableTennis:                  return "Table Tennis"
        case .tennis:                       return "Tennis"
        case .trackAndField:                return "Track and Field"
        case .traditionalStrengthTraining:  return "Traditional Strength Training"
        case .volleyball:                   return "Volleyball"
        case .walking:                      return "Walking"
        case .waterFitness:                 return "Water Fitness"
        case .waterPolo:                    return "Water Polo"
        case .waterSports:                  return "Water Sports"
        case .wrestling:                    return "Wrestling"
        case .yoga:                         return "Yoga"

        // iOS 10
        case .barre:                        return "Barre"
        case .coreTraining:                 return "Core Training"
        case .crossCountrySkiing:           return "Cross Country Skiing"
        case .downhillSkiing:               return "Downhill Skiing"
        case .flexibility:                  return "Flexibility"
        case .highIntensityIntervalTraining:    return "High Intensity Interval Training"
        case .jumpRope:                     return "Jump Rope"
        case .kickboxing:                   return "Kickboxing"
        case .pilates:                      return "Pilates"
        case .snowboarding:                 return "Snowboarding"
        case .stairs:                       return "Stairs"
        case .stepTraining:                 return "Step Training"
        case .wheelchairWalkPace:           return "Wheelchair Walk Pace"
        case .wheelchairRunPace:            return "Wheelchair Run Pace"

        // iOS 11
        case .taiChi:                       return "Tai Chi"
        case .mixedCardio:                  return "Mixed Cardio"
        case .handCycling:                  return "Hand Cycling"

        // iOS 13
        case .discSports:                   return "Disc Sports"
        case .fitnessGaming:                return "Fitness Gaming"

        // Catch-all
        default:                            return "Other"
        }
    }
    
    var image: String {
        switch self {
        case .americanFootball:             return "sportscourt"
        case .archery:                      return "scope"
        case .australianFootball:           return "sportscourt"
        case .badminton:                    return "sportscourt"
        case .baseball:                     return "sportscourt"
        case .basketball:                   return "sportscourt"
        case .bowling:                      return "figure.bowling"
        case .boxing:                       return "figure.boxing"
        case .climbing:                     return "figure.climbing"
        case .crossTraining:                return "figure.cross.training"
        case .curling:                      return "curling.stone"
        case .cycling:                      return "bicycle"
        case .dance:                        return "figure.dance"
        case .danceInspiredTraining:        return "figure.dance"
        case .elliptical:                   return "figure.elliptical"
        case .equestrianSports:             return "figure.equestrian.sports"
        case .fencing:                      return "figure.fencing"
        case .fishing:                      return "figure.fishing"
        case .functionalStrengthTraining:   return "figure.strengthtraining.functional"
        case .golf:                         return "figure.golf"
        case .gymnastics:                   return "figure.gymnastics"
        case .handball:                     return "figure.handball"
        case .hiking:                       return "figure.hiking"
        case .hockey:                       return "figure.hockey"
        case .hunting:                      return "figure.hunting"
        case .lacrosse:                     return "figure.lacrosse"
        case .martialArts:                  return "figure.martialarts"
        case .mindAndBody:                  return "figure.mind.and.body"
        case .mixedMetabolicCardioTraining: return "figure.mixed.cardio"
        case .paddleSports:                 return "figure.paddlesports"
        case .play:                         return "figure.play"
        case .preparationAndRecovery:       return "figure.preparation.recovery"
        case .racquetball:                  return "figure.racquetball"
        case .rowing:                       return "figure.rowing"
        case .rugby:                        return "figure.rugby"
        case .running:                      return "figure.running"
        case .sailing:                      return "figure.sailing"
        case .skatingSports:                return "figure.skating"
        case .snowSports:                   return "figure.snow.sports"
        case .soccer:                       return "figure.soccer"
        case .softball:                     return "figure.softball"
        case .squash:                       return "figure.squash"
        case .stairClimbing:                return "figure.stairclimbing"
        case .surfingSports:                return "figure.surfing"
        case .swimming:                     return "figure.swimming"
        case .tableTennis:                  return "figure.tabletennis"
        case .tennis:                       return "figure.tennis"
        case .trackAndField:                return "figure.track.and.field"
        case .traditionalStrengthTraining:  return "figure.strengthtraining.traditional"
        case .volleyball:                   return "figure.volleyball"
        case .walking:                      return "figure.walking"
        case .waterFitness:                 return "figure.water.fitness"
        case .waterPolo:                    return "figure.water.polo"
        case .waterSports:                  return "figure.watersports"
        case .wrestling:                    return "figure.wrestling"
        case .yoga:                         return "figure.yoga"
            
            // iOS 10
        case .barre:                        return "figure.barre"
        case .coreTraining:                 return "figure.core.training"
        case .crossCountrySkiing:           return "figure.cross.country.skiing"
        case .downhillSkiing:               return "figure.downhill.skiing"
        case .flexibility:                  return "figure.flexibility"
        case .highIntensityIntervalTraining:return "figure.high.intensity.interval.training"
        case .jumpRope:                     return "figure.jumprope"
        case .kickboxing:                   return "figure.kickboxing"
        case .pilates:                      return "figure.pilates"
        case .snowboarding:                 return "figure.snowboarding"
        case .stairs:                       return "figure.stairs"
        case .stepTraining:                 return "figure.step.training"
        case .wheelchairWalkPace:           return "figure.wheelchair"
        case .wheelchairRunPace:            return "figure.walk"
            
            
            //ios 11
        case .taiChi:                       return "sportscourt"
        case .mixedCardio:                   return "figure.walk"
        case .handCycling:                   return "sportscourt"
            
            //ios 13
        case .discSports:                       return "sportscourt"
        case .fitnessGaming:                    return "sportscourt"
            
            // catch-all
        default:                                return "sportscourt"
        }
        
    }
    
    var color: Color {
           switch self {
           case .americanFootball:             return .red
           case .archery:                      return .green
           case .australianFootball:           return .blue
           case .badminton:                    return .purple
           case .baseball:                     return .orange
           case .basketball:                   return .yellow
           case .bowling:                      return .cyan
           case .boxing:                       return .cyan
           case .climbing:                     return .brown
           case .crossTraining:                return .indigo
           case .curling:                      return .teal
           case .cycling:                      return .pink
           case .dance:                        return .mint
           case .danceInspiredTraining:        return .cyan
           case .elliptical:                   return .gray
           case .equestrianSports:             return .black
           case .fencing:                      return .white
           case .fishing:                      return .red
           case .functionalStrengthTraining:   return .green
           case .golf:                         return .blue
           case .gymnastics:                   return .purple
           case .handball:                     return .orange
           case .hiking:                       return .yellow
           case .hockey:                       return .cyan
           case .hunting:                      return .cyan
           case .lacrosse:                     return .brown
           case .martialArts:                  return .indigo
           case .mindAndBody:                  return .teal
           case .mixedMetabolicCardioTraining: return .pink
           case .paddleSports:                 return .mint
           case .play:                         return .cyan
           case .preparationAndRecovery:       return .gray
           case .racquetball:                  return .black
           case .rowing:                       return .white
           case .rugby:                        return .red
           case .running:                      return .green
           case .sailing:                      return .blue
           case .skatingSports:                return .purple
           case .snowSports:                   return .orange
           case .soccer:                       return .yellow
           case .softball:                     return .cyan
           case .squash:                       return .cyan
           case .stairClimbing:                return .brown
           case .surfingSports:                return .indigo
           case .swimming:                     return .teal
           case .tableTennis:                  return .pink
           case .tennis:                       return .mint
           case .trackAndField:                return .cyan
           case .traditionalStrengthTraining:  return .gray
           case .volleyball:                   return .black
           case .walking:                      return .white
           case .waterFitness:                 return .red
           case .waterPolo:                    return .green
           case .waterSports:                  return .blue
           case .wrestling:                    return .purple
           case .yoga:                         return .orange

           // iOS 10
           case .barre:                        return .yellow
           case .coreTraining:                 return .cyan
           case .crossCountrySkiing:           return .cyan
           case .downhillSkiing:               return .brown
           case .flexibility:                  return .indigo
           case .highIntensityIntervalTraining:return .teal
           case .jumpRope:                     return .pink
           case .kickboxing:                   return .mint
           case .pilates:                      return .cyan
           case .snowboarding:                 return .gray
           case .stairs:                       return .black
           case .stepTraining:                 return .white
           case .wheelchairWalkPace:           return .red
           case .wheelchairRunPace:            return .green

           // iOS 11
           case .taiChi:                       return .blue
           case .mixedCardio:                  return .purple
           case .handCycling:                  return .orange

           // iOS 13
           case .discSports:                   return .yellow
           case .fitnessGaming:                return .cyan

           // Catch-all
           default:                            return .gray
           }
       }
    
    
}
