import 'package:equatable/equatable.dart';


class SmDataPointEntity extends Equatable {
  final int? responseCode;
  final ResponseData responseData;
  final int wsReqId;
  final String responseMsg;

  const SmDataPointEntity({
    required this.responseCode,
    required this.responseData,
    required this.wsReqId,
    required this.responseMsg,
  });

  @override
  List<Object?> get props => [responseCode, responseData, wsReqId, responseMsg];
}


class ResponseData {

  final List<SmDataPointDetailsEntity> SmchecklistDatapointsList;


  ResponseData({
 
    required this.SmchecklistDatapointsList,

  });

  factory ResponseData.fromJson(Map<String, dynamic> json) {
    return ResponseData(
  
      SmchecklistDatapointsList: List<SmDataPointDetailsEntity>.from(
        json['get_spec_value'].map(
          (detailJson) => SmDataPointDetailsEntity.fromJson(detailJson),
        ),
      )
    );
  }

  get length => null;
}


class SmDataPointDetailsEntity {

   final int amtsassetid;
   final String aptmname;
   final String atsmspecname;
   final int acrdid;
   final int amtsvalue;
   final int amtslowerrangevalue;
   final int amtsid;
   final int amtsupperrangevalue;
  

  SmDataPointDetailsEntity({
    required this.amtsassetid,
    required this.aptmname,
    required this.atsmspecname,
    required this.acrdid,
    required this.amtsvalue,
    required this.amtslowerrangevalue,
    required this.amtsid,
    required this.amtsupperrangevalue,
  });

  factory SmDataPointDetailsEntity.fromJson(Map<String, dynamic> json) {
    return SmDataPointDetailsEntity(
      amtsassetid: json['amts_asset_id'],
      aptmname: json['aptm_name'],
      atsmspecname: json['atsm_spec_name'],
      acrdid: json['acrd_id'],
      amtsvalue: json['amts_value'],
      amtslowerrangevalue: json['amts_lower_range_value'],
      amtsid: json['amts_id'],
      amtsupperrangevalue: json['amts_upper_range_value'],
    );
  }
}