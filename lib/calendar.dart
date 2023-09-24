import 'package:flutter/material.dart';


class CalendarCell extends StatelessWidget {
  final bool isCurrent;
  final int type;
  final int day;
  final int month;
  final int year;
  final int dayOfCycle;
  final int intensity;
  final bool intercourse;
  final bool notes;

  CalendarCell({
    required this.isCurrent,
    required this.type,
    required this.day,
    required this.month,
    required this.year,
    required this.dayOfCycle,
    required this.intensity,
    required this.intercourse,
    required this.notes,
  });
  @override
  Widget build(BuildContext context) {
    // Define text styles for day of the month
    TextStyle dayTextStyle = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );

    // Define text styles for indicators (e.g., period, ovulation)
    TextStyle indicatorTextStyle = TextStyle(
      fontSize: 12.0,
      color: Color(0xFF91314E), // Customize the color as needed
    );

    return Container(
      width: 48.0, // Adjust the width as needed
      height: 64.0, // Adjust the height as needed
      decoration: BoxDecoration(
        // Customize the container decoration (e.g., background color, border)
        color: Color.fromARGB(255, 160, 79, 106),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Color(0xFFA45E75),
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            '$day', // Display the day of the month
            style: dayTextStyle,
          ),
          if (type == DayEntry.PERIOD_START)
            Text(
              'Period', // Customize the indicator text
              style: indicatorTextStyle,
            ),
          if (type == DayEntry.OVULATION_PREDICTED)
            Text(
              'Ovulation', // Customize the indicator text
              style: indicatorTextStyle,
            ),
          // Add other indicator Text widgets as needed
        ],
      ),
    );
  }
}

class DayEntry {
  static const int EMPTY = 0;
  static const int PERIOD_START = 1;
  static const int PERIOD_CONFIRMED = 2;
  static const int PERIOD_PREDICTED = 3;
  static const int FERTILITY_PREDICTED = 4;
  static const int OVULATION_PREDICTED = 5;
  static const int FERTILITY_FUTURE = 6;
  static const int OVULATION_FUTURE = 7;
  static const int FERTILITY_STANDARD_PREDICTED = 8;
  static const int FERTILITY_STANDARD_FUTURE = 9;
  static const int INFERTILE_PREDICTED = 10;
  static const int INFERTILE_FUTURE = 11;
  
  static const Map<int, String> labels = {
    EMPTY: 'Empty',
    PERIOD_START: 'Period Start',
    PERIOD_CONFIRMED: 'Period Confirmed',
    PERIOD_PREDICTED: 'Period Predicted',
    FERTILITY_PREDICTED: 'Fertility Predicted',
    OVULATION_PREDICTED: 'Ovulation Predicted',
    FERTILITY_FUTURE: 'Fertility Future',
    OVULATION_FUTURE: 'Ovulation Future',
    FERTILITY_STANDARD_PREDICTED: 'Fertility Standard Predicted',
    FERTILITY_STANDARD_FUTURE: 'Fertility Standard Future',
    INFERTILE_PREDICTED: 'Infertile Predicted',
    INFERTILE_FUTURE: 'Infertile Future',
  };
  
  static String getLabel(int type) {
    return labels[type] ?? 'Unknown';
  }
}

