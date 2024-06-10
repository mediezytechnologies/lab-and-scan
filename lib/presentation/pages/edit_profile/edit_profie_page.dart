import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mediezy_lab_scan/presentation/common_widgets/custome_formfield_widget.dart';
import 'package:mediezy_lab_scan/presentation/common_widgets/submit_button_widget.dart';

import '../../core/app_colors.dart';

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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.r),
                            child:
                                // state.image != null
                                //     ? Image.file(
                                //         File(state.image!),
                                //         height: size.width * .28,
                                //         width: size.width * .28,
                                //         fit: BoxFit.cover,
                                //       )
                                //     :
                                widget.image == 'null'
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
                                        boxFit: BoxFit.fill,
                                        errorWidget: const Image(
                                          image: AssetImage(
                                              "assets/icons/profile pic.png"),
                                        ),
                                        imageUrl: widget.image,
                                      )),
                      ),
                    ),
                    Positioned(
                      top: size.height * .1,
                      right: size.width * .280,
                      child: IconButton(
                        onPressed: () {
                          //selectImage();
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
                SubmitButtonWidget(
                    onTap: () {}, loading: false, buttonText: "Update")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
