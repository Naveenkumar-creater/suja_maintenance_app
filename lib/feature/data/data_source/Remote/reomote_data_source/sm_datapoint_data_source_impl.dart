
import '../../../core/sample_datapoint_api_client.dart';
import '../../../model/sm_datapoint_model.dart';
import '../remote_abstract/sm_datapoint_data_source.dart';

class SmDataPointDataSourceimpl extends SmDataPointDataSource {
  final SmDataPointClient dataPointClient;

  SmDataPointDataSourceimpl(this.dataPointClient);

  @override
   Future<SmDataPointModel> getDataPoints(int acrdId, String token) async {
    final response =  await dataPointClient.getDataPoint(acrdId,  token);

    final result = SmDataPointModel.fromJson(response);

    print(result);

    return result;
  }
  

}