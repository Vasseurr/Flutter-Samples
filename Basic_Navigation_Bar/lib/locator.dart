import 'package:get_it/get_it.dart';

import 'view/home/service/home_repository.dart';
import 'view/home/service/home_service.dart';
import 'view/home/viewmodel/home_viewmodel.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Service
  locator.registerLazySingleton(() => HomeService());

  // Viewmodel
  locator.registerFactory(() => HomeViewModel());

  // Repository
  locator.registerLazySingleton(() => HomeRepository());

  // Model
//  locator.registerLazySingleton(() => FaultDetailDao());
}
