import Foundation

func spacer() -> () {
    return print("\n---------\n")
}

// MARK: - Strings - Remove Duplicates letters from a string using for loop
func removeDuplicateLettersUsingForLoop(_ inputString: String) -> String {
    var used = [Character]()
    
    for char in inputString {
        if !used.contains(char) {
            used.append(char)
        }
    }
    return String(used)
}

print(removeDuplicateLettersUsingForLoop("Hello"))
spacer()


// MARK: - Strings - Remove Duplicates letters from a string using NSOrderedSet
func removeDuplicateLettersUsingNSOrderedSet(_ inputString: String) -> String {
    let array = inputString.map{ String($0) }
    let set = NSOrderedSet(array: array)
    let letters = Array(set) as! Array<String>
    return letters.joined()
}

print(removeDuplicateLettersUsingNSOrderedSet("Nitin"))
spacer()

// MARK: - Strings - Remove Duplicates letters from a string using Filter Method
func removeDuplicateLettersUsingFilterMethod(_ inputString: String) -> String {
    var used = [Character: Bool]()
    
    
    let result = inputString.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    
    return String(result)
}St


print(removeDuplicateLettersUsingFilterMethod("Sara"))
spacer()
