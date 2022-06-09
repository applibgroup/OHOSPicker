# Wheel Picker

This library is developed to provide different types of wheel pickers implemented using extended typescript.

## Installation
```
npm install @ohos/libwheelpicker --save
```

## Instructions for use

### Displaying of images can be circular or oval.
You need to import the wheelpickers as per your choice like the following:
```ets
import {SingleOptionDialog, TimeSelection12, TimeSelection24, MonthDayDialog, YearMonthDialog, YearMonthDayDialog, YearMonthDayTimeDialog, BirthdayDialog } from "@ohos/wheelpicker"
```
##### For Single Option Picker
Initialize the model data

```
model: SingleOptionDialog.Model= new SingleOptionDialog.Model();
```
Call the picker dialog
```
    IntegerDialogController: CustomDialogController = new CustomDialogController({
    builder: SingleOptionDialog({
        model: this.IntegerDialog,
        options: this.integerOptions,
        selectedValue: this.selectedValue, 
        leftButtonString: this.leftButtonString, 
        leftButtonBgColor: this.leftButtonBgColor, 
        leftButtonTextColor: this.leftButtonTextColor, 
        rightButtonString: this.rightButtonString,
        rightButtonBgColor: this.rightButtonBgColor, 
        rightButtonTextColor: this.rightButtonTextColor, 
        pickerTitle: this.pickerTitle,
        pickerTitleFontSize: this.pickerTitleFontSize,
        pickerHeight: this.pickerHeight,
        cancel: this.onCancel,
        confirm: this.onIntegerAccept 
    }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

```
##### For IntegerDialog Picker

Initialize the model data
```
Integermodel: IntegerDialog.Model= new IntegerDialog.Model();
```


## Interface Description
``
Integermodel: SingleOptionDialog.Model= new SingleOptionDialog.Model();
``

``
Birthdaymodel: BirthdayDialog.Model = new BirthdayDialog.Model();
``

``
TimeSelection24model: TimeSelection24.Model = new TimeSelection24.Model();
``

``
TimeSelection12model: TimeSelection12.Model = new TimeSelection12.Model();
``

``
MonthDayDialogmodel: MonthDayDialog.Model = new MonthDayDialog.Model();
``

``
YearMonthDialogmodel: YearMonthDialog.Model = new YearMonthDialog.Model();
``

``
YearMonthDayDialogmodel: YearMonthDayDialog.Model = new YearMonthDayDialog.Model();
``

``
YearMonthDayTimeDialogmodel: YearMonthDayTimeDialog.Model = new YearMonthDayTimeDialog.Model();
``

## Directory Structure
````
|---- WheelPicker
|     |---- wheelpicker  #wheel picker library
|           |---- src
                    |---- main
                        |---- ets
                            |---- components
                                |---- birthdayPicker.ets
                                |---- monthDayPicker.ets
                                |---- singleOptionPicker.ets
                                |---- time12Picker.ets
                                |---- time24Picker.ets
                                |---- yearMonthDayPicker.ets
                                |---- yearMonthDayTimePicker.ets
                                |---- yearMonthPicker.ets
|                 
|     |---- entry  #Sample Code Folder
|           |---- src
|                 |---- main
|                       |---- ets
|                           |---- MainAbility
|                               |---- pages 
|                                   |---- index..ets  
````
## Compatibility
Supports OpenHarmony API version 8

## Code Contribution
If you find any problems during usage, you can submit an [Issue](https://github.com/applibgroup/OHOSPicker/issues) to us. Of course, we also welcome you to send us [PR](https://github.com/applibgroup/OHOSPicker/pulls).
Please enjoy and participate in open source freely.

## Open Source License

Licensed under [Apache-2.0 license](LICENSE)

## Reference:

Design by : Susanto Mahato