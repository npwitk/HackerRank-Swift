import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
    return grades.map { grade in
        // Failing grades are not rounded
        if grade < 38 {
            return grade
        }

        // Find the next multiple of 5
        let nextMultiple = ((grade / 5) + 1) * 5

        // Round if the difference is less than 3
        if nextMultiple - grade < 3 {
            return nextMultiple
        }

        return grade
    }
}

