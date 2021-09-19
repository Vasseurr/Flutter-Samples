import 'package:get_it/get_it.dart';
import 'package:spincircle_bottom_nav_bar/view/home/service/home_repository.dart';
import 'package:spincircle_bottom_nav_bar/view/home/service/home_service.dart';
import 'package:spincircle_bottom_nav_bar/view/home/viewmodel/home_viewmodel.dart';

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
