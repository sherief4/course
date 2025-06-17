import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            spacing: 20.0,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: emailController,
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
                decoration: InputDecoration(
                  label: Text("Email Address"),
                  prefixIcon: Icon(Icons.email, color: Colors.deepPurple),
                  suffixIcon: Icon(Icons.edit, color: Colors.grey),
                  hint: Text(
                    "Enter your email",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                maxLines: 1,
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
                decoration: InputDecoration(
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.lock, color: Colors.deepPurple),
                  suffixIcon: Icon(Icons.edit, color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                    ),
                  ),
                  hint: Text(
                    "Enter your password",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  print("Email is : ${emailController.text}");
                  print("Password is : ${passwordController.text}");
                },
                color: Colors.deepPurple,
                child: Text("Login", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
