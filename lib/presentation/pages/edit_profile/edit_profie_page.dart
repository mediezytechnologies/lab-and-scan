// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'dart:io';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mediezy_lab_scan/application/home/user_update/user_update_bloc.dart';
import 'package:mediezy_lab_scan/presentation/common_widgets/custome_formfield_widget.dart';
import 'package:mediezy_lab_scan/presentation/common_widgets/submit_button_widget.dart';
import 'package:mediezy_lab_scan/presentation/pages/home/home_page.dart';
import '../../common_widgets/custom_routing.dart';
import '../../core/app_colors.dart';
import '../../core/general_services.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage(
      {super.key,
      required this.image,
      required this.name,
      required this.mobileNumber,
      required this.address,
      required this.location});

  final String image;
  final String name;
  final String mobileNumber;
  final String address;
  final String location;

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ImagePicker imagePicker = ImagePicker();
  String? imageTemporary;

  @override
  void initState() {
    nameController.text = widget.name;
    mobileNumberController.text = widget.mobileNumber;
    addressController.text = widget.address;
    locationController.text = widget.location;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit profile"),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
            BlocProvider.of<UserUpdateBloc>(context).add(
              const UserUpdateEvent.userUpdateImageEvent(null),
            );
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .02),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: size.height * .03),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: BlocBuilder<UserUpdateBloc, UserUpdateState>(
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
                                  : widget.image == 'null'
                                      ? Image.asset(
                                          "assets/icons/profile pic.png",
                                          height: size.width * .28,
                                          width: size.width * .28,
                                          color: kMainColor,
                                          fit: BoxFit.cover,
                                        )
                                      : FancyShimmerImage(
                                          height: size.width * .28,
                                          width: size.width * .28,
                                          boxFit: BoxFit.cover,
                                          errorWidget: const Image(
                                            image: AssetImage(
                                                "assets/icons/profile pic.png"),
                                          ),
                                          imageUrl: widget.image,
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
                  controller: nameController,
                  hintText: "Lab or scannig center name",
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  icon: IconlyLight.home,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter lab name";
                    } else {
                      return null;
                    }
                  },
                ),
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
                SizedBox(height: size.height * .05),
                BlocConsumer<UserUpdateBloc, UserUpdateState>(
                  listener: (context, state) {
                    if (state.isError) {
                      GeneralServices.instance.showToastMessage(state.message);
                    }
                    if (state.status) {
                      log("message    ${state.status}");
                      GeneralServices.instance.showToastMessage(state.message);
                      Navigator.push(
                        context,
                        CustomPageRoute(
                                    route: const HomePage(),
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    return SubmitButtonWidget(
                        onTap: () {
                          final storage = GetStorage();
                          BlocProvider.of<UserUpdateBloc>(context).add(
                            UserUpdateEvent.update(
                              nameController.text,
                              mobileNumberController.text,
                              addressController.text,
                              locationController.text,
                              state.image,
                            ),
                          );
                          storage.write('firstname', nameController.text);
                        },
                        loading: state.isLoading,
                        buttonText: "Update");
                  },
                )
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
    BlocProvider.of<UserUpdateBloc>(context)
        .add(UserUpdateEvent.userUpdateImageEvent(imageTemporary));
    log("$imageTemporary======= image");

    log("image >>>$imageTemporary");
  }

  @override
  void dispose() {
    nameController.dispose();
    mobileNumberController.dispose();
    addressController.dispose();
    locationController.dispose();
    imageTemporary = null;
    super.dispose();
  }
}
