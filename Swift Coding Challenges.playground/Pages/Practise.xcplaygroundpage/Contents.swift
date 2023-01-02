import Foundation

//Question 1
func areLetterUnique(_ inputString: String) -> Bool {
    return Set(inputString).count == inputString.count
}

func areLetterUnique2(_ inputString: String) -> Bool {
    var userLetter = [Character]()
    
    for letter in inputString {
        if userLetter.contains(letter) {
            return false
        }
        
        userLetter.append(letter)
    }
    
    return true
}

areLetterUnique("Helo")
areLetterUnique2("Hello")

func isPalindrome(_ inputString: String) -> Bool {
    return inputString.lowercased() == String(inputString.lowercased().reversed())
}

isPalindrome("Heh")
isPalindrome("Hello")

extension String {
    func reverseString() -> String {
        var str = ""
        
        for char in self {
            str = "\(char)" + str
        }
        return str
    }
}

func isPalindrome2(_ inputString: String) -> Bool {
    return inputString.lowercased() == inputString.lowercased().reverseString()
}

isPalindrome2("Heh")


func containsSameChars(_ inpStr1: String, _ inpStr2: String) -> Bool {
    var checkString = inpStr2
    
    for char in inpStr1 {
        if let index = checkString.firstIndex(of: char) {
            checkString.remove(at: index)
        } else {
            return false
        }
    }
    
    return checkString.count == 0
}

containsSameChars("Hee", "eHe")
