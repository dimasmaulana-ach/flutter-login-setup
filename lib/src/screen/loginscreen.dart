import 'package:flutter/material.dart';
import 'package:mobileapp/src/utils/responsive.dart';
import 'package:mobileapp/src/widget/space.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = "";
  String password = "";

  Future<void> _submittedLogin () async {
    try {
      // await fetch(url)
      print("LoginSuccess $username and $password");
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(widthResponsive(context, 3)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login Page",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontResponsive(context, 12)
            ),),
            SpaceWidget(height: widthResponsive(context, 1),),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                  labelText: "Username"
              ),
              onChanged: (text){
                setState(() {
                  username = text;
                });
              },
            ),
            SpaceWidget(),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                  labelText: "Password"
              ),
              onChanged: (text){
                setState(() {
                  password = text;
                });
              },
            ),
            SpaceWidget(),
            ElevatedButton(onPressed: (){
              _submittedLogin();
            }, child: Text('Login', style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            )
          ],
        ),
      )
    );
  }
}
