// ignore_for_file: use_build_context_synchronously
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mediezy_lab_scan/application/register/register_bloc.dart';
import 'package:mediezy_lab_scan/domain/core/dependency_injection/injectable.dart';
import 'package:mediezy_lab_scan/presentation/core/app_colors.dart';
import 'package:mediezy_lab_scan/presentation/core/general_services.dart';
import 'package:mediezy_lab_scan/presentation/common_widgets/custome_formfield_widget.dart';
import 'package:mediezy_lab_scan/presentation/common_widgets/submit_button_widget.dart';
import '../../../core/text_style.dart';
import '../login/login_page.dart';
import 'widget/radio_button_widget.dart';

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
  String? imageTemporary;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .02),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: size.height * .07),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: BlocBuilder<RegisterBloc, RegisterState>(
                        builder: (context, state) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100.r),
                              child: state.image != null
                                  ? Image.file(
                                      File(state.image!),
                                      height: size.width * .28,
                                      width: size.width * .28,
                                      fit: BoxFit.cover,
                                    )
                                  : Image.asset(
                                      "assets/icons/profile pic.png",
                                      height: size.width * .28,
                                      width: size.width * .28,
                                      color: kMainColor,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: size.height * .1,
                      right: size.width * .280,
                      child: IconButton(
                        onPressed: () {
                          selectImage();
                        },
                        icon: Icon(
                          IconlyLight.camera,
                          size: 24.sp,
                          color: kMainColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * .02),
                CustomeFormFieldWidget(
                  hideText: false,
                  controller: labNameController,
                  hintText: "Lab or scannig center name",
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter lab name";
                    } else {
                      return null;
                    }
                  },
                  icon: IconlyLight.home,
                ),
                SizedBox(height: size.height * .01),
                CustomeFormFieldWidget(
                    controller: emailController,
                    hintText: "Email address",
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
                SizedBox(height: size.height * .01),
                CustomeFormFieldWidget(
                    controller: mobileNumberController,
                    hintText: "Mobile number",
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
                SizedBox(height: size.height * .01),
                BlocProvider(
                  create: (context) => getIt<RegisterBloc>(),
                  child: BlocBuilder<RegisterBloc, RegisterState>(
                    builder: (context, state) {
                      return CustomeFormFieldWidget(
                        hideText: true,
                        controller: passwordController,
                        hintText: "Password",
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value!.isEmpty || value.length < 6) {
                            return "Please enter valid password";
                          } else {
                            return null;
                          }
                        },
                        icon: IconlyLight.password,
                        obscureText: state.obscureText,
                        onPressed: () {
                          BlocProvider.of<RegisterBloc>(context).add(
                              RegisterEvent.obscureChanged(state.obscureText));
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: size.height * .01),
                CustomeFormFieldWidget(
                  hideText: false,
                  controller: addressController,
                  hintText: "Address",
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
                SizedBox(height: size.height * .01),
                CustomeFormFieldWidget(
                  hideText: false,
                  controller: locationController,
                  hintText: "Location",
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
                SizedBox(height: size.height * .01),
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
                SizedBox(height: size.height * .01),
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
                              imagePath: state.image,
                              type: state.type,
                            ),
                          );
                        }
                      },
                      buttonText: "Register",
                    );
                  },
                ),
                SizedBox(height: size.height * .015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?", style: black13B500),
                    SizedBox(width: size.width * .01),
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
                      child: Text("Login", style: main12B600),
                    ),
                  ],
                ),
                SizedBox(height: size.height * .01),
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
    imageTemporary = image.path;
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
    imageTemporary = null;
    super.dispose();
  }
}
