
abstract class WeatherEvent{}

class GetWeather extends WeatherEvent{
  String query;
  GetWeather({required this.query});
}