import 'package:animation_wrappers/animations/faded_scale_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediezy_lab_scan/application/home/get_user_details/get_user_details_bloc.dart';
import 'package:mediezy_lab_scan/infrastructure/core/token/token.dart';
import 'package:mediezy_lab_scan/presentation/core/app_colors.dart';
<<<<<<< Updated upstream
import 'package:mediezy_lab_scan/presentation/pages/login/login_page.dart';
import 'package:shimmer/shimmer.dart';
=======
import 'package:mediezy_lab_scan/presentation/core/general_services.dart';
import 'package:mediezy_lab_scan/presentation/pages/auth/login/login_page.dart';
import 'package:mediezy_lab_scan/presentation/pages/home/widgets/profile_card_widget.dart';
import '../../../common_widgets/custom_routing.dart';
import '../../../core/text_style.dart';
import '../../edit_profile/edit_profie_page.dart';
>>>>>>> Stashed changes

class HomePageDrawerWidget extends StatelessWidget {
  const HomePageDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
                          height: width * .23,
                          width: width * .23,
                          child: FadedScaleAnimation(
                            scaleDuration: const Duration(milliseconds: 400),
                            fadeDuration: const Duration(milliseconds: 400),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: (state.userdetails.first.labImage == null
                                  ? Image.asset(
                                      "assets/icons/profile pic.png",
                                      color: kMainColor,
                                    )
                                  : Image.network(
                                      state.userdetails.first.labImage
                                          .toString(),
                                      filterQuality: FilterQuality.low,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Image.asset(
                                          "assets/icons/profile pic.png",
                                          color: kMainColor,
                                        ),
                                      ),
                                      loadingBuilder: (BuildContext context,
                                          Widget child,
                                          ImageChunkEvent? loadingProgress) {
                                        if (loadingProgress == null) {
                                          return child;
                                        }
                                        return Center(
                                          child: Shimmer.fromColors(
                                            baseColor: kShimmerBaseColor,
                                            highlightColor:
                                                kShimmerHighlightColor,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(80.r),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    )),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        state.userdetails.first.firstname.toString(),
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Text(
                        "+91 ${state.userdetails.first.mobileNo}",
                        style: TextStyle(fontSize: 13.sp, color: Colors.white),
                      ),
                    ],
                  ),
                );
              }
              return Container();
            },
          ),
<<<<<<< Updated upstream
          ListTile(
            title: const Text('Edit Profile'),
            trailing: const Icon(CupertinoIcons.pen),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Feedback'),
            trailing: const Icon(CupertinoIcons.chat_bubble),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Terms & conditions'),
            trailing: const Icon(CupertinoIcons.news),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Privacy policy'),
            trailing: const Icon(CupertinoIcons.doc_plaintext),
            onTap: () {},
          ),
          ListTile(
            title: const Text('About Us'),
            trailing: const Icon(CupertinoIcons.info),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Contact Us'),
            trailing: const Icon(CupertinoIcons.mail),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Log out'),
            trailing: const Icon(CupertinoIcons.power),
            onTap: () async {
              GetLocalStorage.removeUserTokenAndUid();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                  (route) => false);
            },
          ),
=======
          BlocBuilder<GetUserDetailsBloc, GetUserDetailsState>(
            builder: (context, state) {
              if (state.status) {
                return ProfileCardWidget(
                  text: 'Edit profile',
                  icon: CupertinoIcons.pen,
                  onTap: () {
                     
                    Navigator.push(
                      context,
                    CustomPageRoute(
                                    route: EditProfilePage(
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
                       CustomPageRoute(
                                    route: const LoginPage(),
                      ),
                      (route) => false);
                });
              }),
>>>>>>> Stashed changes
        ],
      ),
    );
  }
}
