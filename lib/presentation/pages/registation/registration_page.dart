// ignore_for_file: use_build_context_synchronously
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mediezy_lab_scan/application/register/register_bloc.dart';
import 'package:mediezy_lab_scan/domain/core/dependency_injection/injectable.dart';
import 'package:mediezy_lab_scan/presentation/core/app_colors.dart';
import 'package:mediezy_lab_scan/presentation/core/general_services.dart';
import 'package:mediezy_lab_scan/presentation/common_widgets/auth_heading_text.dart';
import 'package:mediezy_lab_scan/presentation/common_widgets/custome_formfield_widget.dart';
import 'package:mediezy_lab_scan/presentation/common_widgets/submit_button_widget.dart';
import 'package:mediezy_lab_scan/presentation/pages/login/login_page.dart';
import 'package:mediezy_lab_scan/presentation/pages/registation/widget/radio_button_widget.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController labNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ImagePicker imagePicker = ImagePicker();
  String? imageTemporary ;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    labNameController.text ="abc";
    emailController.text="eddesssdc@gmail.com";
    passwordController.text="123456";
    mobileNumberController.text="1234567890";
    addressController.text="klfjskdfjksldfjkdsf";
    locationController.text="klfjklsdfj";

    return Scaffold(
     
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .02),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: height * .07),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: BlocBuilder<RegisterBloc, RegisterState>(
                        builder: (context, state) {
                          return Container(
                            height: height * .170,
                            width: width * .350,
                            decoration: const BoxDecoration(),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30.r),
                              child: state.image != null
                                  ? Image.file(
                                      File(state.image!),
                                      height: height * .080,
                                      width: width * .080,
                                      fit: BoxFit.cover,
                                    )
                                  : Image.asset(
                                      "assets/icons/profile pic.png",
                                      height: height * .080,
                                      width: width * .080,
                                      color: kMainColor,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: height * .110,
                      right: width * .190,
                      child: IconButton(
                        onPressed: () {
                          selectImage();
                        },
                        icon: Icon(
                          Icons.add_a_photo,
                          size: 26.sp,
                          weight: 5,
                          color: kMainColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * .03),
                CustomeFormFieldWidget(
                  hideText: false,
                  controller: labNameController,
                  hintText: "Enter lab or scannig center name",
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter lab name";
                    } else {
                      return null;
                    }
                  },
                  icon: Icons.home_outlined,
                ),
                SizedBox(height: height * .01),
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
                CustomeFormFieldWidget(
                    controller: mobileNumberController,
                    hintText: "Enter mobile number",
                    textInputType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    obscureText: false,
                    maxLength: 10,
                    validator: (value) {
                      if (value!.isEmpty || value.length < 10) {
                        return "Please enter the valid phone number";
                      } else {
                        return null;
                      }
                    },
                    icon: Iconsax.mobile),
                SizedBox(height: height * .01),
                BlocProvider(
                  create: (context) => getIt<RegisterBloc>(),
                  child: BlocBuilder<RegisterBloc, RegisterState>(
                    builder: (context, state) {
                      return CustomeFormFieldWidget(
                        hideText: true,
                        controller: passwordController,
                        hintText: "Enter password",
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.next,
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
                          BlocProvider.of<RegisterBloc>(context).add(
                              RegisterEvent.obscureChanged(state.obscureText));
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: height * .01),
                CustomeFormFieldWidget(
                  hideText: false,
                  controller: addressController,
                  hintText: "Enter address",
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter valid address";
                    } else {
                      return null;
                    }
                  },
                  icon: Iconsax.map,
                ),
                SizedBox(height: height * .01),
                CustomeFormFieldWidget(
                  hideText: false,
                  controller: locationController,
                  hintText: "Enter location",
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter valid location";
                    } else {
                      return null;
                    }
                  },
                  icon: Iconsax.location,
                ),
                SizedBox(height: height * .01),
                BlocProvider(
                  create: (context) => getIt<RegisterBloc>(),
                  child: BlocBuilder<RegisterBloc, RegisterState>(
                    builder: (context, state) {
                      return Container(
                        height: 60.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RadioButtonWidget(
                              value: 1,
                              groupValue: state.type,
                              text: 'Lab',
                              onChanged: (value) {
                                BlocProvider.of<RegisterBloc>(context).add(
                                  RegisterEvent.changeType(value!),
                                );
                              },
                            ),
                            RadioButtonWidget(
                              value: 2,
                              groupValue: state.type,
                              text: 'Scan',
                              onChanged: (value) {
                                BlocProvider.of<RegisterBloc>(context).add(
                                  RegisterEvent.changeType(value!),
                                );
                              },
                            ),
                            RadioButtonWidget(
                              value: 3,
                              groupValue: state.type,
                              text: 'Both',
                              onChanged: (value) {
                                BlocProvider.of<RegisterBloc>(context).add(
                                  RegisterEvent.changeType(value!),
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: height * .01),
               
                BlocConsumer<RegisterBloc, RegisterState>(
                  listener: (context, state) {
                    if (state.isError) {
                      GeneralServices.instance.showToastMessage(state.message);
                    }
                    if (state.status) {
                      GeneralServices.instance.showToastMessage(state.message);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    return SubmitButtonWidget(
                      loading: state.isLoading,
                      onTap: () async {
                        bool isValid = _formKey.currentState!.validate();
                        if (isValid) {
                        
                          BlocProvider.of<RegisterBloc>(context).add(
                            RegisterEvent.register(
                              labName: labNameController.text,
                              email: emailController.text,
                              password: passwordController.text,
                              mobileNumber: mobileNumberController.text,
                              address: addressController.text,
                              location: locationController.text,
                         imagePath:state.image,
                              type: state.type,
                            ),
                          );
                        }
                        }  ,
                      buttonText: "Register",
                    );
                  },
                ),
                SizedBox(height: height * .01),
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
                        BlocProvider.of<RegisterBloc>(context).add(
                          const RegisterEvent.selectImage(null),
                        );
                        BlocProvider.of<RegisterBloc>(context).add(
                          const RegisterEvent.changeType(1),
                        );
                        BlocProvider.of<RegisterBloc>(context).add(
                          const RegisterEvent.obscureChanged(false),
                        );
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child:
                          const AuthHeadingText(text: "Login", fontWeight: 14),
                    ),
                  ],
                ),
                SizedBox(height: height * .01),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future selectImage() async {
    var image = await imagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 30,
    );
    if (image == null) return;
imageTemporary =image.path;
       BlocProvider.of<RegisterBloc>(context)
        .add(RegisterEvent.selectImage(imageTemporary));
      log("$imageTemporary======= image");

    log("image >>>$imageTemporary");
   
  }

  @override
  void dispose() {
    labNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    mobileNumberController.dispose();
    addressController.dispose();
    locationController.dispose();
    imageTemporary =null;
    super.dispose();
  }
}
