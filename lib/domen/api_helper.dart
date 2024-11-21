import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart'as httpClient;


import 'exception.dart';

class ApiHelper{
  Future<dynamic> getWeather({required String url})async{
    print("url : $url");
    httpClient.Response res = await httpClient.get(Uri.parse(url));
    try{
      return returnResponse(res);
    }on SocketException catch(e){
      throw FetchException(mError:"No Internet");
    }
  }
  dynamic returnResponse(httpClient.Response response){
    switch(response.statusCode){
      case 200:
        {
          var mData = jsonDecode(response.body);
          return mData;
        }
      case 400:
        throw BadRequestException(mError:response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(mError: response.body.toString());
      case 500:
      default:
        throw FetchException(mError:"Error Occurred while communication with statesCode ${response.body.toString()}");
    }
  }
}