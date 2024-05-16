import '../resources/remote/http_client.dart';
import '../utils/constants/urls.dart';

class HomeRepo {
  final HttpClientRepo httpClientRepo;

  HomeRepo({required this.httpClientRepo});

  Future<Object> getHomeData(final postData) async {
    var res = await httpClientRepo.postRequest(
        apiUrl: Urls.homeData, postData: postData);
    return res;
  }
}
