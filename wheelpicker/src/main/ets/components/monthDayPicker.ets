/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

@CustomDialog
export struct MonthDayDialog {
  controller: CustomDialogController
  @State model: MonthDayDialog.Model = new MonthDayDialog.Model();
  cancel: () => void
  confirm: () => void
  @State monthSelect: number = 1
  @State daySelect: number = 1
  month: string[] = this.model.month
  day: string[] = this.model.day
  selectedMonth: string = this.model.selectedMonth
  selectedDay: string = this.model.selectedDay

  leftButtonString: string = this.model.leftButtonString
  leftButtonBgColor: number = this.model.leftButtonBgColor
  leftButtonTextColor: string = this.model.leftButtonTextColor
  rightButtonString: string =  this.model.rightButtonString
  rightButtonBgColor: number = this.model.rightButtonBgColor
  rightButtonTextColor: string = this.model.rightButtonTextColor
  pickerTitle: string = this.model.pickerTitle
  pickerTitleFontSize: string = this.model.pickerTitleFontSize
  pickerHeight: string = this.model.pickerHeight
  firstPickerWidth: string = this.model.firstPickerWidth
  secondPickerWidth: string = this.model.secondPickerWidth
  thirdPickerWidth: string = this.model.thirdPickerWidth
  fourthPickerWidth: string = this.model.fourthPickerWidth
  fifthPickerWidth: string = this.model.fifthPickerWidth

  build() {
    Column() {

      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button(this.leftButtonString ? this.leftButtonString : $r("app.string.cancel"))
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
      }.margin({ bottom: "10VP" })

      Flex({ justifyContent: FlexAlign.Center,  alignItems: ItemAlign.Center }) {
        TextPicker({ range: this.month ? this.month : [], selected: this.monthSelect })
          .width(this.firstPickerWidth ? this.firstPickerWidth : "80VP" )
          .height(this.pickerHeight ? this.pickerHeight : "200VP" )
          .onChange((value: string, index: number) => {
            this.selectedMonth = value
            this.monthSelect = index
          })

        TextPicker({ range: this.day ? this.day : [], selected: this.daySelect })
          .width(this.secondPickerWidth  ? this.secondPickerWidth : "80VP" )
          .height(this.pickerHeight ? this.pickerHeight : "200VP" )
          .onChange((value: string, index: number) => {
            if(this.monthSelect === 1){
              this.day = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28"]
            }else if(this.monthSelect === 0 || this.monthSelect === 2 || this.monthSelect === 4 || this.monthSelect === 6 || this.monthSelect === 7 || this.monthSelect === 9 || this.monthSelect === 11) {
              this.day = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"]
            } else {
              this.day = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"]
            }
            this.selectedDay = value
            this.daySelect = index
          })

      }
    }
  }
}
export namespace MonthDayDialog {
  export class Model {
    height: number
    monthSelect: number
    daySelect: number
    month: string[]
    day: string[]
    selectedMonth: string
    selectedDay: string

    leftButtonString: string
    rightButtonString: string
    pickerTitle: string
    pickerTitleFontSize: string
    leftButtonBgColor: number
    leftButtonTextColor: string
    rightButtonBgColor: number
    rightButtonTextColor: string
    pickerHeight: string

    firstPickerWidth: string
    secondPickerWidth: string
    thirdPickerWidth: string
    fourthPickerWidth: string
    fifthPickerWidth: string


    reset() : Model {
      this.height = 0
      return this
    }

    setScrollHeight(height: number): Model {
      this.height = height
      return this
    }
  }
}
