import '../../../locator.dart';
import 'home_service.dart';
import 'home_service_base.dart';

class HomeRepository with HomeServiceBase {
  final _service = locator<HomeService>();
}
