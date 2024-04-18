import 'package:deyarakapp/Featurs/register_screen/auth_cubit/auth_cubit.dart';
import 'package:deyarakapp/Featurs/register_screen/auth_cubit/auth_status.dart';
import 'package:deyarakapp/Featurs/register_screen/widget/TextFieldInput.dart';
import 'package:deyarakapp/Featurs/register_screen/widget/buttom.dart';
import 'package:deyarakapp/constants.dart';
import 'package:deyarakapp/core/utils/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class registerView extends StatelessWidget {
  registerView({super.key});
  final Fullnamecontroller = TextEditingController();
  final Emailcontroller = TextEditingController();
  final Passcontroller = TextEditingController();
  final rePasscontroller = TextEditingController();
  final Phonecontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return BlocProvider(
        create: ((context) => AuthCubit()),
        child: BlocConsumer<AuthCubit, AuthStates>(
          listener: (context, state) {},
          builder: (context, state) {
            ////////////////////////////////////////////////////////////////////////////
            return Scaffold(
              body: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Image.asset('assets/pics/houseSearch.png'),
                  Form(
                    key: formkey,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: queryheight / 40, bottom: queryheight / 20),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xffFF725E), Color(0xffDF8256)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      child: Column(
                        children: [
                          TextFieldInputt(
                            controllerr: Fullnamecontroller,
                            text: 'Fullname',
                            icon: Icons.person,
                            function: () {},
                            colorr: Colors.white,
                            formatter: [],
                            password: false,
                          ),
                          SizedBox(
                            height: queryheight / 45,
                          ),
                          TextFieldInputt(
                            controllerr: Phonecontroller,
                            text: 'Mobile Number',
                            icon: Icons.phone,
                            keybordtype: TextInputType.phone,
                            function: () {},
                            colorr: Colors.white,
                            formatter: [FilteringTextInputFormatter.digitsOnly],
                            password: false,
                          ),
                          SizedBox(
                            height: queryheight / 45,
                          ),
                          TextFieldInputt(
                            controllerr: Emailcontroller,
                            text: 'Email',
                            icon: Icons.mail,
                            function: () {},
                            colorr: Colors.white,
                            formatter: [],
                            keybordtype: TextInputType.emailAddress,
                            password: false,
                          ),
                          SizedBox(
                            height: queryheight / 45,
                          ),
                          TextFieldInputt(
                            controllerr: Passcontroller,
                            text: 'Password',
                            icon: Icons.lock,
                            function: () {},
                            colorr: Colors.white,
                            formatter: [],
                            password: true,
                          ),
                          SizedBox(
                            height: queryheight / 45,
                          ),
                          TextFieldInputt(
                            controllerr: rePasscontroller,
                            text: 'Confirm Password',
                            icon: Icons.lock,
                            function: () {},
                            colorr: Colors.white,
                            formatter: [],
                            password: true,
                          ),
                          SizedBox(
                            height: queryheight / 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: querywidth / 15, right: querywidth / 15),
                            child: Row(
                              children: [
                                Text(
                                  'Have an account ?',
                                  style: myStyle(
                                      color: Colors.white,
                                      size: querywidth / 25),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    GoRouter.of(context).push(AppRouter.klogin);
                                  },
                                  child: Text(
                                    ' Login now',
                                    style: myStyle(
                                        color: Colors.white,
                                        size: querywidth / 25),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: queryheight / 20,
                          ),
                          Buttonn(
                            text: 'Sign UP',
                            ontap: () {
                              if (formkey.currentState!.validate()) {
                                //register
                              }
                            },
                            txtcolorr: ColorMain,
                            colorr: Colors.white,
                            raduis: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
            ////////////////////////////////////////////////////////////////
          },
        ));
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////