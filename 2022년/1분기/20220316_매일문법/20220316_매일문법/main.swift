//
//  main.swift
//  20220316_매일문법
//
//  Created by Joobang Lee on 2022/03/16.
//

import Foundation

print("Hello, World!")

var year: Int
year = 1999

print(year)

//변수 값 변경하기
var vValue = 3
vValue = 7
print(vValue)

//변수 선언 및 초기화
var intValue = 3
var strValue = "Hello world"

//값 변경 => 오류가 발생한다. 처음 상단에서 초기화시킨 int, str 타입에 맞지 않는 값으로 타입 변경이 이뤄졌기 때문에 오류 발생
//intValue = "안녕하세요"
//strValue = 100

//변수, 상수 이름
var str = "문자열"
var initInt34 = 37
var init_Int = 100

var 마스터 = "저자"
var ㅇㄹㅎㅎ = "루비페이퍼"
var ㅘㅓㅣㅏㅣㅓㅗ = "이것도 됨"

var ㅁㄴㅇㄹㅁ3 = "에에??"

//
var data:String = "hi" //타입에 대한 정의를 확인하는데 있어서 ctrl+cmd+j 누른 후 해당 타입 클릭

//선언과 초기화를 동시에
var day = 7
//선와 초기화 분리
var day2: Int
day2 = 1239

let hello: String = "Hello"
let yagom: String = "yagom"
var greeting: String = hello + " " + yagom

greeting = hello
print(greeting)

var isSameString: Bool = false
isSameString = hello == "Hello" // hello 와 "Hello"의 값이 true이기 때문에 그 값을 isSameString에 넣었다.
print(isSameString) //true

var hasPrefix: Bool = false
hasPrefix = hello.hasPrefix("He")//hasPrefix 접두어 함수다. 맨 앞글자에 뒤에 붙어 있는 글자가 있는지 확인할 수 있다./
print(hasPrefix) // true

hasPrefix = hello.hasPrefix("HE")
print(hasPrefix) // false

hasPrefix = hello.hasPrefix("Hello")
print(hasPrefix)

var hasSuffix: Bool = false // 접미어
hasSuffix = hello.hasSuffix("He")
print(hasSuffix) // false

hasSuffix = hello.hasSuffix("llo") // 접미어
print(hasSuffix) // true

var convertedString: String = ""
convertedString = hello.uppercased()
print(convertedString) //대문자 HELLO로 표시된다.

convertedString = hello.lowercased()
print(convertedString) // 소문자 hello로 표시된다.

var isEmptyString: Bool = false
isEmptyString = greeting.isEmpty // 빈배열인지 확인
print(greeting)
print(isEmptyString) // false greeting이 비어있지 않았기 때문에 false로 추출된다.

greeting = "안녕"
isEmptyString = greeting.isEmpty
print(isEmptyString)

greeting = ""
isEmptyString = greeting.isEmpty
print(isEmptyString) // true, 비어있으니까 트루가 된다.

print(greeting.count)// 0으로 확인된다.

greeting = "안녕하세요"
print(greeting.count)// 5

greeting = "안녕"
print(greeting.count)// 2

greeting = """
안녕하세요. 저는 주방입니다.
이것이 여러줄이 진짜 됩니까?
에에?
"""
print(greeting)

var person:(String, Int, Double) = ("hi", 4, 100.3)
print("이름:\(person.0), 나이:\(person.1), 키:\(person.2)") //튜플의 값을 부를 때는 array와 다르게 온점을 사용해서 각 번호의 값을 불러야 한다.

person.0 = "주방"
person.1 = 130
person.2 = 190.3
print("이름:\(person.0), 나이:\(person.1), 키:\(person.2)")
//수정된 값을 입력할 수 있다. 초기화된 값을 변경시켜 준다.

var person1:(name: String, age: Int, height: Double) = ("joo", 35, 174.2) // 변수명은 중복 정의되지 않는다.
print("이름:\(person1.name), 나이:\(person1.age), 키:\(person1.height)") // 튜플 요소에 대한 이름 역시 지정이 가능하다.

print(person1.1) // 순서에 대한 번호
print(person1.age) // 순서에 대한 이름 이 두가지 사용가능하다. 동일하게 35가 출력된다.

typealias PersonTuple = (name: String, age: Int, height: Double) // 타입을 재정의해서 만드는 것

var newTuple: PersonTuple = ("주방", 33, 120.3)
print(newTuple) // (name: "주방", age: 33, height: 120.3) 이처럼 상단에 정의된 이름까지 표시가 동일하게 된다.
print("이름: \(newTuple.name), 나이: \(newTuple.age), 키: \(newTuple.height)") //이름: 주방, 나이: 33, 키: 120.3 이렇게 표시가 되니 이 부분에 대한 고려 필요하다.


var names: Array<String> = ["joo", "chul", "shing", "ha"]
var names1: [String] = ["joo", "chul", "shing", "ha"]
var emptyArr: Array<String> = [] // 빈배열을 선언함.
var emptyArr1: Array<String> = Array<String>() // 빈배열 선언방법
print(emptyArr)
print(emptyArr1)
print(emptyArr.isEmpty)
print(names1.count)

print(names1[0]) // joo
names1[0] = "jenny"
print(names1[0]) // jenny

