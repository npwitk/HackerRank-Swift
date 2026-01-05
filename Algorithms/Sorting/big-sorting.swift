import Foundation

func bigSorting(unsorted: [String]) -> [String] {
    return unsorted.sorted {
        if $0.count != $1.count {
            return $0.count < $1.count
        }
        return $0 < $1
    }
}

