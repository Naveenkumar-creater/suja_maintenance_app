import 'package:suja_shoie_app/feature/data/model/datapoint_model.dart';


import '../../domain/repository/datapoint_repository.dart';
import '../../domain/repository/sm_datapoint_repository.dart';
import '../data_source/Remote/remote_abstract/datapoint_data_source.dart';
import '../data_source/Remote/remote_abstract/sm_datapoint_data_source.dart';
import '../model/sm_datapoint_model.dart';

class  SmDataPointRepositoryImpl implements  SmDataPointRepository {
  final SmDataPointDataSource  dataPointDataSource ;

   SmDataPointRepositoryImpl(this.dataPointDataSource);

  @override
  Future<SmDataPointModel> getDataPoints(
      int acrdId, String token) async {
SmDataPointModel dataPointModel  =
        await dataPointDataSource.getDataPoints(
            acrdId, token);
    return dataPointModel;
  }
  



}