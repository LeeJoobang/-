### 1. 오늘 할일 

###### Container ViewViewController 연결하기(사진액자 앱 1주차)

- [ ] 사진액자 - ViewController 요구사항을 구현한 상태로 시작한다.
- [ ] 네비게이션 컨트롤러(Navigation Controller)를 Embed 시켜서 동작하도록 개선한다.
- [ ] 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

------

### 2. 학습키워드 

- ViewController Container
- Parent ViewController
- Child ViewController
- NavigationController
- TabBarController

------

### 3. 학습내용 

#### 시계앱(예시) 

- View Controller 전환시 중요한 2가지 요소 : NavigationController, TabBarController
- NavigationController(컨테이너) 
  - 특징
    - 대표적인 앱 : 아이폰 설정앱
    - 시계앱의 상단에 있는 부분이 네비게이션 바에 해당함. 
    - 제목을 보여줌. 
    - 다음화면으로 넘어가는 것을 보여줌
    - 여러 뷰 컨트롤러를 컨테이너로 선택하도록 함
    - 계속해서 뷰 컨트롤러가 쌓이는 구조
  - 고려사항
    - 컨테이너(부모)와 자식들의 역할 및 갯수를 어떻게 설정할까?
- TabBarController
  - 특징
    - 시계앱 하단에 위치함
    - 아이콘들이 나란히 있어 이 아이콘이 누르면 해당하는 화면으로 나타나게 됨
- 계층적 구분
  - 윈도우 > TapBar view(각각 다른 View Controller임) > Navigation view(각각 다른 View Controller임) > Content

#### View Controller 기초용어

###### root view controller 와 Master / Detail viewController 관계

(이미지 삽입)

<img src="https://user-images.githubusercontent.com/84652513/154638173-1383dc15-6fe6-4234-b241-8af0eb246237.png" width="500" height="500"/>

#### View Controller Containers

- 하위컨트롤러 추가/삭제

  - addChilde(_:)
  - removeFromParent()

- 하위컨트롤러 접근

  - var childern: [UIViewController]

- 하위 콜백

  - willMove(toParent:)
  - didMove(toParent:)

- VC 계층과  View 계층 추가할 때

  ```swift
  private func frameForContent() -> CGRect {
    return self.view.bounds
  }
  
  func displayContent(controller: UIViewController) {
    self.addChild(controller)
    self.view.addSubview(controller.view)
    controller.view.frame = self.frameForContent()
    controller.didMove(toParent: sel)
  }
  ```

- VC 계층과  View 계층 삭제할 떄

  ```swift
  func hideContent(controller: UIViewController){
    controller.willMove(toParent: nil)
    controller.view.removeFromSuperview()
    controller.removeFrameParent()
  }
  ```

- 자식 컨트롤러 사이 전환

  ```swift
  self.addChildViewController(note)
  self.transition(from: recipe, to: note, duration: 3, option: .transtionFlipFromRight, animations: nil) { (finished) in note.didMove(toParentViewController: self)}
  
  ```

  

------

###  4. 고민과 해결

- 

------

###  5. 회고  

- 

------

###  6. 참조링크

- 