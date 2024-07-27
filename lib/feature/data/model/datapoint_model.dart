import '../../domain/entity/datapoint_entity.dart';

class DataPointModel extends DataPointEntity {
  DataPointModel({
    required this.checklistDatapointsList,
    required this.detailImageUrl,
  }) : super(
            checklistDatapointsList: checklistDatapointsList,
            detailImageUrl: detailImageUrl);

  final List<ChecklistDatapointsList> checklistDatapointsList;
  final List<String> detailImageUrl;

  factory DataPointModel.fromJson(Map<String, dynamic> json) {
    return DataPointModel(
      checklistDatapointsList:
          json["response_data"]["checklist_datapoints_list"] == null
              ? []
              : List<ChecklistDatapointsList>.from(json["response_data"]
                      ["checklist_datapoints_list"]!
                  .map((x) => ChecklistDatapointsList.fromJson(x))),
      detailImageUrl: json["response_data"]["detail_image_url"] == null
          ? []
          : List<String>.from(
              json["response_data"]["detail_image_url"]!.map((x) => x)),
    );
  }
}

class ChecklistDatapointsList extends DataPointDetailsEntity {
  ChecklistDatapointsList({
    required this.acrdpAcrdId,
    required this.acrdpId,
    required this.acrdpAmdpDatapointId,
    required this.amdpDatapointDescription,
    required this.datapointValue,
    required this.amtsValue,
    required this.amtsLowerRangeValue,
    required this.amtsUpperRangeValue,
  }) : super(
            acrdpAcrdId: acrdpAcrdId,
            acrdpAmdpDatapointId: acrdpAmdpDatapointId,
            acrdpId: acrdpId,
            amdpDatapointDescription: amdpDatapointDescription,
            amtsLowerRangeValue: amtsLowerRangeValue,
            amtsUpperRangeValue: amtsUpperRangeValue,
            amtsValue: amtsValue,
            datapointValue: datapointValue);

  final int? acrdpAcrdId;
  final int? acrdpId;
  final int? acrdpAmdpDatapointId;
  final String? amdpDatapointDescription;
  final String? datapointValue;
  final String? amtsValue;
  final String? amtsLowerRangeValue;
  final String? amtsUpperRangeValue;

  factory ChecklistDatapointsList.fromJson(Map<String, dynamic> json) {
    return ChecklistDatapointsList(
      acrdpAcrdId: json["acrdp_acrd_id"],
      acrdpId: json["acrdp_id"],
      acrdpAmdpDatapointId: json["acrdp_amdp_datapoint_id"],
      amdpDatapointDescription: json["amdp_datapoint_description"],
      datapointValue: json["acrdp_datapoint_value"],
      amtsValue: json["amts_value"],
      amtsLowerRangeValue: json["amts_lower_range_value"],
      amtsUpperRangeValue: json["amts_upper_range_value"],
    );
  }

  // Map<String, dynamic> toJson() => {
  //     "acrdp_acrd_id": acrdpAcrdId,
  //     "acrdp_id": acrdpId,
  //     "acrdp_amdp_datapoint_id": acrdpAmdpDatapointId,
  //     "amdp_datapoint_description": amdpDatapointDescription,
  //     "acrdp_datapoint_value": acrdpDatapointValue,
  //     "amts_value": amtsValue,
  //     "amts_lower_range_value": amtsLowerRangeValue,
  //     "amts_upper_range_value": amtsUpperRangeValue,
  // };
}

