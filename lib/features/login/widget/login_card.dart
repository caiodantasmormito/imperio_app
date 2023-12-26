import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {

  const LoginCard({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Container(
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/login_image.png',
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  bottom: 90,
                  left: 20,
                  child: Text(
                    'Entre\nem sua conta',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 50,
                  left: 20,
                  child: Text(
                    'Acompanhe seus jogos,\ncampeonatos e times favoritos',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}