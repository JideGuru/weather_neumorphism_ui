import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:weather_neumorphism_ui/components/custom_container.dart';
import 'package:weather_neumorphism_ui/util/consts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        children: <Widget>[
          buildPeriodContainer(context),
          SizedBox(height: 20.0),
          buildTempCircle(context),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildTempIndicator(context, false),
              buildTempIndicator(context, true),
            ],
          ),
          SizedBox(height: 20.0),
          CustomContainer(
            height: 50.0,
            child: Center(
              child: Text(
                "Update Settings",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildAppBar(BuildContext context) {
    return AppBar(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CustomContainer(
            height: 40.0,
            width: 40.0,
            child: Icon(
              Icons.arrow_back_ios,
              size: 14.0,
            ),
          ),
        ],
      ),
      centerTitle: true,
      elevation: 0.0,
      title: Text(
        "${Constants.appName}",
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  buildPeriodContainer(BuildContext context) {
    return Container(
      height: 100.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CustomContainer(
            height: 70.0,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                      SizedBox(
                        width: 30.0,
                      ),
                      Text(
                        "Last 30 days",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  CustomContainer(
                    height: 40.0,
                    width: 40.0,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildTempCircle(BuildContext context) {
    return Container(
      height: 300.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CustomContainer(
            height: 280.0,
            width: MediaQuery.of(context).size.width,
            isCircle: true,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Feather.loader,
                    size: 250.0,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CustomContainer(
                      height: 200.0,
                      width: MediaQuery.of(context).size.width,
                      isCircle: true,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Feather.thermometer,
                            color: Theme.of(context).accentColor,
                            size: 40.0,
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            "7°C",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
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
    );
  }

  buildTempIndicator(BuildContext context, bool isWarm) {
    return CustomContainer(
      height: 150.0,
      width: 130.0,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              isWarm ? Feather.sun : Feather.cloud_snow,
              size: 40.0,
              color: isWarm ? Colors.deepOrange : Theme.of(context).accentColor,
            ),
            Text(
              isWarm ? 'Warm' : 'Cool',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
