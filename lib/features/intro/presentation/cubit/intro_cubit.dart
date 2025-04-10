import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:meta/meta.dart';
import 'package:quiz_app/generated/locale_keys.g.dart';

part 'intro_state.dart';

class IntroCubit extends Cubit<IntroState> {
  IntroCubit() : super(const IntroInitial());

  //----------------------------------------------------------------------------

  int welcomeIndex = 0;

  Future<void> changeWelcomeIndex() async {
    for (int i = 1; i < 3; i++) {
      welcomeIndex = i;
      await Future.delayed(const Duration(seconds: 2));
      emit(ChangeWelcomeIndex());
    }
  }

  //----------------------------------------------------------------------------

  String getWelcomeText() {
    switch (welcomeIndex) {
      case 1:
        return '${LocaleKeys.welcomeBack.tr()}, Paige';
      case 2:
        return LocaleKeys.whatWouldYouLikeToLearnToday.tr();
      default:
        return '';
    }
  }

  //----------------------------------------------------------------------------

  List<String> categories = [
    "Art",
    "Design",
    "History",
    "Mathematics",
    "Literature",
    "Geography",
    "Code",
  ];

  //----------------------------------------------------------------------------

Set<String> selectedCategories ={};

  void selectCategory(String category) {
    if (selectedCategories.contains(category)) {
      selectedCategories.remove(category);
    } else {
      selectedCategories.add(category);
    }
    emit(SelectCategory());}
}
