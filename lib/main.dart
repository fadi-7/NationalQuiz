import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:nationalquiz/app/my_app.dart';
import 'package:nationalquiz/core/services/location_service.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app/my_app_controller.dart';
import 'core/services/connectivity_service.dart';
import 'core/services/notification_service.dart';


Future<void> main() async { 
  
  WidgetsFlutterBinding.ensureInitialized();
   await Get.putAsync(
    () async {
       var sharedPref = await SharedPreferences.getInstance();
     
      return sharedPref;
    },
  );
   
  Get.put(ConnectivityService());
  Get.put(LocationService() );
  Get.put(MyAppController());
    // Get.put(NotificationService());



  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(MyApp());
}
