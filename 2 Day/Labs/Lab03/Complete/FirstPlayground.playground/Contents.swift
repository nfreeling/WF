print("Hello Swift")

func doMath(a:Int, _ b:Int) -> (sum:Int, message:String) {
    let s = a + b
    return (sum: s, message: "The sum of \(a) and \(b) is \(s)")
}

let r = doMath(3, 4)
print(r.sum)
print(r.message)