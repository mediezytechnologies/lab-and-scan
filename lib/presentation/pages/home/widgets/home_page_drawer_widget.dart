import 'package:animation_wrappers/animations/faded_scale_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediezy_lab_scan/application/home/get_user_details/get_user_details_bloc.dart';
import 'package:mediezy_lab_scan/infrastructure/core/token/token.dart';
import 'package:mediezy_lab_scan/presentation/core/app_colors.dart';
import 'package:shimmer/shimmer.dart';

import '../../auth/login/login_page.dart';

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
        ],
      ),
    );
  }
}
