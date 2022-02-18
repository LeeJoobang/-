
### 1. 오늘 할일 

###### ViewController 연결하기(사진액자 앱 1주차)

- [x] 사진액자 - Scene과 Segue 요구사항을 구현한 상태로 시작한다.
- [x] 스토리보드 구성 요소와 클래스 코드와 연결해서 동작을 확장한다.
- [x] 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

------

### 2. 학습키워드 

- ViewController
- View LifeCycle

------

### 3. 학습내용 

##### - ViewController?

- 역할
  - 주요한 데이터의 변화에 응답으로 뷰들의 컨텐츠를 업데이트
  - 뷰들과 함께 사용자 지시에 응답함(이벤트 핸들링)
  - 뷰들의 사이즈 재조정과 전반적인 인터페이스의 레이아웃을 관리
- 타입
  - Content View Controller
    - 앱의 컨텐츠 일부분을 관리
    - 자신의 모든 뷰를 스스로 관리
  - Container View Controller
    - 다른 View Controller의 정보를 모음
    - 자신과 자식의 View Controller의 Root View를 관리한다.(크기, 위치 조절에 한함)

##### - View LifeCycle?

- 특징
  - 뷰 컨트롤러에는 생명주기가 존재함.(하단 그림 참조)
  - 이에 전환이 존재하며 이전 View Controller의 View가 유지되거나 그렇지 않은 경우가 있음.
  - 그렇기 때문에 해당시점을 이벤트화함으로써 그 시점에 해야할 동작을 지정한다.
- 종류
  - viewDidLoad()
    - ViewController의 var view: UIView! 프로퍼티는 지연로딩된다.
    - loadView() **직후** 호출되는 콜백메소드
  - viewWillAppear()
    - root view가 로드된 이후 windows의 뷰 계층으로 **더해지기 직 전** 메소드
  - viewDidAppear()
    - root view가 로드된 이후 windows의 뷰 계층으로 **더해진 직 후** 메소드
  - viewWillDisAppear()
    - root view가 로드된 이후 windows의 뷰 계층에서 **제거되기 직 전** 메소드
  - viewDidDisAppear()
    - root view가 로드된 이후 windows의 뷰 계층에서 **제거된 직 후** 메소드
- 이미지 설명

<img src="https://user-images.githubusercontent.com/84652513/154609964-6a13ac22-290d-40ef-8646-d5433b0b6ba4.png  width="200" height="400"/>



###  4. 고민과 해결

- 스토리보드를 활용하여 해당 

------

###  5. 회고  

- TIL 첫시간이다. 구체적으로 무엇을 적을지 고민을 많이 했음.
- 수행한 과제에 대한 README에 작성한 것을 동일하게 적는 과정인 것 같아 구분하여 작업하는 것에 고민했음.
- 어떤 방향으로 작성할지 생각할 수 있었음.

------

###  6. 참조링크

- 깃 연습링크 (https://learngitbranching.js.org/?locale=ko)
- ViewController, ViewLifeCycle(https://o-o-wl.tistory.com/43)
