import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';


const Uuid _uuid = Uuid();

class Utils {
  Utils._();

  ///* Generate `UUID` for document or files
  static String get getUID => _uuid.v4();



  //----------------------------------------------------------------------------

  // static void showAppBottomSheet({
  //   required BuildContext context,
  //   required Widget child,
  //   bool isScrollable = true,
  //   bool isDismissible = true,
  //   // double? heightFactor=0.5,
  // }) {
  //   showModalBottomSheet(
  //       context: context,
  //       enableDrag: false,
  //       isDismissible: isDismissible,
  //       constraints: BoxConstraints(
  //         maxWidth: context.width,
  //       ),
  //       isScrollControlled: isScrollable,
  //       sheetAnimationStyle: AnimationStyle(
  //           curve: Curves.fastOutSlowIn,
  //           duration: const Duration(milliseconds: 600)),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.only(
  //           topRight: 16.rBr,
  //           topLeft: 16.rBr,
  //         ),
  //       ),
  //       backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
  //       builder: (context) => child);
  // }

  //----------------------------------------------------------------------------

  // static Future<void> showAdaptiveDatePicker(
  //   BuildContext context, {
  //   DateTime? initialDate,
  //   DateTime? firstDate,
  //   DateTime? lastDate,
  //   void Function(DateTime dateTime)? onChange,
  // }) async {
  //   // initialize dates
  //   DateTime dateNow = DateTime.now();
  //   DateTime first = firstDate != null
  //       ? DateTime(firstDate.year, firstDate.month, firstDate.day)
  //       : DateTime(dateNow.year, dateNow.month, dateNow.day);
  //   DateTime last = lastDate != null
  //       ? DateTime(lastDate.year, lastDate.month, lastDate.day)
  //       : DateTime(dateNow.year, dateNow.month, dateNow.day);
  //   // Show Material Date Picker for Android
  //   if (Platform.isAndroid || Platform.isIOS) {
  //     final DateTime? dateTime = await showDatePicker(
  //       context: context,
  //       initialDate: initialDate ?? dateNow,
  //       currentDate: initialDate,
  //       firstDate: first,
  //       lastDate: last,
  //     );
  //     if (dateTime != null) {
  //       if (onChange != null) {
  //         onChange(dateTime);
  //       }
  //     }

  //     // Show Cupertino Date Picker for iOS
  //   } else {
  //     showCupertinoModalPopup(
  //       context: context,
  //       builder: (_) {
  //         return Container(
  //           height: 300.h,
  //           width: context.width,
  //           color: context.themeData.colorScheme.onSecondary,
  //           child: CupertinoDatePicker(
  //             initialDateTime: initialDate,
  //             minimumDate: first,
  //             maximumDate: DateTime(2050),
  //             mode: CupertinoDatePickerMode.date,
  //             onDateTimeChanged: onChange ?? (dateTime) {},
  //           ),
  //         );
  //       },
  //     );
  //   }
  // }

  // static Future<void> showDateTimePicker(
  //   BuildContext context, {
  //   DateTime? currentDate,
  //   DateTime? startDate,
  //   DateTime? endDate,
  //   Function(DateTime)? onConfirm,
  // }) async {
  //   DateTime nowDate = DateTime.now();
  //   date_time_picker.DatePicker.showDateTimePicker(context,
  //       theme: date_time_picker.DatePickerTheme(
  //         doneStyle: context.textTheme.bodyMedium!,
  //         itemStyle: context.textTheme.displayMedium!,
  //         containerHeight: .2.sh,
  //         itemHeight:40.h ,
  //         titleHeight: 50.h,
  //         cancelStyle:
  //             context.textTheme.displayMedium!.copyWith(fontSize: 14.sp),
  //         backgroundColor: context.themeData.scaffoldBackgroundColor,
  //         headerColor: context.themeData.scaffoldBackgroundColor,
  //       ),
  //       onConfirm: onConfirm,
  //       showTitleActions: true,
  //       minTime: startDate ?? nowDate,
  //       maxTime: endDate ?? nowDate,
  //       currentTime: currentDate ?? DateTime.now(),
  //       locale: date_time_picker.LocaleType.en);
  // }

  //----------------------------------------------------------------------------

