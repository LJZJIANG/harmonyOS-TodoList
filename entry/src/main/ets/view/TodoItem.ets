@Component
export  default  struct  TodoItem{
  private content?:string
  @State isSelect:boolean  = false;

  build(){
    Row({space:10}){
      if(this.isSelect){
        Image($r('app.media.todo_ok'))
          .TodoItem_img()
      }else{
        Image($r('app.media.todo_default'))
          .TodoItem_img()
      }
      Text(this.content)
        .decoration({type:this.isSelect? TextDecorationType.LineThrough:TextDecorationType.None})
        .opacity(this.isSelect?0.5:1)
    }
    .TodoItem_Row()
    .onClick(()=>{
      this.isSelect = !this.isSelect;
    })
  }
}

@Extend(Image) function TodoItem_img(){
  .width(30)
  .height(30)
  .margin(20)
  .objectFit(ImageFit.Contain)
}

@Extend(Row) function  TodoItem_Row(){
  .width('80%')
  .height(50)
  .backgroundColor(Color.White)
  .borderRadius(25)
}