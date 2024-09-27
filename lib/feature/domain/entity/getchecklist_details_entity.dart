import 'package:equatable/equatable.dart';


class ChecklistDetailsEntity extends Equatable {
  final int? responseCode;
  final ModelResponseData responseData;
  final int wsReqId;
  final String responseMsg;

   const ChecklistDetailsEntity({
    required this.responseCode,
    required this.responseData,
    required this.wsReqId,
    required this.responseMsg,
  });

  @override
  List<Object?> get props => [responseCode, responseData, wsReqId, responseMsg];
}

class ModelResponseData {
  final List<ChecklistDataDetailsEntity> getChecklistDetails;

  ModelResponseData({
    required this.getChecklistDetails,
  });

  factory ModelResponseData.fromJson(Map<String, dynamic> json) {
    return ModelResponseData(
      getChecklistDetails: List<ChecklistDataDetailsEntity>.from(
          json['get_checklist_details'].map(
              (detailJson) => ChecklistDataDetailsEntity.fromJson(detailJson))),
    );
  }

}

class ChecklistDataDetailsEntity extends Equatable {
  final int seqNo;
  final String checkpoint;
  final int acrhid;
  final String checklistName;
  final int responsibility;
  final int methods;
  final int acrdid;
  final int planid;
  final int acrdcheckpointstatus;
  final int acrhacmphid;
  final int acrdacmpdid;
  final int acrdcheckpointinspectionresult;
  final String acrpinspectionfromtimejson;
  final String personfname;
  final String acrpinspectiondate;
  final int acrhassetoperatorid;
  final String acrpinspectiontotime;
  final String notes;
  final String employeenumber;
  final String headerimageurl;
  final int versionId;
  final String documentNo;
  final String issuedDate;

  const ChecklistDataDetailsEntity(
      {required this.seqNo,
      required this.checkpoint,
      required this.checklistName,
      required this.methods,
      required this.responsibility,
      required this.acrhid,
      required this.acrdid,
      required this.planid,
      required this.acrdcheckpointstatus,
      required this.acrhacmphid,
      required this.acrdacmpdid,
      required this.acrdcheckpointinspectionresult,
      required this.notes,
      required this.acrpinspectionfromtimejson,
      required this.personfname,
      required this.acrpinspectiondate,
      required this.acrhassetoperatorid,
      required this.acrpinspectiontotime,
      required this.employeenumber,
      required this.headerimageurl,
      required this.versionId,
      required this.documentNo,
      required this.issuedDate, });

  @override
  List<Object?> get props => [
        seqNo,
        checkpoint,
        checklistName,
        notes,
        methods,
        responsibility,
        acrhid,
        acrdid,
        planid,
        acrdcheckpointstatus,
        acrdcheckpointinspectionresult,
        acrhacmphid,
        acrdacmpdid,
        acrpinspectionfromtimejson,
        personfname,
        acrpinspectiondate,
        acrhassetoperatorid,
        acrpinspectiontotime,
        employeenumber,
        headerimageurl,
            versionId,documentNo,
      issuedDate,
      ];

  factory ChecklistDataDetailsEntity.fromJson(Map<String, dynamic> json) {
    return ChecklistDataDetailsEntity(
        seqNo: json['acrd_seq_no'],
        checkpoint: json['acrd_checkpoint_description'],
        acrdcheckpointinspectionresult: json['acrd_checkpoint_inspection_result'],
        notes: json['acrd_checkpoint_notes'],
        acrhid: json['acrh_id'],
        acrdid: json['acrd_id'],
        planid: json['acrp_id'],
        acrdcheckpointstatus: json['acrd_checkpoint_status'],
        acrdacmpdid: json['acrd_acmpd_id'],
        acrhacmphid: json['acrh_acmph_id'],
        checklistName: json['acmph_template_name'],
        methods: json['acrd_method'],
        responsibility: json['acrd_responsibility_role'],
        acrpinspectionfromtimejson: json['acrp_inspection_from_time'],
        personfname: json['person_fname'],
        acrpinspectiondate: json['acrp_inspection_date'],
        acrhassetoperatorid: json['acrh_asset_operator_id'],
        acrpinspectiontotime: json['acrp_inspection_to_time'],
        employeenumber: json['employee_number'],
        headerimageurl: json['header_image_url'],
        versionId:json['acmph_version_id_major'],
        documentNo:json['acmph_document_ref_no'],
        issuedDate:json["acmph_issue_date"]
        );
  }
}


  //  {
  //         "acrh_id": 5551,
  //         "acrd_seq_no": 1,
  //         "acrp_inspection_from_time": "09:00:00",
  //         "acmph_template_name": "AVCMM Monthly PM",
  //         "person_fname": "",
  //         "acrd_checkpoint_description": "Check hydraulic motor for abnormal noise coupling , and amps rating. Check OLR relay setting ",
  //         "acrd_responsibility_role": 1,
  //         "acrd_checkpoint_notes": "",
  //         "acrd_id": 112,
  //         "acrp_inspection_date": "2024-08-27 00:00:00.0",
  //         "acrd_checkpoint_status": 1,
  //         "acrh_asset_operator_id": 0,
  //         "acrp_inspection_to_time": "11:00:00",
  //         "acrd_checkpoint_inspection_result": 0,
  //         "acmph_version_id_major": 12,
  //         "employee_number": "",
  //         "acmph_issue_date": "2024-08-24 18:15:21.0",
  //         "acrp_id": 4672,
  //         "header_image_url": "http://localhost:8080/btecMaintenance/document_viewimage/suja/",
  //         "acmph_document_ref_no": "SUJA/ MAINT/F/003",
  //         "acrh_acmph_id": 222,
  //         "acrd_acmpd_id": 1315,
  //         "acrd_method": 6
  //       },