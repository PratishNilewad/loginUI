import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // create a TextEditingController
  final _controller = TextEditingController();

  // dispose it when the widget is unmounted
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Company logo
                Container(
                    height: 150,
                    child: Image.asset(
                      'assets/flower.png',
                    )),
                //Hello text for user
                Text(
                  'Hello there',
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome Back, you\'ve been missed!',
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 20),
                //Textfield for the username
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                        errorText: _errorText,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                //Textfield for the password
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //Button for Login
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //Not a member ? register now text

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(' Register Now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? get _errorText {
    // at any time, we can get the text from _controller.value.text
    final text = _controller.value.text;

    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 4) {
      return 'Too short';
    }
    // return null if the text is valid
    return null;
  }
}
