
import 'package:chat_app/utils/routes/route_name.dart';
import 'package:flutter/material.dart';

import '../../res/component/input_text_field.dart';
import '../../res/component/round_button.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final userNameController= TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final userNameFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // emailController.dispose();
   // passwordController.dispose();
   // emailFocusNode.dispose();
   // passwordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar:AppBar(
        elevation: 0.0,
      ) ,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * .01,
                ),
                Text(
                  "Welcome to   App",
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: height * .01,
                ),
                Text(
                  "Enter your Email Address \n to register your account",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(
                  height: height * .01,
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.only(top: height * 0.06,bottom: height * 0.01),
                    child: Column(
                      children: [
                        InputTextField(
                          myController: userNameController,
                          focusNode: userNameFocusNode,
                          onFieldSubmittedValue: (value) {},
                          hint: "Username",
                          obscureText: false,
                          keyBoardType: TextInputType.emailAddress,
                          onValidator: (value) {
                            return value.isEmpty ? "enter username" : null;
                          },
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        InputTextField(
                          myController: emailController,
                          focusNode: emailFocusNode,
                          onFieldSubmittedValue: (value) {},
                          hint: "Email",
                          obscureText: false,
                          keyBoardType: TextInputType.emailAddress,
                          onValidator: (value) {
                            return value.isEmpty ? "enter email" : null;
                          },
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        InputTextField(
                          myController: passwordController,
                          focusNode: passwordFocusNode,
                          onFieldSubmittedValue: (value) {},
                          hint: "Password",
                          obscureText: false,
                          keyBoardType: TextInputType.emailAddress,
                          onValidator: (value) {
                            return value.isEmpty ? "enter pass" : null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 40,
                ),
                RoundButton(
                  title: "Sign Up",
                  onpress: () {},
                  loading: false,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, RouteName.loginView);
                  },
                  child: Text.rich(

                    TextSpan(
                        text: "Already have an account",
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 15),
                        children: [
                          TextSpan(
                            text: " Login",
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(
                                fontSize: 15,
                                decoration: TextDecoration.underline),
                          )
                        ]),
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
