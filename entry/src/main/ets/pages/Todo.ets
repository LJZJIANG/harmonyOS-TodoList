import router from '@ohos.router'
import TodoItem from '../view/TodoItem'
import viewModal,{IData} from '../viewData/viewModal'
let title = router.getParams()?router.getParams()['title']:'默认标题';
@Entry
@Component
struct Todo {
  @State @Watch('listChange') list:Array<IData>  = [];

  onPageShow(){
    this.list = viewModal.getData()
  }

  listChange(){
    console.log('list数据发生了改变')
  }


  build() {
    Column() {
      Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
        Text(title)
          .fontSize(30)
          .fontWeight('bold')
          .margin({ bottom: 10 })
        Divider()
          .margin(10)
        ForEach(this.list,(item:IData)=>{
          TodoItem({ content: item.content })
            .margin({bottom:10})
        },item=>item.id)
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#cccccc')

  }
}