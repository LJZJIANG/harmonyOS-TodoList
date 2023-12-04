class ViewModal {
  private data:Array<IData> = [
    {
      id: 1,
      content: '学习鸿蒙开发语言',
    },
    {
      id: 2,
      content: '完成TodoList功能开发',
    },
    {
      id: 3,
      content: '完成APP开发',
    },
    {
      id: 4,
      content: '精通鸿蒙',
    }
  ]

  public  getData(){
    return this.data
  }
}
let viewModal = new ViewModal();

export interface  IData{
  id:number,
  content:string
}
export default viewModal