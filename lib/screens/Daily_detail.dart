import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../domen/custom_page.dart';
import '../domen/utils/ui_helper.dart';

class DetailPage extends StatelessWidget{
  DateFormat mFormat=DateFormat.d();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 7, child:Scaffold(
        appBar: AppBar(
          leadingWidth: 250,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){Navigator.pop(context);},icon:Icon(Icons.arrow_back_ios_new_outlined)),
              Text("Daily Details",style: mTextStyle20(),)
            ],),
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.contactless_outlined))],
          bottom: TabBar(
              indicatorSize:TabBarIndicatorSize.tab,
              labelPadding: EdgeInsets.all(1),
              indicator:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
                color:Color(0xff516AAB),
              ),
              tabs:[
                Tab(child: Column(children: [Text("Mon"),Text("9/06")],),),
                Tab(child: Column(children: [Text("Tue"),Text("9/07")],),),
                Tab(child: Column(children: [Text("Wed"),Text("9/08")],),),
                Tab(child: Column(children: [Text("Thu"),Text("9/09")],),),
                Tab(child: Column(children: [Text("Fri"),Text("9/10")],),),
                Tab(child: Column(children: [Text("Sat"),Text("9/11")],),),
                Tab(child: Column(children: [Text("Sun"),Text("9/12")],),),
              ]),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 4,
                  child: CoustomContainer(height: 500.0,width: 350.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical:10.0),
                    child: Column(children: [
                      Text("Day"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_cloudy),
                          Text("22oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,color: Colors.red,)
                        ],),
                      Text("Partly Sunny"),
                      SizedBox(height: 10,),
                      /// degree
                      Row(children: [
                        Icon(Icons.thermostat),
                        SizedBox(width: 5,),
                        Text("Feels like",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 180,),
                        Text("22oC",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// wind
                      Row(children: [
                        Icon(Icons.air),
                        SizedBox(width: 5,),
                        Text("Wind",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("7.1 mph SSW",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      /// Wind Gust
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Wind Gust",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("20.9 mph S",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///uv index
                      Row(children: [
                        Icon(Icons.sunny),
                        SizedBox(width: 5,),
                        Text("UV Index",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("5(Moderate)",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///protection
                      Row(children: [
                        Row(
                          children: [
                            Icon(Icons.water_drop_outlined),
                            Icon(Icons.water_drop_outlined),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Precipitation",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("40%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// cloud cover
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Cloud Cover",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 170,),
                        Text("85%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),

                    ],),
                  ),),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  child: CoustomContainer(height: 500.0,width: 350.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical:10.0),
                    child: Column(children: [
                      Text("Day"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_cloudy),
                          Text("22oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,color: Colors.red,)
                        ],),
                      Text("Partly Sunny"),
                      SizedBox(height: 10,),
                      /// degree
                      Row(children: [
                        Icon(Icons.thermostat),
                        SizedBox(width: 5,),
                        Text("Feels like",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 180,),
                        Text("22oC",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// wind
                      Row(children: [
                        Icon(Icons.air),
                        SizedBox(width: 5,),
                        Text("Wind",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("7.1 mph SSW",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      /// Wind Gust
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Wind Gust",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("20.9 mph S",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///uv index
                      Row(children: [
                        Icon(Icons.sunny),
                        SizedBox(width: 5,),
                        Text("UV Index",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("5(Moderate)",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///protection
                      Row(children: [
                        Row(
                          children: [
                            Icon(Icons.water_drop_outlined),
                            Icon(Icons.water_drop_outlined),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Precipitation",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("40%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// cloud cover
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Cloud Cover",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 170,),
                        Text("85%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),

                    ],),
                  ),),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 4,
                  child: CoustomContainer(height: 500.0,width: 350.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical:10.0),
                    child: Column(children: [
                      Text("Day"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_cloudy),
                          Text("22oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,color: Colors.red,)
                        ],),
                      Text("Partly Sunny"),
                      SizedBox(height: 10,),
                      /// degree
                      Row(children: [
                        Icon(Icons.thermostat),
                        SizedBox(width: 5,),
                        Text("Feels like",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 180,),
                        Text("22oC",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// wind
                      Row(children: [
                        Icon(Icons.air),
                        SizedBox(width: 5,),
                        Text("Wind",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("7.1 mph SSW",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      /// Wind Gust
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Wind Gust",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("20.9 mph S",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///uv index
                      Row(children: [
                        Icon(Icons.sunny),
                        SizedBox(width: 5,),
                        Text("UV Index",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("5(Moderate)",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///protection
                      Row(children: [
                        Row(
                          children: [
                            Icon(Icons.water_drop_outlined),
                            Icon(Icons.water_drop_outlined),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Precipitation",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("40%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// cloud cover
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Cloud Cover",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 170,),
                        Text("85%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),

                    ],),
                  ),),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  child: CoustomContainer(height: 500.0,width: 350.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical:10.0),
                    child: Column(children: [
                      Text("Day"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_cloudy),
                          Text("22oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,color: Colors.red,)
                        ],),
                      Text("Partly Sunny"),
                      SizedBox(height: 10,),
                      /// degree
                      Row(children: [
                        Icon(Icons.thermostat),
                        SizedBox(width: 5,),
                        Text("Feels like",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 180,),
                        Text("22oC",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// wind
                      Row(children: [
                        Icon(Icons.air),
                        SizedBox(width: 5,),
                        Text("Wind",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("7.1 mph SSW",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      /// Wind Gust
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Wind Gust",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("20.9 mph S",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///uv index
                      Row(children: [
                        Icon(Icons.sunny),
                        SizedBox(width: 5,),
                        Text("UV Index",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("5(Moderate)",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///protection
                      Row(children: [
                        Row(
                          children: [
                            Icon(Icons.water_drop_outlined),
                            Icon(Icons.water_drop_outlined),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Precipitation",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("40%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// cloud cover
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Cloud Cover",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 170,),
                        Text("85%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),

                    ],),
                  ),),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 4,
                  child: CoustomContainer(height: 500.0,width: 350.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical:10.0),
                    child: Column(children: [
                      Text("Day"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_cloudy),
                          Text("22oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,color: Colors.red,)
                        ],),
                      Text("Partly Sunny"),
                      SizedBox(height: 10,),
                      /// degree
                      Row(children: [
                        Icon(Icons.thermostat),
                        SizedBox(width: 5,),
                        Text("Feels like",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 180,),
                        Text("22oC",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// wind
                      Row(children: [
                        Icon(Icons.air),
                        SizedBox(width: 5,),
                        Text("Wind",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("7.1 mph SSW",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      /// Wind Gust
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Wind Gust",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("20.9 mph S",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///uv index
                      Row(children: [
                        Icon(Icons.sunny),
                        SizedBox(width: 5,),
                        Text("UV Index",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("5(Moderate)",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///protection
                      Row(children: [
                        Row(
                          children: [
                            Icon(Icons.water_drop_outlined),
                            Icon(Icons.water_drop_outlined),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Precipitation",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("40%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// cloud cover
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Cloud Cover",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 170,),
                        Text("85%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),

                    ],),
                  ),),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  child: CoustomContainer(height: 500.0,width: 350.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical:10.0),
                    child: Column(children: [
                      Text("Day"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_cloudy),
                          Text("22oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,color: Colors.red,)
                        ],),
                      Text("Partly Sunny"),
                      SizedBox(height: 10,),
                      /// degree
                      Row(children: [
                        Icon(Icons.thermostat),
                        SizedBox(width: 5,),
                        Text("Feels like",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 180,),
                        Text("22oC",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// wind
                      Row(children: [
                        Icon(Icons.air),
                        SizedBox(width: 5,),
                        Text("Wind",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("7.1 mph SSW",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      /// Wind Gust
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Wind Gust",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("20.9 mph S",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///uv index
                      Row(children: [
                        Icon(Icons.sunny),
                        SizedBox(width: 5,),
                        Text("UV Index",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("5(Moderate)",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///protection
                      Row(children: [
                        Row(
                          children: [
                            Icon(Icons.water_drop_outlined),
                            Icon(Icons.water_drop_outlined),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Precipitation",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("40%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// cloud cover
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Cloud Cover",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 170,),
                        Text("85%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),

                    ],),
                  ),),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 4,
                  child: CoustomContainer(height: 500.0,width: 350.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical:10.0),
                    child: Column(children: [
                      Text("Day"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_cloudy),
                          Text("22oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,color: Colors.red,)
                        ],),
                      Text("Partly Sunny"),
                      SizedBox(height: 10,),
                      /// degree
                      Row(children: [
                        Icon(Icons.thermostat),
                        SizedBox(width: 5,),
                        Text("Feels like",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 180,),
                        Text("22oC",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// wind
                      Row(children: [
                        Icon(Icons.air),
                        SizedBox(width: 5,),
                        Text("Wind",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("7.1 mph SSW",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      /// Wind Gust
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Wind Gust",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("20.9 mph S",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///uv index
                      Row(children: [
                        Icon(Icons.sunny),
                        SizedBox(width: 5,),
                        Text("UV Index",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("5(Moderate)",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///protection
                      Row(children: [
                        Row(
                          children: [
                            Icon(Icons.water_drop_outlined),
                            Icon(Icons.water_drop_outlined),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Precipitation",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("40%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// cloud cover
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Cloud Cover",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 170,),
                        Text("85%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),

                    ],),
                  ),),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  child: CoustomContainer(height: 500.0,width: 350.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical:10.0),
                    child: Column(children: [
                      Text("Day"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_cloudy),
                          Text("22oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,color: Colors.red,)
                        ],),
                      Text("Partly Sunny"),
                      SizedBox(height: 10,),
                      /// degree
                      Row(children: [
                        Icon(Icons.thermostat),
                        SizedBox(width: 5,),
                        Text("Feels like",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 180,),
                        Text("22oC",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// wind
                      Row(children: [
                        Icon(Icons.air),
                        SizedBox(width: 5,),
                        Text("Wind",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("7.1 mph SSW",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      /// Wind Gust
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Wind Gust",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("20.9 mph S",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///uv index
                      Row(children: [
                        Icon(Icons.sunny),
                        SizedBox(width: 5,),
                        Text("UV Index",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("5(Moderate)",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///protection
                      Row(children: [
                        Row(
                          children: [
                            Icon(Icons.water_drop_outlined),
                            Icon(Icons.water_drop_outlined),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Precipitation",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("40%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// cloud cover
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Cloud Cover",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 170,),
                        Text("85%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),

                    ],),
                  ),),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 4,
                  child: CoustomContainer(height: 500.0,width: 350.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical:10.0),
                    child: Column(children: [
                      Text("Day"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_cloudy),
                          Text("22oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,color: Colors.red,)
                        ],),
                      Text("Partly Sunny"),
                      SizedBox(height: 10,),
                      /// degree
                      Row(children: [
                        Icon(Icons.thermostat),
                        SizedBox(width: 5,),
                        Text("Feels like",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 180,),
                        Text("22oC",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// wind
                      Row(children: [
                        Icon(Icons.air),
                        SizedBox(width: 5,),
                        Text("Wind",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("7.1 mph SSW",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      /// Wind Gust
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Wind Gust",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("20.9 mph S",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///uv index
                      Row(children: [
                        Icon(Icons.sunny),
                        SizedBox(width: 5,),
                        Text("UV Index",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("5(Moderate)",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///protection
                      Row(children: [
                        Row(
                          children: [
                            Icon(Icons.water_drop_outlined),
                            Icon(Icons.water_drop_outlined),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Precipitation",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("40%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// cloud cover
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Cloud Cover",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 170,),
                        Text("85%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),

                    ],),
                  ),),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  child: CoustomContainer(height: 500.0,width: 350.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical:10.0),
                    child: Column(children: [
                      Text("Day"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_cloudy),
                          Text("22oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,color: Colors.red,)
                        ],),
                      Text("Partly Sunny"),
                      SizedBox(height: 10,),
                      /// degree
                      Row(children: [
                        Icon(Icons.thermostat),
                        SizedBox(width: 5,),
                        Text("Feels like",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 180,),
                        Text("22oC",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// wind
                      Row(children: [
                        Icon(Icons.air),
                        SizedBox(width: 5,),
                        Text("Wind",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("7.1 mph SSW",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      /// Wind Gust
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Wind Gust",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("20.9 mph S",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///uv index
                      Row(children: [
                        Icon(Icons.sunny),
                        SizedBox(width: 5,),
                        Text("UV Index",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("5(Moderate)",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///protection
                      Row(children: [
                        Row(
                          children: [
                            Icon(Icons.water_drop_outlined),
                            Icon(Icons.water_drop_outlined),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Precipitation",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("40%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// cloud cover
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Cloud Cover",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 170,),
                        Text("85%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),

                    ],),
                  ),),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 4,
                  child: CoustomContainer(height: 500.0,width: 350.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical:10.0),
                    child: Column(children: [
                      Text("Day"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_cloudy),
                          Text("22oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,color: Colors.red,)
                        ],),
                      Text("Partly Sunny"),
                      SizedBox(height: 10,),
                      /// degree
                      Row(children: [
                        Icon(Icons.thermostat),
                        SizedBox(width: 5,),
                        Text("Feels like",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 180,),
                        Text("22oC",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// wind
                      Row(children: [
                        Icon(Icons.air),
                        SizedBox(width: 5,),
                        Text("Wind",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("7.1 mph SSW",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      /// Wind Gust
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Wind Gust",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("20.9 mph S",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///uv index
                      Row(children: [
                        Icon(Icons.sunny),
                        SizedBox(width: 5,),
                        Text("UV Index",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("5(Moderate)",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///protection
                      Row(children: [
                        Row(
                          children: [
                            Icon(Icons.water_drop_outlined),
                            Icon(Icons.water_drop_outlined),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Precipitation",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("40%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// cloud cover
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Cloud Cover",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 170,),
                        Text("85%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),

                    ],),
                  ),),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  child: CoustomContainer(height: 500.0,width: 350.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical:10.0),
                    child: Column(children: [
                      Text("Day"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_cloudy),
                          Text("22oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,color: Colors.red,)
                        ],),
                      Text("Partly Sunny"),
                      SizedBox(height: 10,),
                      /// degree
                      Row(children: [
                        Icon(Icons.thermostat),
                        SizedBox(width: 5,),
                        Text("Feels like",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 180,),
                        Text("22oC",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// wind
                      Row(children: [
                        Icon(Icons.air),
                        SizedBox(width: 5,),
                        Text("Wind",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("7.1 mph SSW",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      /// Wind Gust
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Wind Gust",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("20.9 mph S",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///uv index
                      Row(children: [
                        Icon(Icons.sunny),
                        SizedBox(width: 5,),
                        Text("UV Index",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("5(Moderate)",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///protection
                      Row(children: [
                        Row(
                          children: [
                            Icon(Icons.water_drop_outlined),
                            Icon(Icons.water_drop_outlined),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Precipitation",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("40%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// cloud cover
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Cloud Cover",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 170,),
                        Text("85%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),

                    ],),
                  ),),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 4,
                  child: CoustomContainer(height: 500.0,width: 350.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical:10.0),
                    child: Column(children: [
                      Text("Day"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_cloudy),
                          Text("22oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,color: Colors.red,)
                        ],),
                      Text("Partly Sunny"),
                      SizedBox(height: 10,),
                      /// degree
                      Row(children: [
                        Icon(Icons.thermostat),
                        SizedBox(width: 5,),
                        Text("Feels like",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 180,),
                        Text("22oC",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// wind
                      Row(children: [
                        Icon(Icons.air),
                        SizedBox(width: 5,),
                        Text("Wind",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("7.1 mph SSW",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      /// Wind Gust
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Wind Gust",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("20.9 mph S",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///uv index
                      Row(children: [
                        Icon(Icons.sunny),
                        SizedBox(width: 5,),
                        Text("UV Index",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("5(Moderate)",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///protection
                      Row(children: [
                        Row(
                          children: [
                            Icon(Icons.water_drop_outlined),
                            Icon(Icons.water_drop_outlined),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Precipitation",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("40%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// cloud cover
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Cloud Cover",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 170,),
                        Text("85%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),

                    ],),
                  ),),
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 4,
                  child: CoustomContainer(height: 500.0,width: 350.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical:10.0),
                    child: Column(children: [
                      Text("Day"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wb_cloudy),
                          Text("22oC",style: mTextStyle35(mFontWeigh: FontWeight.normal),),
                          Icon(Icons.arrow_upward,color: Colors.red,)
                        ],),
                      Text("Partly Sunny"),
                      SizedBox(height: 10,),
                      /// degree
                      Row(children: [
                        Icon(Icons.thermostat),
                        SizedBox(width: 5,),
                        Text("Feels like",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 180,),
                        Text("22oC",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// wind
                      Row(children: [
                        Icon(Icons.air),
                        SizedBox(width: 5,),
                        Text("Wind",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("7.1 mph SSW",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      /// Wind Gust
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Wind Gust",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("20.9 mph S",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///uv index
                      Row(children: [
                        Icon(Icons.sunny),
                        SizedBox(width: 5,),
                        Text("UV Index",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 120,),
                        Text("5(Moderate)",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      ///protection
                      Row(children: [
                        Row(
                          children: [
                            Icon(Icons.water_drop_outlined),
                            Icon(Icons.water_drop_outlined),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Precipitation",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 140,),
                        Text("40%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),
                      /// cloud cover
                      Row(children: [
                        Icon(Icons.cloud),
                        SizedBox(width: 5,),
                        Text("Cloud Cover",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Color(0xff9FA2B2)),),
                        SizedBox(width: 170,),
                        Text("85%",style: mTextStyle20(),)
                      ],),
                      Divider(height: 20,thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(height: 10,),

                    ],),
                  ),),
                ),
              ],
            ),
          ),



        ])
    ),);

  }
}

