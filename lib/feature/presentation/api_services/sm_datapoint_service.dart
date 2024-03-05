import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:suja_shoie_app/feature/domain/usecase/datapoint_usecase.dart';

import '../../../constant/utils/show_snakbar.dart';

import '../../data/core/sample_datapoint_api_client.dart';

import '../../data/data_source/Remote/remote_abstract/sm_datapoint_data_source.dart';

import '../../data/data_source/Remote/reomote_data_source/sm_datapoint_data_source_impl.dart';

import '../../data/repository/sm_datapoint_repository_impl.dart';
import '../../domain/entity/datapoint_entity.dart';
import '../../domain/entity/sm_datapoint_entity.dart';
import '../../domain/repository/sm_datapoint_repository.dart';
import '../../domain/usecase/sm_datapoint_usecase.dart';
import '../providers/datapoint_provider.dart';
import '../providers/sm_datapoint_provider.dart';

class SmDataPointService {
  Future getDatapoints({
    required BuildContext context,
    required int acrdId,
  }) async {
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String token = pref.getString("client_token") ?? "";

      // DateTime now = DateTime.now();

      // String token = "admin-626";

      SmDataPointClient smdataPointClient = SmDataPointClient();
      // ignore: non_constant_identifier_names
      SmDataPointDataSource smdataPointData =
          SmDataPointDataSourceimpl(smdataPointClient);
      SmDataPointRepository smdataPointRepository =
          SmDataPointRepositoryImpl(smdataPointData);


      SmDataPointUseCase dataPointUseCase = SmDataPointUseCase(smdataPointRepository);

      SmDataPointEntity users =
          await dataPointUseCase.execute(acrdId, token);

      var dataPointValue =
          // ignore: use_build_context_synchronously
          Provider.of<SmDataPointProvider>(context, listen: false);

      dataPointValue.setUser(users);
    } catch (e) {
      ShowError.showAlert(context, e.toString());
    }
  }
}
