


import '../entity/sm_datapoint_entity.dart';
import '../repository/datapoint_repository.dart';
import '../repository/sm_datapoint_repository.dart';

class SmDataPointUseCase {
  final SmDataPointRepository  smdataPointRepository;

  SmDataPointUseCase(this.smdataPointRepository);

Future<SmDataPointEntity> execute(
      int acrdId,  String token) async {
    return smdataPointRepository.getDataPoints(
        acrdId, token);
  }
}
