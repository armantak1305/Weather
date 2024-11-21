class AppException implements Exception{
  String title,errorMsg;
  AppException({required this.title,required this.errorMsg});

  String toError(){
    return'$title,$errorMsg';
  }
}

class FetchException extends AppException{
  FetchException({required String mError}):super(title: "Net",errorMsg: mError);
}
class BadRequestException extends AppException{
  BadRequestException({required String mError}):super(title:"Invalid URL",errorMsg:mError);
}
class UnauthorisedException extends AppException{
  UnauthorisedException({required String mError}):super(title:'Unauthorised',errorMsg: mError);
}
class  InvalidException extends AppException{
  InvalidException({required String mError}): super(title:'Invalid',errorMsg: mError);
}