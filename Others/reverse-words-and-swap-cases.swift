import Foundation

func toggleCase(_ word: String) -> String {
    String(
        word.map { char in
            char.isLowercase
                ? Character(char.uppercased())
                : Character(char.lowercased())
        }
    )
}

print(toggleCase("RuNs"))


func reverse_words_order_and_swap_cases(sentence: String) -> String {
    return sentence.split(separator: " ").map { word in
        toggleCase(String(word))
    }.reversed().joined(separator: "")
}

print(reverse_words_order_and_swap_cases(sentence: "Hello From Amercica"))