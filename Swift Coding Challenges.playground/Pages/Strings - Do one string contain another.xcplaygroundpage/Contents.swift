import Foundation

func spacer() -> () {
    return print("\n---------\n")
}

// MARK: - Strings - Do one string contain another using Range method
extension String {
    // MARK: - Custom functions
    func customContainsUsingRange(_ inputString: String) -> Bool {
        return self.lowercased().range(of: inputString.lowercased()) != nil
    }
}

print("Hello World".customContainsUsingRange("he"))
print("Hello World".customContainsUsingRange("WORLD"))
print("Hello World".customContainsUsingRange("I"))

// MARK: - Strings - Do one string contain another using Range method
extension String {
    // MARK: - Custom functions
    func customContainsUsingRangeCase(_ inputString: String) -> Bool {
        return range(of: inputString, options: .caseInsensitive) != nil
    }
}
