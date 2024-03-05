import '../model/request_data_model.dart';
import 'api_constant.dart';

class SmDataPointClient {
  dynamic getDataPoint(int acrdId, String token) async {
    ApiRequestDataModel requestData = ApiRequestDataModel(
      clientAuthToken: token,
      apiFor: "get_spec_value",
       acrdId: acrdId,

    );

     final apiConstant = ApiConstant();
      final headers = {
      'Content-Type': 'application/json',
    };

    return await apiConstant.makeApiRequest(
      url: ApiConstant.baseUrl,
      headers: headers,
      requestBody: requestData,
    );
  }
}

// {
//  				"client_aut_token": "murali-2142",
//                                  "api_for": "get_spec_value",
//                                   "acrd_id":66				
//  			}

//       "get_check_list_datapoints"