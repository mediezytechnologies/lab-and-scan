import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediezy_lab_scan/application/login/login_bloc.dart';
import 'package:mediezy_lab_scan/domain/core/dependency_injection/injectable.dart';
import 'package:mediezy_lab_scan/presentation/core/app_colors.dart';
import 'package:mediezy_lab_scan/presentation/core/general_services.dart';
import 'package:mediezy_lab_scan/presentation/common_widgets/auth_heading_text.dart';
import 'package:mediezy_lab_scan/presentation/common_widgets/custome_formfield_widget.dart';
import 'package:mediezy_lab_scan/presentation/common_widgets/submit_button_widget.dart';
import 'package:mediezy_lab_scan/presentation/pages/home/home_page.dart';
import 'package:mediezy_lab_scan/presentation/pages/registation/registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: height * .65,
              color: kMainColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(),
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      'assets/icons/mediezy_icon.png',
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 4,
                    child: Image.asset('assets/images/hero_image.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: height * .61),
                    CustomeFormFieldWidget(
                        controller: emailController,
                        hintText: "Enter email address",
                        textInputType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        validator: (value) {
                          if (value!.isEmpty ||
                              !value.contains("@") ||
                              !value.contains(".")) {
                            return "Please enter the valid email address";
                          } else {
                            return null;
                          }
                        },
                        icon: Icons.email_outlined),
                    SizedBox(height: height * .01),
                    BlocProvider(
                      create: (context) => getIt<LoginBloc>(),
                      child: BlocBuilder<LoginBloc, LoginState>(
                        builder: (context, state) {
                          return CustomeFormFieldWidget(
                            hideText: true,
                            controller: passwordController,
                            hintText: "Enter password",
                            textInputType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            validator: (value) {
                              if (value!.isEmpty || value.length < 6) {
                                return "Please enter valid password";
                              } else {
                                return null;
                              }
                            },
                            icon: Icons.password,
                            obscureText: state.obscureText,
                            onPressed: () {
                              BlocProvider.of<LoginBloc>(context).add(
                                LoginEvent.obscureChanged(state.obscureText),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: height * .010),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {},
                        child: const AuthHeadingText(
                          text: "Forget password",
                          fontWeight: 12,
                        ),
                      ),
                    ),
                    SizedBox(height: height * .04),
                    BlocConsumer<LoginBloc, LoginState>(
                      listener: (context, state) {
                        if (state.isError) {
                          GeneralServices.instance
                              .showToastMessage(state.message);
                          log("ui test error");
                        }
                        if (state.status) {
                          GeneralServices.instance
                              .showToastMessage("Login succesffully");
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                              (route) => false);
                        }
                      },
                      builder: (context, state) {
                        return SubmitButtonWidget(
                          loading: state.isLoading,
                          onTap: () async {
                            bool isValid = _formKey.currentState!.validate();
                            if (isValid) {
                              BlocProvider.of<LoginBloc>(context)
                                  .add(LoginEvent.addLogin(
                                email: emailController.text,
                                password: passwordController.text,
                              ));
                            }
                          },
                          buttonText: "Log in",
                        );
                      },
                    ),
                    SizedBox(height: height * .012),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: width * .01),
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<LoginBloc>(context).add(
                              const LoginEvent.obscureChanged(false),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RegistrationPage(),
                              ),
                            );
                          },
                          child: const AuthHeadingText(
                            text: "Sign up",
                            fontWeight: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
