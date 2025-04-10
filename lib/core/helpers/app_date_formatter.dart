import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppDateFormatter {
  static DateTime textToDate(String text) {
    try {
      return DateFormat("yyyy-MM-dd hh:mm").parse(text);
    } catch (_) {
      return DateTime.now();
    }
  }

  static String textTFormat(String text, String dateFormat, [String? local]) {
    try {
      final DateFormat format = DateFormat(dateFormat, local);
      return format.format(DateFormat("yyyy-MM-dd hh:mm").parse(text));
    } catch (_) {
      return '';
    }
  }

  static String dateToFormat(DateTime time, String dateFormat) {
    try {
      final DateFormat format = DateFormat(dateFormat);
      return format.format(time);
    } catch (_) {
      return '';
    }
  }

  static String dateStringToFormat(String time, String dateFormat) {
    try {
      final DateFormat format = DateFormat(dateFormat);
      return format.format(DateTime.parse(time));
    } catch (_) {
      return time;
    }
  }

  static String dateToString(DateTime time) {
    try {
      final DateFormat format = DateFormat('dd/MM/yyyy');
      return format.format(time);
    } catch (_) {
      return '';
    }
  }

  static DateTime textToTime(String text, String lang) {
    try {
      return DateFormat("hh:mm:ss", lang).parse(text);
    } catch (_) {
      return DateTime.now();
    }
  }

  static String formatTime(String text) {
    try {
      DateTime time = DateFormat("hh:mm:ss").parse(text);
      return DateFormat('hh:mm a').format(time);
    } catch (_) {
      return '';
    }
  }

  static TimeOfDay stringToTimeOfDay(String text) {
    try {
      // Split the string into hours, minutes, and seconds
      List<String> parts = text.split(":");
      int hours = int.parse(parts[0]);
      int minutes = int.parse(parts[1]);

      return TimeOfDay(hour: hours, minute: minutes);
    } catch (error) {
      return TimeOfDay.now();
    }
  }

  static Duration getDurationBetweenTwoDates(
    DateTime startDate,
    DateTime endDate,
  ) {
    // Calculate the difference between the two dates
    Duration duration = endDate.difference(startDate);
    return duration;
  }

  static getDateFromTimeStamp(String timeStamp) {
    // Define the format matching the input string
    DateFormat format = DateFormat("MMMM d, y 'at' h:mm:ss a 'UTC'X");

    // Parse the date string to DateTime
    DateTime dateTime = format.parse(
      timeStamp,
      true,
    ); // `true` ensures UTC parsing

    // Convert to local timezone
    DateTime localDateTime = dateTime.toLocal();
    return localDateTime;
  }
}

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
