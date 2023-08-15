import 'package:bot_toast/bot_toast.dart';
import 'package:dartz/dartz.dart';

import 'package:nationalquiz/core/data/models/apis/token_info.dart';
import 'package:nationalquiz/core/data/models/common_response.dart';
import 'package:nationalquiz/core/data/network/endpoints/user_endpoints.dart';
import 'package:nationalquiz/core/data/network/network_config.dart';
import 'package:nationalquiz/core/enums/request_type.dart';
import 'package:nationalquiz/core/utils/network_util.dart';

class UserRepository {
  



  Future<Either<String, dynamic>> register({
  required String name,
  required String mobile_phone,
  required String specialization_id,
 
}) async {
  try {
    return NetworkUtil.sendMultipartRequest(
      type: RequestType.MULTIPART,
      url: UserEndpoints.Register,
      fields: {
        'name': name,
        'mobile_phone': mobile_phone,
        'specialization_id': specialization_id,
        
        
      
      },
      headers: NetworkConfig.getHeaders(needAuth: false),
    ).then((response) {
      CommonResponse<Map<String, dynamic>> commonResponse =
          CommonResponse.fromJson(response);

      if (commonResponse.getStatus) {
        return Right(TokenInfo.fromJson(commonResponse.data ?? {}));
      } else {
        return Left(commonResponse.message ?? '');
      }
    });
  } catch (e) {
    BotToast.showText(text: e.toString());
    return Left(e.toString());
  }
}


}







