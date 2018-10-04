// Q1
func reverseString (_ str:String) -> String {
    
    var result = [String]()
    
    let strArray = str.split(separator: " ")
    
    for word in strArray{
        let charArray = Array(word)
        let length = charArray.count
        
        for index in (0...length-1).reversed(){
            let char = String(charArray[index])
            result.append(char)
        }
        if strArray.count > 1{
            result.append(" ")
        }
    }
    
    return result.joined()
}
let str = "flipped class room is important"
print(reverseString(str))

// Q2
func number (_ input: Int) -> Int {
    
    var numberArray = [Int](1...input)
    for number in numberArray{
        if (number % 3 == 0 && number % 5 == 0){
            
        }
        else if (number % 3 == 0 || number % 5 == 0){
            let index = numberArray.index(of: number)
            numberArray.remove(at: index!)
        }
    }
    return numberArray.count
}
print(number(15))



