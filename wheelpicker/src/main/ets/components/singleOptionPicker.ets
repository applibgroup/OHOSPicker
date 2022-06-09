@CustomDialog
export struct SingleOptionDialog {
  controller: CustomDialogController
  @State model: SingleOptionDialog.Model = new SingleOptionDialog.Model();
  cancel: () => void
  confirm: () => void
  select: number = 1
  options: string[] = this.model.options
  selectedValue: string = this.model.selectedValue
  leftButtonString: string = this.model.leftButtonString
  leftButtonBgColor: number = this.model.leftButtonBgColor
  leftButtonTextColor: string = this.model.leftButtonTextColor
  rightButtonString: string =  this.model.rightButtonString
  rightButtonBgColor: number = this.model.rightButtonBgColor
  rightButtonTextColor: string = this.model.rightButtonTextColor
  pickerTitle: string = this.model.pickerTitle
  pickerTitleFontSize: string = this.model.pickerTitleFontSize
  pickerHeight: string = this.model.pickerHeight


  build() {
    Column() {

      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button(this.leftButtonString ? this.leftButtonString : $r("app.string.cancel") )
          .onClick(() => {
            this.controller.close()
            this.cancel()
          }).backgroundColor(this.leftButtonBgColor ? this.leftButtonBgColor : 0xffffff ).fontColor(this.leftButtonTextColor ? this.leftButtonTextColor : "#171717" )
        Text(this.pickerTitle ? this.pickerTitle : $r("app.string.title") ).fontSize(this.pickerTitleFontSize ? this.pickerTitleFontSize : "20FP" ).padding({top: "12VP"})
        Button(this.rightButtonString ? this.rightButtonString : $r("app.string.ok") )
          .onClick(() => {
            this.controller.close()
            this.confirm()
          }).backgroundColor(this.rightButtonBgColor ? this.rightButtonBgColor : 0xffffff ).fontColor(this.rightButtonTextColor ? this.rightButtonTextColor : "#171717" )
      }.margin({ bottom: 10 })

      TextPicker({range: this.options ? this.options : ["try"] , selected: this.select}).height(this.pickerHeight ? this.pickerHeight : "200VP" ).onChange((value: string) => {
        this.selectedValue = value
      })
    }
  }
}
export namespace SingleOptionDialog {
  export class Model {
    options: string[]
    height: number
    selectedValue: string
    leftButtonString: string
    rightButtonString: string
    pickerTitle: string
    pickerTitleFontSize: string
    leftButtonBgColor: number
    leftButtonTextColor: string
    rightButtonBgColor: number
    rightButtonTextColor: string
    pickerHeight: string


    reset() : Model {
      this.options = null
      this.height = 0

      return this
    }

    setScrollHeight(height: number): Model {
      this.height = height
      return this
    }
  }
}