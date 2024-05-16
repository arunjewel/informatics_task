import 'package:flutter/cupertino.dart';
import 'package:informatics_task/models/home_page_data_models.dart';
import 'package:informatics_task/repo/home_repo.dart';

import 'models/base_models/base_api_model.dart';
import 'ui/widgets/network_loading_dialoge.dart';
import 'ui/widgets/show_snack_bar_message.dart';

class HomeController extends ChangeNotifier {
  final HomeRepo homeRepo;

  HomeController({required this.homeRepo}) {
    //init
  }

  List<BannerData> banner1 = [];
  List<BannerData> banner2 = [];

  Future<void> getHomeData({
    required BuildContext context,
  }) async {
    if (banner1.isNotEmpty) {
      return;
    }
    showNetworkLoadingDialog(context);
    final queryParameters = {
      'id': 'bDy',
      'token': 'ajCHtdcLEWatdP5SNK9MuEWLKQ2DdMCA2nIvekBY',
    };
    var res = await homeRepo.getHomeData(queryParameters);

    Navigator.pop(context);
    if (res is Success) {
      HomePageDataModel response =
          homePageDataModelFromJson(res.response.toString());

      if (response.message.toString().toLowerCase() == "success") {
        banner1 = response.banner1;
        banner2 = response.banner2;
        notifyListeners();
      }
    } else if (res is Failure) {
      if (context.mounted) {
        showSnackBarMessage(
            msg: res.errorresponse.toString(), context: context);
      }
    }
  }
}
