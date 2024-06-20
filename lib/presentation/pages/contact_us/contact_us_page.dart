import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../common_widgets/custome_formfield_widget.dart';
import '../../common_widgets/submit_button_widget.dart';
import '../../core/text_style.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact us"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * .030),
            Text("How may we\nhelp you?", style: black16B600),
            SizedBox(height: size.height * .011),
            Text("Let us know your queries & feedbacks", style: black13B500),
            SizedBox(height: size.height * .030),
            Form(
              key: _formKey,
              child: Column(
                children: [
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
                      preIcon: IconlyLight.message),
                  SizedBox(height: size.height * .01),
                  CustomeFormFieldWidget(
                    controller: messageController,
                    hintText: "Write your message",
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter message";
                      } else {
                        return null;
                      }
                    },
                    maxLine: 4,
                    preIcon: IconlyLight.edit,
                  ),
                  SizedBox(height: size.height * .04),
                  SubmitButtonWidget(
                      buttonText: "Submit", loading: false, onTap: () {})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    messageController.dispose();
  }
}
