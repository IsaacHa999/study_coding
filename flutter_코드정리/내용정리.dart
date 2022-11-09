/// 조건문

void main() {
  int age = 101; // 값을 바꿔가며 어디가 실행되는지 확인해보세요.
  
  print('시작');
  
  if (age == 20) {
    print("20살 입니다.");
  } else if (age == 10) {
    print("20살은 아니고, 10살 입니다.");
  } else {
    print("20살도 아니고, 10살도 아닙니다.");
  }
  
  print('종료');
}

//------------------------------------------------------------
/// 반복문

void main() {
  // 과일 5개가 들어있는 배열의 내용을 모두 출력하려면 5번 print를 사용해야 합니다.
  List<String> fruits = ["딸기", "감", "배", "사과", "바나나"];
  print(fruits[0]);
  print(fruits[1]);
  print(fruits[2]);
  print(fruits[3]);
  print(fruits[4]);
  

  print("---- 반복문 ----");
  print("fruits.length : ${fruits.length}"); // 전체 배열의 개수

  // 반복문을 사용하면 과일의 개수에 상관없이 3줄만 입력하면 됩니다.
  for (int i = 0; i < fruits.length; i++) {
    print("$i : ${fruits[i]}"); // i가 0부터 fruits.length - 1까지로 변합니다.
  }
  
  
  print("---- for in 문 ----");
  
  // 참고로 for in문이라 불리는 다른 형태의 반복문도 있습니다.
  for (String name in fruits) {
    print(name); // fruits 배열의 원소를 차례대로 꺼냅니다.
  }
}


//-----------------------------------------------------------------------
/// 함수의 입력1

void main() {
 say("철수");
}

void say(String person) {
  print(person + "야 안녕?"); // 철수야 안녕?
}

/// 함수2

void main() {
 say("영희", "철수야 안녕?");
}

void say(String from, String message) {
  print("$from : $message"); // 영희 : 철수야 안녕?
}


/// 함수3

void main() {
  say(from: "영희"); // 전달시 변수명을 적어줍니다.
  say(); // 전달하지 않을 수 있습니다.
}

// 소괄호 안쪽이 중괄호로 감싸진 경우 = Named Parameter
void say({String? from}) {
  print("$from : 안녕?");
}


/// 함수4

void main() {
  say(from: "영희"); // 전달시 변수명을 적어줍니다.
}

// required 키워드가 있는 경우, 호출시 필수로 전달해야 합니다.
void say({required String from}) {
  print("$from : 안녕?");
}


/// 함수5

void main() {
  say(from: "영희");
  say(from: "영희", message: "안녕?");
  say(message: "안녕?", from: "영희"); // 이름을 지정하기 때문에 순서 상관이 전달 가능합니다.
}

void say({required String from, String? message}) {
  print("$from : $message");
}


//----------------------------------------------------------------------------
/// 함수의 출력1
void main() {
  String name = getName();
  print(name);
}

String getName() {
  return "철수";
}


/// 함수의 출력2
void main() {
  String name = getName();
  print(name);
}

// "철수"를 return하는 함수를 화살표 함수를 써서 짧게 축약할 수 있습니다.
String getName() => "철수";


/// 힘수의 출력3
void main() {
  String bread = getBread("팥");
  print(bread);
}

String getBread(String material) {
  return material + "빵";
}


//------------------------------------------------------------------------------
/// 클래스

void main() {
  // 인스턴스(instance) 만들기
  Bread bread1 = Bread('팥'); // 클래스의 생성자를 호출하여 인스턴스(instance)를 만듭니다.
  Bread bread2 = Bread('크림');
  
  // 속성 호출
  print(bread1.content); // 팥
  print(bread2.content); // 크림
  
  // 메소드 호출
  print(bread1.getDescription()); // 맛있는 팥빵입니다.
  print(bread2.getDescription()); // 맛있는 크림빵입니다.
}

class Bread {
  String? content; // 클래스 속 변수를 속성(property)라고 부릅니다.
  
  Bread(String core) { // 클래스명과 동일한 이 함수를 생성자(constructor)라고 부릅니다.
    content = core;
  }
  
  String getDescription() { // 클래스 속 함수를 메소드(method)라고 부릅니다.
    return "맛있는 $content빵입니다.";
  }
}


/// 상속

void main() {
  Bread bread = Bread();
  Cookie cookie = Cookie();
  
  print(bread.madeBy); // TousLesJours
  print(cookie.madeBy); // TousLesJours
}

// 빵 : TousLesJours를 상속받음(=변수와 함수를 그대로 전달받음)
class Bread extends TousLesJours {
 
}

// 쿠키 : TousLesJours를 상속받음(=변수와 함수를 그대로 전달받음)
class Cookie extends TousLesJours {
  
}

// 뚜레쥬르
class TousLesJours {
  String madeBy = "TousLesJours";
}