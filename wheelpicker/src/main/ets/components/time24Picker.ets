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
export struct TimeSelection24 {
  controller: CustomDialogController
  @State model: TimeSelection24.Model = new TimeSelection24.Model();
  cancel: () => void
  confirm: () => void
  @State select: number = 1
  hour: string[] = this.model.hour
  minutes: string[] = this.model.minutes
  seconds: string[] = this.model.seconds
  selectedHour: string = this.model.selectedHour
  selectedMinutes: string = this.model.selectedMinutes
  selectedSecond: string = this.model.selectedSecond

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
        Text(this.pickerTitle ? this.pickerTitle : $r("app.string.title")).fontSize(this.pickerTitleFontSize ? this.pickerTitleFontSize : "20FP" ).padding({top: "12VP"})
        Button(this.rightButtonString ? this.rightButtonString : $r("app.string.ok") )
          .onClick(() => {
            this.controller.close()
            this.confirm()
          }).backgroundColor(this.rightButtonBgColor ? this.rightButtonBgColor : 0xffffff ).fontColor(this.rightButtonTextColor ? this.rightButtonTextColor : "#171717" )
      }.margin({ bottom: "10VP" })

      Flex({ justifyContent: FlexAlign.Center,  alignItems: ItemAlign.Center }) {
        TextPicker({ range: this.hour ? this.hour : ["00"], selected: this.select })
          .width(this.firstPickerWidth  ? this.firstPickerWidth : "80VP" )
          .height(this.pickerHeight ? this.pickerHeight : "200VP" )
          .onChange((value: string) => {
            this.selectedHour = value
          })
        Text("hr").fontSize("20FP")
        TextPicker({ range: this.minutes ? this.minutes : ["00"], selected: this.select })
          .width(this.secondPickerWidth  ? this.secondPickerWidth : "80VP" )
          .height(this.pickerHeight ? this.pickerHeight : "200VP" )
          .onChange((value: string) => {
            this.selectedMinutes = value
          })
        Text("min").fontSize("20FP")
        TextPicker({ range: this.seconds ? this.seconds : ["00"], selected: this.select })
          .width(this.thirdPickerWidth  ? this.thirdPickerWidth : "80VP" )
          .height(this.pickerHeight ? this.pickerHeight : "200VP" )
          .onChange((value: string) => {
            this.selectedSecond = value
          })
        Text("sec").fontSize("20FP")
      }
    }
  }
}
export namespace TimeSelection24 {
  export class Model {
    height: number
    hour: string[]
    minutes: string[]
    seconds: string[]
    selectedHour: string
    selectedMinutes: string
    selectedSecond: string

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