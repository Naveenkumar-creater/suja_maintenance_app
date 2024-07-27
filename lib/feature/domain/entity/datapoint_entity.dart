import 'package:equatable/equatable.dart';



class DataPointEntity extends Equatable {

  final List<DataPointDetailsEntity> checklistDatapointsList;
    final List<String> detailImageUrl;

  DataPointEntity({
 
    required this.checklistDatapointsList,
       required this.detailImageUrl,
  });
  
  @override
  // TODO: implement props
  List<Object?> get props => [checklistDatapointsList,detailImageUrl];

 

}

class DataPointDetailsEntity extends Equatable {
  final int? acrdpAcrdId;
    final int? acrdpId;
    final int? acrdpAmdpDatapointId;
    final String? amdpDatapointDescription;
    final String? datapointValue;
    final String? amtsValue;
    final String? amtsLowerRangeValue;
    final String? amtsUpperRangeValue;

    
  DataPointDetailsEntity({
    required this.acrdpAcrdId,
    // required this.amdpDatapointId,
    required this.acrdpId,
    // required this.acrdId,
    required this.datapointValue,
    // required this.acrdpAcmdpId,
    required this.acrdpAmdpDatapointId,
    required this.amdpDatapointDescription,
    // required this.aptmName,
     required this.amtsLowerRangeValue,
     required this.amtsValue,
     required this.amtsUpperRangeValue,
  });
  
  @override
  // TODO: implement props
  List<Object?> get props => [
    acrdpAcrdId,acrdpId,datapointValue,acrdpAmdpDatapointId,amdpDatapointDescription,amtsLowerRangeValue,amtsValue,amtsUpperRangeValue


  ];

 
}




