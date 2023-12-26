import 'package:flutter/material.dart';
import 'package:imperio_app/features/login/pages/register_email.dart';
import 'package:imperio_app/features/login/widget/apple_login_button.dart';
import 'package:imperio_app/features/login/widget/custom_login_buttom.dart';
import 'package:imperio_app/features/login/widget/google_login_button.dart';
import 'package:imperio_app/features/login/widget/login_card.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const LoginCard(),
            const SizedBox(
              height: 42,
            ),
            const GoogleLoginButton(),
            const SizedBox(
              height: 8,
            ),
            const AppleLoginButton(),
            const SizedBox(
              height: 41,
            ),
            const Center(
              child: Text(
                'ou entre com',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(85, 82, 82, 1)),
              ),
            ),
            const SizedBox(
              height: 41,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomLoginButtom(
                    label: 'E-mail',
                    color: Colors.white,
                    onTap: () => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const RegisterEmail(),
                        ),
                        (Route<dynamic> route) => route is RegisterEmail)),
                CustomLoginButtom(
                    label: 'Telefone', color: Colors.yellow, onTap: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
