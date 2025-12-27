import Foundation

func breakingRecords(scores: [Int]) -> [Int] {
    var maximumScore = scores[0]
    var minimumScore = scores[0]
    
    var maximumChange = 0
    var minimumChange = 0
    
    for i in 0..<scores.count {
        if scores[i] > maximumScore {
            maximumScore = max(maximumScore, scores[i])
            maximumChange += 1
        }
        
        if scores[i] < minimumScore {
            minimumScore = min(minimumScore, scores[i])
            minimumChange += 1
        }
    }
    
    return [maximumChange, minimumChange]
}

