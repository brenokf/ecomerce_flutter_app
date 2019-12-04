import 'package:flutter/material.dart';
import 'package:ecomerce_flutter_app/pages/home.dart';
import 'package:provider/provider.dart';
import 'package:ecomerce_flutter_app/components/user_provider.dart';
import 'package:ecomerce_flutter_app/pages/splash.dart';
import 'package:ecomerce_flutter_app/pages/login.dart';


void main() {
  runApp(ChangeNotifierProvider(builder: (_) => UserProvider.initialize(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.deepOrange
        ),
        home: ScreensController(),
      )));
}

 class ScreensController  extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     final user = Provider.of<UserProvider>(context);
     switch(user.status){
       case Status.Uninitialized:
         return Splash();
       case Status.Unauthenticated:
       case Status.Authenticating:
         return Login();
       case Status.Authenticated:
         return HomePage();
       default: return Login();
     }
   }
 }


