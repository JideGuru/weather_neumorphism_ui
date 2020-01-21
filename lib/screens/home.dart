import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:weather_neumorphism_ui/util/consts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(3, 3),
                    color: Colors.black12,
                    blurRadius: 5,
                  ),
                  BoxShadow(
                    offset: Offset(-3, -3),
                    color: Colors.white,
                    blurRadius: 5,
                  )
                ],
              ),
              child: Icon(
                Icons.arrow_back_ios,
                size: 14,
              ),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "${Constants.appName}",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: <Widget>[
          Container(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).primaryColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(3, 3),
                        color: Colors.black12,
                        blurRadius: 5,
                      ),
                      BoxShadow(
                        offset: Offset(-3, -3),
                        color: Colors.white,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Period",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).textTheme.caption.color,
                              ),
                            ),

                            SizedBox(width: 30,),
                            Text(
                              "Last 30 days",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),

                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).primaryColor,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(3, 3),
                                color: Colors.black12,
                                blurRadius: 5,
                              ),
                              BoxShadow(
                                offset: Offset(-3, -3),
                                color: Colors.white,
                                blurRadius: 5,
                              )
                            ],
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20,),

          Container(
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(6, 6),
                        color: Colors.black12,
                        blurRadius: 5,
                      ),
                      BoxShadow(
                        offset: Offset(-6, -6),
                        color: Colors.white,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Feather.loader,
                          size: 250,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).primaryColor,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(3, 3),
                                  color: Colors.black12,
                                  blurRadius: 5,
                                ),
                                BoxShadow(
                                  offset: Offset(-3, -3),
                                  color: Colors.white,
                                  blurRadius: 5,
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Feather.thermometer,
                                  color: Theme.of(context).accentColor,
                                  size: 40,
                                ),
                                SizedBox(height: 20,),
                                Text(
                                  "7°C",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Theme.of(context).accentColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 150,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(3, 3),
                      color: Colors.black12,
                      blurRadius: 5,
                    ),
                    BoxShadow(
                      offset: Offset(-3, -3),
                      color: Colors.white,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Feather.cloud_snow,
                        size: 40,
                        color: Theme.of(context).accentColor,
                      ),

                      Text(
                        "Cool",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Neumorphic(
                height: 150,
                width: 130,
                status: NeumorphicStatus.convex,
                decoration: NeumorphicDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Feather.sun,
                        size: 40,
                        color: Colors.deepOrange,
                      ),

                      Text(
                        "Warm",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),

          Neumorphic(
            status: NeumorphicStatus.convex,
            height: 50,
            decoration: NeumorphicDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Update Settings",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
