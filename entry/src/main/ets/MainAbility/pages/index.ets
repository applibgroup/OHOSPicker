
import prompt from '@system.prompt';
import {SingleOptionDialog, TimeSelection12, TimeSelection24, MonthDayDialog, YearMonthDialog, YearMonthDayDialog, YearMonthDayTimeDialog, BirthdayDialog } from "@ohos/wheelpicker"

@Entry
@Component
struct CustomDialogUser {
  @State selectedValue: string = ""

  leftButtonString: string = "Cancel"
  leftButtonBgColor: number = 0xffffff
  leftButtonTextColor: string = "#22d3ee"
  rightButtonString: string = "Ok"
  rightButtonBgColor: number = 0xffffff
  rightButtonTextColor: string = "#22d3ee"
  pickerTitle: string = " "
  pickerTitleFontSize: string = "20FP"
  pickerHeight: string = "200VP"
  firstPickerWidth: string = "40VP"
  secondPickerWidth: string = "60VP"
  thirdPickerWidth: string = "80VP"
  fourthPickerWidth: string = "100VP"
  fifthPickerWidth: string = "120VP"

  integerOptions: string[] = ["140 cm", "145 cm","150 cm","155 cm","160 cm","165 cm","170 cm","175 cm","180 cm","185 cm","190 cm","195 cm","200 cm"]
  IntegerDialog: SingleOptionDialog.Model= new SingleOptionDialog.Model();
  IntegerDialogController: CustomDialogController = new CustomDialogController({
    builder: SingleOptionDialog({ model: this.IntegerDialog, options: this.integerOptions, selectedValue: this.selectedValue, leftButtonString: this.leftButtonString, leftButtonBgColor: this.leftButtonBgColor, leftButtonTextColor: this.leftButtonTextColor, rightButtonString: this.rightButtonString, rightButtonBgColor: this.rightButtonBgColor, rightButtonTextColor: this.rightButtonTextColor, pickerTitle: this.pickerTitle, pickerTitleFontSize: this.pickerTitleFontSize, pickerHeight: this.pickerHeight, cancel: this.onCancel, confirm: this.onIntegerAccept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })


  floatOptions: string[] = ["4.00","4.10","4.20","4.30","4.40","4.50","4.60","4.70","4.80","4.90","5.00","5.10","5.20","5.30","5.40","5.50","5.60","5.70","5.80","5.90","6.00"]
  Floatmodel: SingleOptionDialog.Model= new SingleOptionDialog.Model();
  floatDialogController: CustomDialogController = new CustomDialogController({
    builder: SingleOptionDialog({ model: this.Floatmodel, options: this.floatOptions, selectedValue: this.selectedValue,
      leftButtonString: this.leftButtonString, leftButtonBgColor: this.leftButtonBgColor, leftButtonTextColor: this.leftButtonTextColor,
      rightButtonString: this.rightButtonString, rightButtonBgColor: this.rightButtonBgColor, rightButtonTextColor: this.rightButtonTextColor,
      pickerTitle: this.pickerTitle, pickerTitleFontSize: this.pickerTitleFontSize, pickerHeight: this.pickerHeight,
      cancel: this.onCancel, confirm: this.onFloatAccept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

  optionTextOptions: string[] = ["very very very very very very very very very very very long text", "text"]
  OptionTextmodel: SingleOptionDialog.Model= new SingleOptionDialog.Model();
  optionTextDialogController: CustomDialogController = new CustomDialogController({
    builder: SingleOptionDialog({ model: this.OptionTextmodel, options: this.optionTextOptions, selectedValue: this.selectedValue,
      leftButtonString: this.leftButtonString, leftButtonBgColor: this.leftButtonBgColor, leftButtonTextColor: this.leftButtonTextColor,
      rightButtonString: this.rightButtonString, rightButtonBgColor: this.rightButtonBgColor, rightButtonTextColor: this.rightButtonTextColor,
      pickerTitle: this.pickerTitle, pickerTitleFontSize: this.pickerTitleFontSize, pickerHeight: this.pickerHeight,
      cancel: this.onCancel, confirm: this.onOptionTextAccept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

  householdOptions: string[] = ["fresh food", "household appliances", "home life", "medical insurance", "drinks"]
  Householdmodel: SingleOptionDialog.Model= new SingleOptionDialog.Model();
  householdDialogController: CustomDialogController = new CustomDialogController({
    builder: SingleOptionDialog({ model: this.Householdmodel, options: this.householdOptions, selectedValue: this.selectedValue,
      leftButtonString: this.leftButtonString, leftButtonBgColor: this.leftButtonBgColor, leftButtonTextColor: this.leftButtonTextColor,
      rightButtonString: this.rightButtonString, rightButtonBgColor: this.rightButtonBgColor, rightButtonTextColor: this.rightButtonTextColor,
      pickerTitle: this.pickerTitle, pickerTitleFontSize: this.pickerTitleFontSize, pickerHeight: this.pickerHeight,
      cancel: this.onCancel, confirm: this.onHouseholdAccept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

  genderOptions: string[] = ["Male", "Female"]
  Gendermodel: SingleOptionDialog.Model= new SingleOptionDialog.Model();
  genderDialogController: CustomDialogController = new CustomDialogController({
    builder: SingleOptionDialog({ model: this.Gendermodel, options: this.genderOptions, selectedValue: this.selectedValue,
      leftButtonString: this.leftButtonString, leftButtonBgColor: this.leftButtonBgColor, leftButtonTextColor: this.leftButtonTextColor,
      rightButtonString: this.rightButtonString, rightButtonBgColor: this.rightButtonBgColor, rightButtonTextColor: this.rightButtonTextColor,
      pickerTitle: this.pickerTitle, pickerTitleFontSize: this.pickerTitleFontSize, pickerHeight: this.pickerHeight,
      cancel: this.onCancel, confirm: this.onGenderAccept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

  ethnicOptions: string[] = ["Tatar", "Derung", "Oroqen", "Hezhen", "Monba"]
  Ethnicmodel: SingleOptionDialog.Model= new SingleOptionDialog.Model();
  ethnicDialogController: CustomDialogController = new CustomDialogController({
    builder: SingleOptionDialog({ model: this.Ethnicmodel, options: this.ethnicOptions, selectedValue: this.selectedValue,
      leftButtonString: this.leftButtonString, leftButtonBgColor: this.leftButtonBgColor, leftButtonTextColor: this.leftButtonTextColor,
      rightButtonString: this.rightButtonString, rightButtonBgColor: this.rightButtonBgColor, rightButtonTextColor: this.rightButtonTextColor,
      pickerTitle: this.pickerTitle, pickerTitleFontSize: this.pickerTitleFontSize, pickerHeight: this.pickerHeight,
      cancel: this.onCancel, confirm: this.onEthnicAccept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

  constellationOptions: string[] = ["Aquarius", "Aquila", "Aries", "Canis Major", "Cassiopeia", "Cygnus", "Gemini", "Leo", "Lyra", "Orion", "Pisces", "Scorpius", "Taurus", "Ursa Major", "Ursa Minor"]
  Constellationmodel: SingleOptionDialog.Model= new SingleOptionDialog.Model();
  constellationDialogController: CustomDialogController = new CustomDialogController({
    builder: SingleOptionDialog({ model: this.Constellationmodel, options: this.constellationOptions, selectedValue: this.selectedValue,
      leftButtonString: this.leftButtonString, leftButtonBgColor: this.leftButtonBgColor, leftButtonTextColor: this.leftButtonTextColor,
      rightButtonString: this.rightButtonString, rightButtonBgColor: this.rightButtonBgColor, rightButtonTextColor: this.rightButtonTextColor,
      pickerTitle: this.pickerTitle, pickerTitleFontSize: this.pickerTitleFontSize, pickerHeight: this.pickerHeight,
      cancel: this.onCancel, confirm: this.onConstellationAccept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

  phoneCodeOptions: string[] = ["Singapore", "Thailand", "Japan", "Korea", "Vietnam", "India"]
  PhoneCodemodel: SingleOptionDialog.Model= new SingleOptionDialog.Model();
  phoneCodeDialogController: CustomDialogController = new CustomDialogController({
    builder: SingleOptionDialog({ model: this.PhoneCodemodel, options: this.phoneCodeOptions, selectedValue: this.selectedValue,
      leftButtonString: this.leftButtonString, leftButtonBgColor: this.leftButtonBgColor, leftButtonTextColor: this.leftButtonTextColor,
      rightButtonString: this.rightButtonString, rightButtonBgColor: this.rightButtonBgColor, rightButtonTextColor: this.rightButtonTextColor,
      pickerTitle: this.pickerTitle, pickerTitleFontSize: this.pickerTitleFontSize, pickerHeight: this.pickerHeight,
      cancel: this.onCancel, confirm: this.onPhoneCodeAccept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

  dates: string[] = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","28","29","30","31"]
  months: string[] = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
  years: string[] = ["2022","2021","2020","2019","2018"]
  @State selectedDate: string = ""
  @State selectedMonth: string = ""
  @State selectedYear: string = ""
  Birthdaymodel: BirthdayDialog.Model = new BirthdayDialog.Model();
  birthdayDialogController: CustomDialogController = new CustomDialogController({
    builder: BirthdayDialog({ model: this.Birthdaymodel, dates: this.dates, months: this.months, years: this.years, selectedDate: this.selectedDate, selectedMonth: this.selectedMonth, selectedYear: this.selectedYear, cancel: this.onCancel, confirm: this.onBirthdayAccept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

  hour: string[] = ["01","02","03","04","05","06","07","08","09","10","11","12"]
  minutes: string[] = ["00", "10", "20", "30", "40", "50"]
  seconds: string[] = ["00","01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60"]
  @State selectedHour: string = ""
  @State selectedMinutes: string = ""
  @State selectedSecond: string = ""
  TimeSelection24model: TimeSelection24.Model = new TimeSelection24.Model();
  timeSelection24Controller: CustomDialogController = new CustomDialogController({
    builder: TimeSelection24({ model: this.TimeSelection24model, hour: this.hour, minutes: this.minutes, seconds: this.seconds, selectedHour: this.selectedHour, selectedMinutes: this.selectedMinutes, selectedSecond: this.selectedSecond,
      leftButtonString: this.leftButtonString, leftButtonBgColor: this.leftButtonBgColor, leftButtonTextColor: this.leftButtonTextColor, rightButtonString: this.rightButtonString, rightButtonBgColor: this.rightButtonBgColor, rightButtonTextColor: this.rightButtonTextColor, pickerTitle: this.pickerTitle, pickerTitleFontSize: this.pickerTitleFontSize, pickerHeight: this.pickerHeight, cancel: this.onCancel, confirm: this.onTime24Accept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

  zone: string[] = ["AM", "PM"]
  @State selectedZone: string = ""
  TimeSelection12model: TimeSelection12.Model = new TimeSelection12.Model();
  timeSelection12Controller: CustomDialogController = new CustomDialogController({
    builder: TimeSelection12({ model: this.TimeSelection12model, hour: this.hour, minutes: this.minutes, zone: this.zone, selectedHour: this.selectedHour, selectedMinutes: this.selectedMinutes, selectedZone: this.selectedZone,
      leftButtonString: this.leftButtonString, leftButtonBgColor: this.leftButtonBgColor, leftButtonTextColor: this.leftButtonTextColor, rightButtonString: this.rightButtonString, rightButtonBgColor: this.rightButtonBgColor, rightButtonTextColor: this.rightButtonTextColor, pickerTitle: this.pickerTitle, pickerTitleFontSize: this.pickerTitleFontSize, pickerHeight: this.pickerHeight, cancel: this.onCancel, confirm: this.onTime12Accept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

  month: string[] = ["01","02","03","04","05","06","07","08","09","10","11","12"]
  day: string[] = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28"]
  @State selectedDay: string = ""
  MonthDayDialogmodel: MonthDayDialog.Model = new MonthDayDialog.Model();
  monthDayController: CustomDialogController = new CustomDialogController({
    builder: MonthDayDialog({ model: this.MonthDayDialogmodel, month: this.month, day: this.day, selectedMonth: this.selectedMonth, selectedDay: this.selectedDay,
      leftButtonString: this.leftButtonString, leftButtonBgColor: this.leftButtonBgColor, leftButtonTextColor: this.leftButtonTextColor, rightButtonString: this.rightButtonString, rightButtonBgColor: this.rightButtonBgColor, rightButtonTextColor: this.rightButtonTextColor, pickerTitle: this.pickerTitle, pickerTitleFontSize: this.pickerTitleFontSize, pickerHeight: this.pickerHeight, cancel: this.onCancel, confirm: this.onMonthDayAccept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

  year: string[] = ["2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030"]
  YearMonthDialogmodel: YearMonthDialog.Model = new YearMonthDialog.Model();
  yearMonthController: CustomDialogController = new CustomDialogController({
    builder: YearMonthDialog({ model: this.YearMonthDialogmodel, year: this.year, month: this.month, selectedYear: this.selectedYear, selectedMonth: this.selectedMonth,
      leftButtonString: this.leftButtonString, leftButtonBgColor: this.leftButtonBgColor, leftButtonTextColor: this.leftButtonTextColor, rightButtonString: this.rightButtonString, rightButtonBgColor: this.rightButtonBgColor, rightButtonTextColor: this.rightButtonTextColor, pickerTitle: this.pickerTitle, pickerTitleFontSize: this.pickerTitleFontSize, pickerHeight: this.pickerHeight,  cancel: this.onCancel, confirm: this.onYearMonthAccept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

  YearMonthDayDialogmodel: YearMonthDayDialog.Model = new YearMonthDayDialog.Model();
  yearMonthDayController: CustomDialogController = new CustomDialogController({
    builder: YearMonthDayDialog({ model: this.YearMonthDayDialogmodel, year: this.year, month: this.month, day: this.day, selectedYear: this.selectedYear, selectedMonth: this.selectedMonth, selectedDay: this.selectedDay,
      leftButtonString: this.leftButtonString, leftButtonBgColor: this.leftButtonBgColor, leftButtonTextColor: this.leftButtonTextColor, rightButtonString: this.rightButtonString, rightButtonBgColor: this.rightButtonBgColor, rightButtonTextColor: this.rightButtonTextColor, pickerTitle: this.pickerTitle, pickerTitleFontSize: this.pickerTitleFontSize, pickerHeight: this.pickerHeight, cancel: this.onCancel, confirm: this.onYearMonthDayAccept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

  YearMonthDayTimeDialogmodel: YearMonthDayTimeDialog.Model = new YearMonthDayTimeDialog.Model();
  yearMonthDayTimeController: CustomDialogController = new CustomDialogController({
    builder: YearMonthDayTimeDialog({ model: this.YearMonthDayTimeDialogmodel, year: this.year, month: this.month, day: this.day, hour: this.hour, minutes: this.minutes, selectedYear: this.selectedYear, selectedMonth: this.selectedMonth, selectedDay: this.selectedDay, selectedHour: this.selectedHour, selectedMinutes: this.selectedMinutes,
      leftButtonString: this.leftButtonString, leftButtonBgColor: this.leftButtonBgColor, leftButtonTextColor: this.leftButtonTextColor, rightButtonString: this.rightButtonString, rightButtonBgColor: this.rightButtonBgColor, rightButtonTextColor: this.rightButtonTextColor, pickerTitle: this.pickerTitle, pickerTitleFontSize: this.pickerTitleFontSize, pickerHeight: this.pickerHeight, cancel: this.onCancel, confirm: this.onYearMonthDayTimeAccept }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom
  })

  onCancel() {
    console.info('Callback when the first button is clicked')
  }
  onAccept() {
    prompt.showToast({ message: this.selectedValue })
    console.info('Callback when the second button is clicked')
  }
  onIntegerAccept() {
    prompt.showToast({ message: this.selectedValue })
    console.info('Callback when the second button is clicked')
  }
  onFloatAccept() {
    this.selectedValue === "" ? prompt.showToast({ message: "4.10 °C" }) : prompt.showToast({ message: this.selectedValue + " °C" })
    console.info('Callback when the second button is clicked')
  }
  onOptionTextAccept() {
    prompt.showToast({ message: this.selectedValue })
    console.info('Callback when the second button is clicked')
  }
  onHouseholdAccept() {
    prompt.showToast({ message: this.selectedValue })
    console.info('Callback when the second button is clicked')
  }
  onGenderAccept() {
    prompt.showToast({ message: this.selectedValue })
    console.info('Callback when the second button is clicked')
  }
  onEthnicAccept() {
    prompt.showToast({ message: this.selectedValue })
    console.info('Callback when the second button is clicked')
  }
  onConstellationAccept() {
    prompt.showToast({ message: this.selectedValue })
    console.info('Callback when the second button is clicked')
  }
  onPhoneCodeAccept() {
    prompt.showToast({ message: this.selectedValue})
    console.info('Callback when the second button is clicked')
  }
  onBirthdayAccept() {
    prompt.showToast({ message: this.selectedYear+" : "+this.selectedMonth+" : "+this.selectedDate })
    console.info('Callback when the second button is clicked')
  }
  onTime24Accept() {
    prompt.showToast({ message: this.selectedHour+" : "+this.selectedMinutes+" : "+this.selectedSecond })
    console.info('Callback when the second button is clicked')
  }
  onTime12Accept() {
    prompt.showToast({ message: this.selectedHour+" : "+this.selectedMinutes+" "+this.selectedZone })
    console.info('Callback when the second button is clicked')
  }
  onMonthDayAccept() {
    prompt.showToast({ message: this.selectedMonth+" - "+this.selectedDay })
    console.info('Callback when the second button is clicked')
  }
  onYearMonthAccept() {
    prompt.showToast({ message: this.selectedYear+" - "+this.selectedMonth })
    console.info('Callback when the second button is clicked')
  }
  onYearMonthDayAccept() {
    prompt.showToast({ message: this.selectedYear+" - "+this.selectedMonth + " - " + this.selectedDay })
    console.info('Callback when the second button is clicked')
  }
  onYearMonthDayTimeAccept() {
    prompt.showToast({ message: this.selectedYear+"-"+this.selectedMonth + "-" + this.selectedDay + "  " + this.selectedHour + " : " + this.selectedMinutes })
    console.info('Callback when the second button is clicked')
  }
  existApp() {
    console.info('Click the callback in the blank area')
  }

  showSingleOptionDialog() {
    this.IntegerDialog.reset()
    this.IntegerDialog.setScrollHeight(160)
    this.IntegerDialogController.open()
  }


  build() {
    Column({space: 5}){
      Text("Wheel Pickers").fontSize(25).fontWeight(500).height('5%').width('500VP').textAlign(TextAlign.Center).backgroundColor('#94a3b8')
      Button("Integer Picker",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.showSingleOptionDialog()
      })

      Button("Float Picker",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.floatDialogController.open()
      })

      Button("Option Text Picker",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.optionTextDialogController.open()
      })

      Button("Household Items Picker",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.householdDialogController.open()
      })

      Button("Gender Picker",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.genderDialogController.open()
      })

      Button("Ethnic Picker",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.ethnicDialogController.open()
      })

      Button("Constellation Picker",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.constellationDialogController.open()
      })

      Button("Phone Code Picker",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.phoneCodeDialogController.open()
      })

      Button("Birthday Picker",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.birthdayDialogController.open()
      })

      Button("Time Selection 24hr",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.timeSelection24Controller.open()
      })

      Button("Time Selection 12hr",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.timeSelection12Controller.open()
      })

      Button("Month Day",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.monthDayController.open()
      })

      Button("Year Month",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.yearMonthController.open()
      })

      Button("Year Month Day",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.yearMonthDayController.open()
      })

      Button("Year Month Day Time",{type: ButtonType.Normal}).width('500VP').borderRadius(0).onClick(() => {
        this.yearMonthDayTimeController.open()
      })
    }
  }
}