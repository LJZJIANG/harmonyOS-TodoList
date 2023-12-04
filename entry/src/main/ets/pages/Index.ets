import router from '@ohos.router'
@Entry
@Component
struct Index {
  build() {
    Row() {
      Column() {
        Button('查看今日代办')
          .type(ButtonType.Circle)
          .width(150)
          .onClick(()=>{
            router.pushUrl({
              url:'pages/Todo',
              params:{
                title:'代办事项'
              }
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}