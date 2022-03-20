### 1. 오늘 할일 

###### 사진 앨범 선택하기(사진액자 앱 1주차)

- [x] 화면 요소들을 겹쳐서 디자인 하는 경우 z축으로 위-아래를 구분해서 표시한다.
- [x] 이미지 테두리 액자 화면을 추가한다.
- [x] 사진 앨범에서 사진을 가져와서 보여줄 수 있도록 개선한다.

------

### 2. 학습키워드 

- UIImagePickerController
- UIView zposition
- Alert View
- Photo Library

------

### 3. 학습내용 

- ###### UIImagePicker Controller

  - 사진을 찍고 동영상을 녹화하고 사용자의 미디어 라이브러리에서 항목을 선택하기 위한 시스템 인터페이스를 관리하는 보기 컨트롤입니다.

  ```swift
  @MainActor class UIImagePickerController : UINavigationController
  ```

- ###### 추가학습거리

  - 델리게이트(Delegate)와 프로토콜(Protocol) 상관관계에 대해 학습한다.
  - 프로토콜 채택
    - 프로토콜을 채택하고 사진이 선택, 취소될 때 어떤 행동을 할것인지 정의해주면 됨


------

###  4. 고민과 해결	 

- Delegate 관련 메소드에 대한 공부가 필요함.

------

###  5. 회고  

- 해당 과제에 대해 할 수 있는 정도가 적더라도 받아들이기

------

###  6. 참조링크

- https://zeddios.tistory.com/111
- https://jinshine.github.io/2018/07/06/iOS/UIImagePickerController%20%EC%98%88%EC%A0%9C/
- https://silver-g-0114.tistory.com/44
- https://raisonde.tistory.com/entry/UIView%EC%97%90-%EC%9E%88%EB%8A%94-%EB%B2%84%ED%8A%BC%EC%9D%B4-%ED%81%B4%EB%A6%AD%EC%9D%B4-%EC%95%88%EB%90%A0-%EB%95%8C