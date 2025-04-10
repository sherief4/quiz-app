part of 'intro_cubit.dart';

@immutable
sealed class IntroState {
  const IntroState();
}

final class IntroInitial extends IntroState {
  const IntroInitial();
}
final class ChangeWelcomeIndex extends IntroState {}
final class SelectCategory extends IntroState {}
