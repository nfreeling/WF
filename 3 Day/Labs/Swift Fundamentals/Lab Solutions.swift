//
// Solution 1
//

var count = 0, v = 0, p1 = 0, p2 = 0
while count < 10 {
    switch count {
    case 0:
        v = 0
    case 1:
        v = 1
    default:
        v = p1 + p2
    }
    print(v)
    p2 = p1
    p1 = v
    count += 1
}

//
// Solution 2
//

var v = 0, p1 = 0, p2 = 0
for n in 1...10 {
    if n == 1 {
        v = 0
    } else if n == 2 {
        v = 1
    } else {
        v = p1 + p2
    }
    print(v)
    p2 = p1
    p1 = v
}