  // static void showMessageDialog(BuildContext context,
  //     {String? title, required String message}) {
  //   if (Platform.isAndroid) {
  //     showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: title != null
  //               ? Text(title, style: context.textTheme.bodyLarge)
  //               : null,
  //           content: Text(
  //             message,
  //             style: context.textTheme.bodyLarge!.copyWith(fontSize: 14.sp),
  //           ),
  //           elevation: 5,
  //           shape:
  //               RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
  //           backgroundColor: Theme.of(context).scaffoldBackgroundColor,
  //           actions: [
  //             TextButton(
  //               onPressed: () {
  //                 context.pop();
  //               },
  //               child: Text(
  //                 'حسنا',
  //                 style: context.textTheme.bodyLarge!.copyWith(
  //                     color: ColorsManager.primaryColor,
  //                     fontWeight: FontWeight.w600),
  //               ),
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   } else {
  //     showCupertinoDialog(
  //       context: context,
  //       builder: (context) => CupertinoAlertDialog(
  //         title: Text(
  //           message,
  //           style: context.textTheme.bodyLarge!.copyWith(fontSize: 14.sp),
  //         ),
  //         insetAnimationCurve: Curves.ease,
  //         insetAnimationDuration: const Duration(microseconds: 600),
  //         actions: [
  //           CupertinoDialogAction(
  //             isDestructiveAction: true,
  //             child: Text(
  //               'حسنا',
  //               style: context.textTheme.bodyLarge!.copyWith(
  //                   color: ColorsManager.primaryColor,
  //                   fontWeight: FontWeight.w600),
  //             ),
  //             onPressed: () => context.pop(),
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  // }

  //--------------------------------------------------------------------------------

  static bool isVideo(String path) {
    return path.contains('.mp4') ||
        path.contains('.mov') ||
        path.contains('.wmv') ||
        path.contains('.avi') ||
        path.contains('.mkv') ||
        path.contains('.webm');
  }

  //----------------------------------------------------------------------------

  static bool isValidMedia(String path) {
    return path.contains('.mp4') ||
        path.contains('.mov') ||
        path.contains('.wmv') ||
        path.contains('.avi') ||
        path.contains('.mkv') ||
        path.contains('.webm') ||
        path.contains('.jpg') ||
        path.contains('.jpeg') ||
        path.contains('.png') ||
        path.contains('.webp') ||
        path.contains('.gif');
  }

  //----------------------------------------------------------------------------

  static String getYoutubeThumbnail(String youtubeId) {
    return "https://img.youtube.com/vi/$youtubeId/0.jpg";
  }

  //----------------------------------------------------------------------------

  // static Future<void> openFile(String path) async {
  //   try {
  //     await OpenFile.open(
  //       path,
  //     );
  //   } catch (_) {}
  // }

  //------------------------------------------------------------------------------

  // static Future<void> openUrl(String url) async {
  //   final Uri uri = Uri.parse(url);
  //   try {
  //     if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
  //       throw Exception('Could not launch $url');
  //     }
  //   } catch (error) {
  //     printMeLog(error.toString());
  //   }
  // }

  //----------------------------------------------------------------------------

  static DateTime combineDateTimeAndTimeOfDay(DateTime date, TimeOfDay time) {
    return DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );
  }

  //----------------------------------------------------------------------------

  static String? getAgeFromBirthDate(String? date) {
    try {
      if (date == null) return null;
      DateTime birthDate = DateTime.parse(date);
      DateTime currentDate = DateTime.now();

      if (birthDate.isAfter(currentDate)) {
        return null; // Birth date is in the future
      }

      int age = currentDate.year - birthDate.year;

      if (currentDate.month < birthDate.month ||
          (currentDate.month == birthDate.month &&
              currentDate.day < birthDate.day)) {
        age--;
      }

      return age.toString();
    } catch (e) {
      return null; // Invalid date format
    }
  }

  //----------------------------------------------------------------------------

  // static ImagePicker picker = ImagePicker();

  // static Future<List<XFile>> pickMultiImages({ImageSource? source}) async {
  //   List<XFile> images = [];
  //   try {
  //     if (source == ImageSource.camera) {
  //       var file = await picker.pickImage(
  //         source: ImageSource.camera,
  //       );
  //       if (file != null) {
  //         images.add(file);
  //       }
  //     } else {
  //       images.addAll(await picker.pickMultiImage());
  //     }
  //     return images;
  //   } catch (error) {
  //     printMe(error);
  //     rethrow;
  //   }
  // }

  // static Future<XFile?> pickImage({ImageSource? source}) async {
  //   try {
  //     var file = await picker.pickImage(
  //       source: source ?? ImageSource.gallery,
  //     );
  //     return file;
  //   } catch (error) {
  //     printMe(error);
  //     rethrow;
  //   }
  // }

  // static Future<XFile?> compressImage(String filePath) async {
  //   final lastIndex = filePath.lastIndexOf(RegExp(r'.jp'));
  //   final splitted = filePath.substring(0, lastIndex);
  //   final outPath = "${splitted}_out${filePath.substring(lastIndex)}";
  //   var result = await FlutterImageCompress.compressAndGetFile(
  //     filePath,
  //     outPath,
  //     quality: 50,
  //     format: CompressFormat.jpeg,
  //   );
  //   return result;
  // }

  // //----------------------------------------------------------------------------

  // static Future<String> getDeviceId() async {
  //   String identifier = '';
  //   final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  //   if (Platform.isAndroid) {
  //     AndroidDeviceInfo build = await deviceInfoPlugin.androidInfo;
  //     identifier = build.id;
  //   } else if (Platform.isIOS) {
  //     var data = await deviceInfoPlugin.iosInfo;
  //     identifier = data.identifierForVendor ?? '';
  //   }

  //   return identifier;
  // }

  //----------------------------------------------------------------------------

  static int getHabitColorIndex(String? color) {
    return int.tryParse(color ?? "0") ?? 0;
  }



//----------------------------------------------------------------------------
//
// static DateTime dateFromDateTime(DateTime date) {
//   return DateTime(date.year, date.month, date.day);
// }
//
//
//
// static DateTime _parseDate(String? dateString) {
//   return dateString != null
//       ? DateTime.tryParse(dateString) ?? DateTime.now()
//       : DateTime.now();
// }
//
// static int _parseInt(String? intString) {
//   return int.tryParse(intString ?? "0") ?? 0;
// }
}
