import '../../../model/sm_datapoint_model.dart';

abstract class SmDataPointDataSource {
  Future<SmDataPointModel> getDataPoints(
      int acrdId,String token);
}
