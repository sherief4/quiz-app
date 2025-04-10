import 'package:get_it/get_it.dart';
import 'package:quiz_app/features/intro/presentation/cubit/intro_cubit.dart';

final di = GetIt.instance;

Future<void> setUpInjector() async {

  di.registerFactory(()=> IntroCubit());
}
