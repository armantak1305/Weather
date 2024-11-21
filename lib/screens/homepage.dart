
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../domen/custom_page.dart';
import '../domen/utils/ui_helper.dart';
import 'Daily_detail.dart';
import 'bloc/weather_bloc.dart';
import 'bloc/weather_event.dart';
import 'bloc/weather_state.dart';

class HomePage extends StatelessWidget{
  DateFormat mFormat=DateFormat.jms();
  @override
  Widget build(BuildContext context) {
    context.read<WeatherBloc>().add(GetWeather(query: "jodhpur"));
    return Scaffold(
      body: Container(width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image:AssetImage("asset/images/download.png"),fit: BoxFit.cover),
          ),
          child: Stack(children: [
            BlocBuilder<WeatherBloc,WeatherState>(builder: (_,state){
              if(state is LoadingState){
                return Center(child: CircularProgressIndicator(),);
              }
              if(state is ErrorState){
                return Center(child: Text("${state.error}"),);
              }
              if(state is LoadedState){
                var weatherData=state.mData;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      /// title icons
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.drag_handle_outlined,size: 30,),
                          Icon(Icons.contactless_outlined,size: 30,)
                        ],),
                      /// location
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(weatherData.city!.name!,style: mTextStyle16(),),
                              Icon(Icons.location_on_outlined,size: 20,),
                            ],
                          ),
                          Divider(height: 0,
                            thickness: 2,
                            indent: 115,
                            endIndent: 135,
                            color: Colors.black,),
                        ],
                      ),
                      /// day and time
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${weatherData.list![0].dt_txt}')
                          //Text(mFormat.format(DateTime.fromMillisecondsSinceEpoch(weatherData.list![0].dt!.toInt())).toString(),style: mTextStyle15(mFontWeigh: FontWeight.normal),),
                          // Text("${mFormat.format(DateTime.fromMillisecondsSinceEpoch(weatherData.list![0].dt!.toInt())).toString() }",style: mTextStyle15(mFontWeigh: FontWeight.normal),)
                        ],
                      ),
                      SizedBox(height: 130,),
                      Text("${weatherData.list![0].weather![0].main??Container()}",style: mTextStyle16(mFontWeight:FontWeight.normal ),),
                      /// temperature
                      Text("${weatherData.list![0].main!.temp??Container()}",style: mTextStyle35(mFontWeigh: FontWeight.normal),),

                      ///degrees
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Feels like:",style: mTextStyle15(mFontWeigh: FontWeight.normal),),
                          Text("${weatherData.list![0].main!.feels_like??Container()}",style: mTextStyle15(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,size: 20,color: Colors.red,),
                          Text("${weatherData.list![0].main!.temp_max??Container()}",style: mTextStyle15(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_downward,size: 20,color: Colors.blue,),
                          Text("${weatherData.list![0].main!.temp_min}",style: mTextStyle15(mFontWeigh: FontWeight.normal),),

                        ],),
                      SizedBox(height: 100,),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(),));
                      }, child:Text("Daily Details")),
                      /// forecast
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Hourly Forecast",style: mTextStyle16(mFontColor: Colors.white),),
                            Text("72 Hours",style: mTextStyle16(mFontColor: Colors.white),),
                          ],),
                      ),
                      Container(width:MediaQuery.of(context).size.width*0.9,
                        height:MediaQuery.of(context).size.height*0.3,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),

                        child: FittedBox(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              height: 200,
                              child: Column(children: [
                                /// weather time
                                CoustomContainer(width: 350.0,height: 100.0, child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 7,
                                    itemBuilder: (_,index){
                                      return Column(children: [
                                        SizedBox(
                                            width: 100,height: 30,child: Text(mFormat.format(DateTime.fromMillisecondsSinceEpoch(weatherData.list![index].dt!.toInt())),style: mTextStyle16(mFontWeight: FontWeight.normal),)),
                                        SizedBox(width: 10,),
                                        Image.network(weatherData.list![index].weather![0].icon??"")
                                        // Image.asset(AppConstance.weatheData[index]['img'],width: 50,height: 50,)
                                      ],);
                                    }) ,),
                                SizedBox(height: 10,),
                                ///temperatures
                                CoustomContainer(width: 350.0,height: 80.0, child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: weatherData.list!.length,
                                    itemBuilder: (_,index){
                                      return Column(children: [
                                        Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                            child: CoustomContainer(height: 30.0,width: 50.0,color: Colors.blue,child: Center(child: Text(weatherData.list![index].main!.temp.toString()),),
                                            )),
                                        SizedBox(height: 10,),
                                        Row(children: [
                                          Icon(Icons.water_drop,size: 10,),
                                          Text("${weatherData.list![index].main!.pressure}")
                                        ],)

                                      ],);
                                    }) ,),
                              ],),
                            ),
                          ),
                        ),)

                    ],),
                );
              }
              return Container();
            })
          ],)),
    );
  }
}