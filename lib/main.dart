import 'package:flutter/material.dart';
import 'package:iot_app/floors_list.dart';
import 'package:iot_app/report.dart';
import 'package:iot_app/report2.dart';
import 'package:iot_app/reserve_confirmation.dart';
import 'package:iot_app/reserve_room.dart';
import 'package:iot_app/rest_room_screen.dart';
import 'package:iot_app/rooms_list.dart';

import 'add_building.dart';
import 'add_conference_room.dart';
import 'add_floor.dart';
import 'add_rest_room.dart';
import 'buildings_list.dart';
import 'conference_screen.dart';
import 'log.dart';
import 'menu.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
        '/':(context)=>Login(),
        '/menu':(context)=>Menu(),
        '/conference_page':(context)=>conferencePage(),
        '/reserve_room':(context)=>ReserveRoom(),
        '/reserve_confirmation':(context)=>ReserveConfirmation(),
        '/restroom_page':(context)=>restRoomPage(),
        '/report':(context)=>report(),
        '/report2':(context)=>report2(),
        '/buildinglist':(context)=>BuildingsList(),
        '/roomslist':(context)=>RoomsList(),
        '/floorslist':(context)=>FloorsList(),
        '/addbuilding':(context)=>AddBuilding(),
        '/addconferenceroom':(context)=>AddConference(),
        '/addfloor':(context)=>AddFloor(),
        '/addrestroom':(context)=>AddRestRoom(),





    },

  ));
}
