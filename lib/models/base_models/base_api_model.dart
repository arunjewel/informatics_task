class ResponseModel {
  bool _isSuccess;
  String _message;
  ResponseModel(this._isSuccess, this._message);

  String get message => _message;
  bool get isSuccess => _isSuccess;
}
class Success {
  int code;
  Object response;
  Success({required this.code, required this.response});
}

class Failure {
  int code;
  Object errorresponse;
  Failure({required this.code, required this.errorresponse});
}
