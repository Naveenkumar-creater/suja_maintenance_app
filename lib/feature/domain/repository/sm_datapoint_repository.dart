import 'package:suja_shoie_app/feature/data/data_source/Remote/remote_abstract/sm_datapoint_data_source.dart';

import '../entity/sm_datapoint_entity.dart';



abstract class SmDataPointRepository {
  SmDataPointRepository(SmDataPointDataSource smdataPointData);

  Future<SmDataPointEntity> getDataPoints(
      int acrdId, String token);
}
