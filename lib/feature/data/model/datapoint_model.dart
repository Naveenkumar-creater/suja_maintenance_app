
import '../../domain/entity/datapoint_entity.dart';

class DataPointModel extends DataPointEntity {
  DataPointModel({
    required int responseCode,
    required ResponseData responseData,
    required int wsReqId, // Make wsReqId nullable
    required String responseMsg,
  }) : super(
          responseCode: responseCode,
          responseData: responseData,
          wsReqId: wsReqId , // Convert nullable wsReqId to non-nullable with a default value
          responseMsg: responseMsg,
        );

  factory DataPointModel.fromJson(Map<String, dynamic> json) {
    return DataPointModel(
      responseCode: json['response_code'] ?? 0, // Provide a default value if null
      responseData: ResponseData.fromJson(json['response_data']),
      wsReqId: json['ws_req_id'], // Cast to nullable int
      responseMsg: json['response_msg'] ?? '', // Provide a default value if null
    );
  }
}







// {
//   "response_code": 1,
//   "response_data": {
//     "checklist_datapoints": {
//       "acrdp_id": 2,
//       "acrd_id": 2,
//       "datapoint_value": 200,
//       "amdp_datapoint_description": "Temperatue",
//       "datapoint_id": 2
//     }
//   },
//   "ws_req_id": 9550,
//   "response_msg": "Success"
// }