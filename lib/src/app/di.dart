import 'package:get_it/get_it.dart';
import 'package:mvvm_skeleton/src/data/data_source/local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  final sharedPrefs = await SharedPreferences.getInstance();

  instance.registerLazySingleton(() => sharedPrefs);
  instance.registerLazySingleton(() => LocalDataSourceImpl(instance()));
}
