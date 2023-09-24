import 'package:flutter/material.dart';
import 'package:divhacks_2023_project/signup.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children:[
              _header(context),
              _inputFeild(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }
  _header(context){
    return const Column(
      children: [
        Text(
          "ILERA",
          style: TextStyle(fontSize:40,fontWeight:FontWeight.bold),
        ),
        Text("Enter Login Information"),
      ],
      );
  }
  _inputFeild(context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.person),
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText:"Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.person),
            ),
            obscureText: true,
          ),
          const SizedBox(height:10),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Login",
              style: TextStyle(fontSize: 20),
              ),
          )
      ],
    );
  }
  _forgotPassword(context){
    return TextButton(onPressed: () {}, child: Text("Forgot Password?"));
  }
  _signup(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?"),
        TextButton(onPressed: () {
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SigninPage()),
            );
        }, child: Text("sign up"))
      ],
    );
  }
}