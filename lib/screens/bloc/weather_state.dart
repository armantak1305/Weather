
import '../../model/model.dart';

abstract class WeatherState {}

class InitialState extends WeatherState{}
class LoadingState extends WeatherState{}
class LoadedState extends WeatherState{
  ListDataModel mData;
  LoadedState({required this.mData});
}
class ErrorState extends WeatherState{
  String error;
  ErrorState({required this.error});
}