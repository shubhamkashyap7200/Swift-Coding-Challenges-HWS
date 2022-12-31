import Foundation

func spacer() -> () {
    return print("\n---------\n")
}

// MARK: - Is String a Palindrome using inbuilt functions
func isStringAPalindromeUsingInBuiltFunctions(_ inputString: String) -> Bool {
    return inputString.lowercased() == String(inputString.lowercased().reversed())
}

print(isStringAPalindromeUsingInBuiltFunctions("Rats live on no evil star"))
print(isStringAPalindromeUsingInBuiltFunctions("rotator"))
print(isStringAPalindromeUsingInBuiltFunctions("Never odd or even"))
spacer()


