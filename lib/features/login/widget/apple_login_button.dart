import 'package:flutter/material.dart';

class AppleLoginButton extends StatelessWidget {

  const AppleLoginButton({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return InkWell(onTap: () {},
         child: Container(
              margin: const EdgeInsetsDirectional.symmetric(horizontal: 46),
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(44),
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Image.asset('assets/logos/apple_logo.png'),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.15),
                  const Text(
                    'Entrar com Apple',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
       );
  }
}