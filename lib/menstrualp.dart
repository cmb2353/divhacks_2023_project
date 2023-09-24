// menstrual_period_monthly_intent.dart
class MenstrualPeriodMonthlyIntent {
  MenstrualPeriodResumeIntent? jan;
  MenstrualPeriodResumeIntent? feb;
  MenstrualPeriodResumeIntent? mar;
  MenstrualPeriodResumeIntent? apr;
  MenstrualPeriodResumeIntent? may;
  MenstrualPeriodResumeIntent? jun;
  MenstrualPeriodResumeIntent? jul;
  MenstrualPeriodResumeIntent? aug;
  MenstrualPeriodResumeIntent? sep;
  MenstrualPeriodResumeIntent? oct;
  MenstrualPeriodResumeIntent? nov;
  MenstrualPeriodResumeIntent? dec;

  MenstrualPeriodMonthlyIntent({
    this.jan,
    this.feb,
    this.mar,
    this.apr,
    this.may,
    this.jun,
    this.jul,
    this.aug,
    this.sep,
    this.oct,
    this.nov,
    this.dec,
  });
}

// menstrual_period_resume_intent.dart
class MenstrualPeriodResumeIntent {
  String year;
  String month;
  String firstDayPeriod;
  String lastDayPeriod;
  String firstDayFertile;
  String lastDayFertile;
  int firstDayFertileDay;
  int lastDayFertileDay;
  int longCycle;
  int longPeriod;
  bool isEdit;

  MenstrualPeriodResumeIntent({
    required this.year,
    required this.month,
    required this.firstDayPeriod,
    required this.lastDayPeriod,
    required this.firstDayFertile,
    required this.lastDayFertile,
    required this.firstDayFertileDay,
    required this.lastDayFertileDay,
    required this.longCycle,
    required this.longPeriod,
    required this.isEdit,
  });
}
