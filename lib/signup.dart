import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget{
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
              _login(context),
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
          "Welcome, let's get you started!",
          style: TextStyle(fontSize:40,fontWeight:FontWeight.bold),
        ),
      ],
      );
  }
  _inputFeild(context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "First Name",
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
            hintText:"Last Name",
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
            hintText:"Email",
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
              "continue",
              style: TextStyle(fontSize: 20),
              ),
          )
      ],
    );
  }
  _login(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account?"),
        TextButton(onPressed: () {Navigator.pop(context);}, child: Text("login"))
      ],
    );
  }
}