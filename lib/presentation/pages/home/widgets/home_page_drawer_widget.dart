import 'package:animation_wrappers/animations/faded_scale_animation.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediezy_lab_scan/application/home/get_user_details/get_user_details_bloc.dart';
import 'package:mediezy_lab_scan/infrastructure/core/token/token.dart';
import 'package:mediezy_lab_scan/presentation/core/app_colors.dart';
import 'package:mediezy_lab_scan/presentation/core/general_services.dart';
import 'package:mediezy_lab_scan/presentation/pages/auth/login/login_page.dart';
import 'package:mediezy_lab_scan/presentation/pages/home/widgets/profile_card_widget.dart';
import '../../../core/text_style.dart';
import '../../edit_profile/edit_profie_page.dart';

class HomePageDrawerWidget extends StatelessWidget {
  const HomePageDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          BlocBuilder<GetUserDetailsBloc, GetUserDetailsState>(
            builder: (context, state) {
              if (state.isError) {
                return Center(
                  child: Text(state.message),
                );
              }
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state.status) {
                return DrawerHeader(
                  decoration: BoxDecoration(color: kMainColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FadedScaleAnimation(
                        scaleDuration: const Duration(milliseconds: 400),
                        fadeDuration: const Duration(milliseconds: 400),
                        child: SizedBox(
                          height: size.width * .23,
                          width: size.width * .23,
                          child: FadedScaleAnimation(
                            scaleDuration: const Duration(milliseconds: 400),
                            fadeDuration: const Duration(milliseconds: 400),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.r),
                              child: (state.userdetails.first.labImage == 'null'
                                  ? Image.asset(
                                      "assets/icons/profile pic.png",
                                      color: kMainColor,
                                      height: size.height * .09,
                                      width: size.width * .18,
                                    )
                                  : FancyShimmerImage(
                                      boxFit: BoxFit.cover,
                                      errorWidget: const Image(
                                        image: AssetImage(
                                            "assets/icons/profile pic.png"),
                                      ),
                                      imageUrl: state.userdetails.first.labImage
                                          .toString(),
                                    )),
                            ),
                          ),
                        ),
                      ),
                      Text(state.userdetails.first.firstname.toString(),
                          style: white14B700),
                      Text(
                        "+91 ${state.userdetails.first.mobileNo}",
                        style: white13B500,
                      ),
                    ],
                  ),
                );
              }
              return Container();
            },
          ),
          BlocBuilder<GetUserDetailsBloc, GetUserDetailsState>(
            builder: (context, state) {
              if (state.status) {
                return ProfileCardWidget(
                  text: 'Edit profile',
                  icon: CupertinoIcons.pen,
                  onTap: () {
                     
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditProfilePage(
                          address: state.userdetails.first.address.toString(),
                          image: state.userdetails.first.labImage.toString(),
                          location: state.userdetails.first.location.toString(),
                          mobileNumber:
                              state.userdetails.first.mobileNo.toString(),
                          name: state.userdetails.first.firstname.toString(),
                        ),
                      ),
                    );
                    
                  },
                );
              }
              return Container();
            },
          ),
          ProfileCardWidget(
              text: 'Terms & conditions',
              icon: CupertinoIcons.news,
              onTap: () {}),
          ProfileCardWidget(
              text: 'Privacy policy',
              icon: CupertinoIcons.doc_plaintext,
              onTap: () {}),
          ProfileCardWidget(
              text: 'About us', icon: CupertinoIcons.info, onTap: () {}),
          ProfileCardWidget(
              text: 'Contact us', icon: CupertinoIcons.mail, onTap: () {}),
          ProfileCardWidget(
              text: 'Log out',
              icon: CupertinoIcons.power,
              onTap: () {
                GeneralServices.instance
                    .appCloseDialogue(context, "Are you sure to log out?", () {
                  GetLocalStorage.removeUserTokenAndUid();
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                      (route) => false);
                });
              }),
        ],
      ),
    );
  }
}
