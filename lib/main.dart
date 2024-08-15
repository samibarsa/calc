

import 'package:calc_app/Features/home/domain/model/our_model.dart';
import 'package:calc_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Features/home/presentation/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(CalcApp());
}

// ignore: must_be_immutable
class CalcApp extends StatelessWidget {
  CalcApp({super.key});

  DatabaseReference ref = FirebaseDatabase.instance.ref();

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home() 
        
      ),
    );
  }
}
