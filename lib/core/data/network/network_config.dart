
import '../../../ui/shared/utils.dart';
import '../../enums/request_type.dart';

class NetworkConfig {
  static String BASE_API = 'api/web/';

  static String getFullApiUrl(String api) {
    return BASE_API + api;
  }

 
}
