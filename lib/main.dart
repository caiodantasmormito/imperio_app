import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imperio_app/features/home/pages/home_page.dart';
import 'package:imperio_app/features/home/repository/home_bindings.dart';
import 'package:imperio_app/features/login/pages/login_page.dart';
import 'package:imperio_app/features/login/pages/register_email.dart';
import 'package:imperio_app/features/login/pages/register_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const LoginPage(),
          
          children: [
            GetPage(
              name: '/registerEmail',
              page: () => const RegisterEmail(),
              
            ),
            GetPage(
              name: '/registerPassword',
              page: () => const RegisterPassword(),
              
            ),
             GetPage(
              name: '/home',
              page: () =>  HomePage(),
              binding: HomeBindings(),
            )
          ],
        )
      ],
    );
  }
}