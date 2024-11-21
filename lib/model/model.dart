class CoordModel{
  num? lat;
  num? lon;
  /// constructor
  CoordModel({this.lat,this.lon});
  /// from Json
  factory CoordModel.fromJson(Map<String,dynamic>json)=>CoordModel(
      lat: json['lat'],
      lon: json['lon']
  );
}

class CityModel{
  CoordModel? coord;
  String? country;
  num? id;
  String? name;
  num? population;
  num? sunrise;
  num? sunset;
  num? timezone;

  /// constructor
  CityModel({this.coord,this.country,this.id,this.name,this.population,this.sunrise,this.sunset,this.timezone});
  /// from Json
  factory CityModel.fromJson(Map<String,dynamic>json)=>CityModel(
      coord: CoordModel.fromJson(json['coord']),
      country: json['country'],
      id: json['id'],
      name: json['name'],
      population: json['population'],
      sunrise: json['sunrise'],
      sunset: json['sunset'],
      timezone: json['timezone']
  );
}

class SysModel{
  String? pod;
  /// constructor
  SysModel({this.pod,});
  /// from Json
  factory SysModel.fromJson(Map<String,dynamic>json)=>SysModel(
    pod: json['pod'],

  );
}

class WindModel{
  num? deg;
  num? gust;
  num? speed;

  /// constructor
  WindModel({this.deg,this.gust,this.speed});
  /// from Json
  factory WindModel.fromJson(Map<String,dynamic>json)=>WindModel(
      deg: json['deg'],
      gust: json['gust'],
      speed: json['speed']
  );
}

class CloudsModel{
  num? all;
  /// constructor
  CloudsModel({this.all});
  /// from Json
  factory CloudsModel.fromJson(Map<String,dynamic>json)=>CloudsModel(
    all: json['all'],
  );
}

class WeatherModel{
  String? description;
  String? icon;
  num? id;
  String? main;
  /// constructor
  WeatherModel({this.description,this.icon,this.id,this.main});
  /// form Json
  factory WeatherModel.fromJson(Map<String,dynamic>json)=>WeatherModel(
      description: json['description'],
      icon: json['icon'],
      id: json['id'],
      main: json['main']
  );
}

class MainModel{
  num? feels_like;
  num? grnd_level;
  num? humidity;
  num? pressure;
  num? sea_level;
  num? temp;
  num? temp_max;
  num? temp_min;
  /// constructor
  MainModel({this.feels_like, this.grnd_level, this.humidity, this.pressure,
    this.sea_level,this.temp, this.temp_max, this.temp_min});
  /// from Json
  factory MainModel.fromJson(Map<String,dynamic>json)=>MainModel(
    feels_like: json['feels_like'],
    grnd_level: json['grnd_level'],
    humidity: json['humidity'],
    pressure: json['pressure'],
    sea_level: json['sea_level'],
    temp: json['temp'],
    temp_max: json['temp_max'],
    temp_min: json['temp_min'],
  );
}

class ListModel{
  CloudsModel? clouds;
  num? dt;
  String? dt_txt;
  MainModel? main;
  num? pop;
  SysModel? sys;
  num? visibility;
  List<WeatherModel>? weather;
  WindModel? wind;


  /// constructor
  ListModel({this.clouds,this.dt,this.main,this.dt_txt,this.pop,this.sys,this.visibility,this.weather,this.wind});
  /// from Json
  factory ListModel.fromJson(Map<String,dynamic>json){

    List<WeatherModel> mWeather = [];

    for(Map<String, dynamic> eachWeather in json['weather']){
      mWeather.add(WeatherModel.fromJson(eachWeather));
    }

    return ListModel(
      clouds:CloudsModel.fromJson(json['clouds']) ,
      dt: json['dt'],
      dt_txt: json['dt_txt'],
      main:MainModel.fromJson(json['main']),
      pop: json['pop'],
      sys: SysModel.fromJson(json['sys']),
      visibility: json['visibility'],
      weather: mWeather,
      wind: WindModel.fromJson(json['wind']),
    );
  }
}

class ListDataModel{
  CityModel? city;
  num? cnt;
  String? cod;
  List<ListModel>? list;
  num? message;
  /// constructor
  ListDataModel({this.city,this.cnt,this.cod,this.list,this.message});
  /// from Json
  factory ListDataModel.fromJson(Map<String,dynamic>json){
    List<ListModel>mList=[];
    for(Map<String,dynamic>eachList in json['list']){
      mList.add(ListModel.fromJson(eachList));
    }
    return ListDataModel(
        city: CityModel.fromJson(json['city']),
        cnt: json['cnt'],
        cod: json['cod'],
        list:mList,
        message: json['message']
    );
  }
}