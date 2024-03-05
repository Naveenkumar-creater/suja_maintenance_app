import '../../domain/entity/sm_datapoint_entity.dart';


class SmDataPointModel extends SmDataPointEntity {
  
  SmDataPointModel({
    required int responseCode,
    required ResponseData responseData,
    required int wsReqId,
    required String responseMsg,
  }) : super(
          responseCode: responseCode,
          responseData: responseData,
          wsReqId: wsReqId,
          responseMsg: responseMsg,
        );

  factory SmDataPointModel.fromJson(Map<String, dynamic> json) {
    return SmDataPointModel(
     responseCode: json['response_code'],
      responseData: ResponseData.fromJson(json['response_data']),
      wsReqId: json['ws_req_id'],
      responseMsg: json['response_msg'],
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