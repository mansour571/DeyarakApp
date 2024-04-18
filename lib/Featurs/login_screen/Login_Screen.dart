import 'package:deyarakapp/Featurs/login_screen/CreateAccount_Text.dart';
import 'package:deyarakapp/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:deyarakapp/Featurs/register_screen/widget/TextFieldInput.dart';
import 'package:deyarakapp/Featurs/register_screen/widget/buttom.dart';
import 'package:deyarakapp/constants.dart';
import 'package:go_router/go_router.dart';
// Import any authentication service or logic here

class Login_screen extends StatelessWidget {
  Login_screen({Key? key}) : super(key: key);

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login(BuildContext context) {
    final String username = usernameController.text.trim();
    final String password = passwordController.text.trim();

    // Validate username and password
    if (username.isEmpty || password.isEmpty) {
      // Show error message if username or password is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Username and password are required"),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Perform your authentication logic here
    // For example, authenticate with a service or compare with predefined values
    bool isAuthenticated = (username == 'admin' && password == 'admin');

    if (isAuthenticated) {
      // Navigate to another page if authentication is successful
      GoRouter.of(context).push(AppRouter.khome); // Navigate to home page
    } else {
      // Show error message if authentication fails
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Invalid username or password"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Image.asset(
            'assets/pics/houseSearch.png',
            height: queryheight / 2,
          ),
          Container(
            padding: EdgeInsets.only(top: queryheight / 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffFF725E), Color(0xffDF8256)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            height: querywidth,
            child: Column(
              children: [
                TextFieldInputt(
                  controllerr: usernameController,
                  text: 'Username',
                  colorr: Colors.white,
                  function: () {},
                  icon: Icons.person,
                  formatter: [],
                  password: false,
                ),
                SizedBox(
                  height: queryheight / 45,
                ),
                TextFieldInputt(
                  controllerr: passwordController,
                  text: 'Password',
                  colorr: Colors.white,
                  function: () {},
                  icon: Icons.lock,
                  formatter: [],
                  password: true,
                ),
                SizedBox(
                  height: queryheight / 45,
                ),
                Buttonn(
                  text: 'Login',
                  ontap: () => _login(context), // Call _login method on tap
                  txtcolorr: ColorMain,
                  colorr: Colors.white,
                  raduis: 50,
                ),
                SizedBox(
                  height: queryheight / 35,
                ),
                Create_account_text() // You may implement this widget
              ],
            ),
          )
        ],
      ),
    );
  }
}
