

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheather_app/screens/bloc/weather_event.dart';
import 'package:wheather_app/screens/bloc/weather_state.dart';

import '../../domen/api_helper.dart';
import '../../domen/urls.dart';
import '../../model/model.dart';

class WeatherBloc extends Bloc<WeatherEvent,WeatherState>{
  ApiHelper apiHelper;
  WeatherBloc({required this.apiHelper}):super(InitialState()){
    on<GetWeather>((event,emit)async{
      emit(LoadingState());
      try{
        var resJson=await apiHelper.getWeather(url: UrlsPage.getWeather(event.query));
        if(resJson!=null) {
          var mWeather = ListDataModel.fromJson(resJson);
          emit(LoadedState(mData: mWeather));
        }else{
          emit(ErrorState(error:"Error Occurred !!!!"));
        }
      }
      // on AppException catch (e){
      //   emit(ErrorState(error: e.toError()));
      // }
      catch(e){
        emit(ErrorState(error: e.toString()));
      }
    });
  }
}
