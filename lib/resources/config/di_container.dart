import 'package:get_it/get_it.dart';
import 'package:informatics_task/home_controller.dart';
import 'package:informatics_task/repo/home_repo.dart';
import 'package:informatics_task/resources/remote/http_client.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// initialise base scope

  sl.registerLazySingleton(() => HttpClientRepo());

  ///repo
  sl.registerLazySingleton(() => HomeRepo(httpClientRepo: sl()));

  ///Providers
  sl.registerLazySingleton(() => HomeController(homeRepo: sl()));
}
