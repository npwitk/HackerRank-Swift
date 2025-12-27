import Foundation

func designerPdfViewer(h: [Int], word: String) -> Int {
    let wordArray = Array(word)
    var maxHeightInWord = 0
    
    for ch in wordArray {
        maxHeightInWord = max(maxHeightInWord, h[Int(ch.asciiValue! - Character("a").asciiValue!)])
    }
    
    return maxHeightInWord * word.count
}

// Better
func designerPdfViewer2(h: [Int], word: String) -> Int {
    let maxHeight = word
        .compactMap { $0.asciiValue }
        .map { h[Int($0 - 97)] }   // 'a' = 97
        .max() ?? 0

    return maxHeight * word.count
}

