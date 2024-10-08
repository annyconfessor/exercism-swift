// higher order functions
// func types as return types
func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func secretFunction(realPassword: String) -> String {
    if realPassword == password {
      return secret
    } else {
      return "Sorry. No hidden secrets here."
    }
  }
  return secretFunction
}

// escaping functions
func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let firstNumber = f
  let secondNumber = firstNumber
  let thirdNumber = secondNumber

  let first: Int = firstNumber(room)
  let second: Int = secondNumber(first)
  let third: Int = thirdNumber(second)
  return (first, second, third)
}