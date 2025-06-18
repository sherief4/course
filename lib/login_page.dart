import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordHidden = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: formKey,

            child: Column(
              spacing: 20.0,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  controller: emailController,
                  validator: (String? value) {
                    String typedValue = value ?? "";
                    if (typedValue.isEmpty) {
                      return "Email can't be empty";
                    }else if(!typedValue.contains("@")){
                      return "Please Enter A Valid Email";
                    } else {
                      return null;
                    }
                  },
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
                      borderSide: BorderSide(color: Colors.deepPurple),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                    ),
                  ),
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: passwordHidden,
                  maxLines: 1,
                  validator: (String? value){
                    String typedValue = value ?? "";
                    if(typedValue.isEmpty){
                      return "Password is required";
                    }else if (typedValue.length < 8){
                      return "Password Must be at lease 8 characters";
                    }else{
                      return null ;
                    }
                  },
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12.0),
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.lock, color: Colors.deepPurple),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordHidden = !passwordHidden;
                        });
                      },
                      icon: Icon(Icons.visibility, color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
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
                InkWell(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      print("Email is ${emailController.text}");
                      print("Password is ${passwordController.text}");
                    }else{
                      print("Form is not valid ");
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 24.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