names.append("elsa")
print(names) // ["joo", "chul", "shing", "ha", "elsa"]
names.append(contentsOf: ["dale", "john"])
print(names) // ["joo", "chul", "shing", "ha", "elsa", "dale", "john"]
names.insert("oops", at: 5)
print(names) // ["joo", "chul", "shing", "ha", "elsa", "oops", "dale", "john"]

let firstName: String = names.removeFirst() // 제거 시킨 애를 리턴시킨다.
let lastName = names.removeLast()
print(firstName) // joo 제거 시킨 녀석을 뱉는다.
print(names) // ["chul", "shing", "ha", "elsa", "oops", "dale", "john"]
print(lastName) // john
let indexZero = names.remove(at: 0) // 인덱스 0번째 애를 제거 시킨다.
print(indexZero) // chul
let arrName = names[1...3] // 배열의 범위 만큼 출력할 수 있게 된다.
print(arrName)

// 배열에 접근할 수 있도록 하는 것을 서브스크립트라고 한다.

typealias StringIntDictionary = [String:Int] // string이 키값, int 가 밸류값

var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()
//빈 딕셔너리를 선언하였다.
var numberForName1 = [String:Int]() // 딕셔너리 초기화 자주 쓰는 표현
var numberForName2: StringIntDictionary = StringIntDictionary() // 이미 생성된 딕셔너리 타입을 초기화 해준다.
var numberForName3: [String:Int] = [:] // 딕셔너리 초기화 자주 쓰는 표현
var numberForName4: [String:Int] = ["yagom":100, "chulsoo":200, "joo":300]
print(numberForName4.isEmpty) // false - 비어있지 않기 때문
print(numberForName4.count) // 3개의 값 표시

print(numberForName4["yagom"]) // 옵셔널로 표시가 된다.
//if let number = numberForName4["yagom"] {
//    numberForName4["yagom"]
//    print(number)
//}
//guard let number = numberForName4["yagom"] else { return } // 매우 중요. 리턴한다는 것은 그 밑에 것을 처리하지 않고 빠져 나온다는 것을 의미한다. 더불어 위의 값은 클래스 내부에 속해있지 않아 오류가 발생하는 것으로 보이나 위의 방법 사용 가능하다.
//print(number)

numberForName4["max"] = 999 // 정렬된 상태로 값이 입력되지 않는다. 아...정렬을 할수는 있다.......
print(numberForName4)
print(numberForName4.removeValue(forKey: "joo"))// remove에 대한 관념을 바꿔야 한다. 삭제되고 나머지 값을 표시하는 것이 아니라, 삭제된 값을 표시한다.

var names3: Set<String> = Set<String>() // 빈세트 생성
// var names3: Set<String> = [] 동일한 표현 가능, 빈세트 생성
names3 = ["jee", "joo", "woo", "hoo", "jee"]

var numbers = [100, 200, 300]
print(type(of: numbers)) // 타입 추론시 Array Int 로 나온다.
print(names3.isEmpty)
print(names3.count) // 중복된 값은 들어가지 않는다.
names3.insert("john") // 존을 랜덤으로 삽입한다.
print(names3.remove("woo")) // remove를 했기 때문에 woo가 출력이 된다.
print(names3.remove("주바")) // 해당 영역이 없기 때문에 nil이 출력된다.
print(names3)


let englishClassStudents: Set<String> = ["john", "charlie", "hello"]
let koreanClassStudents: Set<String> = ["puu", "charlie", "hello", "kkk", "ooo"]
let intersectSet: Set<String> = englishClassStudents.intersection(koreanClassStudents)
print(intersectSet) // 교집합을 찾을 수 있음. ["hello", "charlie"]

let symmertricDiffSet: Set<String> = englishClassStudents.symmetricDifference(koreanClassStudents)
print(symmertricDiffSet) // 여집합을 찾을 수 있음. ["ooo", "john", "puu", "kkk"]

let unionSet: Set<String> = englishClassStudents.union(koreanClassStudents)
print(unionSet) // 합집합을 찾을 수 있음.

//let englishArr: Array<String> = ["1", "2", "3"]
//let koreaArr: Array<String> = ["1", "4", "5"]
//let intersectArr: Array<String> = englishArr.intersection(koreaArr)
// 해당 값이 적용되는지 살펴보니 array는 적용이 되지 않고 Set에서만 비교가 가능하다.

let birds: Set<String> = ["aaa", "bbb", "ccc"]
let pouu: Set<String> = ["fff", "eee", "ddd"]
let animals: Set<String> = birds.union(pouu)
print(animals)

print(birds.isDisjoint(with: pouu)) //서로 포함되는 항목이 없기 때문에 배타적이다.
print(birds.isSubset(of: animals)) // 새가 동물의 부분집합인가요?
print(animals.isSuperset(of: pouu)) // 동물은 포유류의 전체 집합인가요?
print(animals.isSuperset(of: birds)) // 동물은 새의 전체집합인가요?

var array: [Int] = [0, 1, 2, 3, 4]
var set: Set<Int> = [0, 1, 2, 3, 4]
var dictionary: [String:Int] = ["a":1, "b":2, "c":3]
var string: String = "string"

//print(array.randomElement())

let randomNumber = array.randomElement()
if let num = randomNumber {
    print(num)
}

func random() -> Int{
    var array: [Int] = [1, 2, 3, 4, 5]
    guard let number = array.randomElement() else{ // 고로 성립이 되었다. 랜덤값이 넘버에 담겼다.
        return 0 //성립되지 않으면 수행되는 리턴값
    }
    return number // 성립되면 수행되는 값
}
print(random())
