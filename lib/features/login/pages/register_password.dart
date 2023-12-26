import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:imperio_app/features/login/pages/login_page.dart';


class RegisterPassword extends StatefulWidget {
  const RegisterPassword({Key? key}) : super(key: key);

  @override
  State<RegisterPassword> createState() => _RegisterPasswordState();
}

class _RegisterPasswordState extends State<RegisterPassword> {
  final _passwordController = TextEditingController();
  late bool _passwordVisible;

  @override
    void initState() {
      super.initState();
    _passwordVisible = false;
  }

  @override
  void dispose() {
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const LoginPage(),
              ),
              (Route<dynamic> route) => route is LoginPage),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Qual a sua senha?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              TextFormField(
                obscureText: !_passwordVisible,
                onChanged: (value) {
                  setState(() {

                  });
                },
                controller: _passwordController,
                decoration: InputDecoration(
                  
                  suffixIcon: InkWell(onTap: () {
                    setState(() {
                   _passwordVisible = !_passwordVisible;
               });
                  }, child: Icon(_passwordVisible
               ? Icons.visibility
               : Icons.visibility_off,),),
                  contentPadding: const EdgeInsets.all(16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(217, 235, 255, 1),
                    ),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelStyle: const TextStyle(color: Colors.black),
                  hintStyle: const TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: _passwordController.text.isNotEmpty
                    ? 
                        () => Get.toNamed('/home')
                    : null,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: _passwordController.text.isNotEmpty
                        ? Colors.yellow
                        : Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Continuar',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: _passwordController.text.isNotEmpty
                            ? Colors.black
                            : Colors.grey.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
