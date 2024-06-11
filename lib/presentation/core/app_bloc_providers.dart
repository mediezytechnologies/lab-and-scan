import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/home/get_completed/get_completed_bloc.dart';
import '../../application/home/get_up_coming/get_up_coming_bloc.dart';
import '../../application/home/get_user_details/get_user_details_bloc.dart';
import '../../application/home/upload_document/upload_document_bloc.dart';
import '../../application/home/user_update/user_update_bloc.dart';
import '../../application/auth/login/login_bloc.dart';
import '../../application/auth/register/register_bloc.dart';
import '../../domain/core/dependency_injection/injectable.dart';

class AppBlocProviders {
  static get allBlocProviders => [
        BlocProvider(create: (context) => getIt<LoginBloc>()),
        BlocProvider(create: (context) => getIt<RegisterBloc>()),
        BlocProvider(create: (context) => getIt<GetUserDetailsBloc>()),
        BlocProvider(create: (context) => getIt<GetUpComingBloc>()),
        BlocProvider(create: (context) => getIt<GetCompletedBloc>()),
        BlocProvider(create: (context) => getIt<UserUpdateBloc>()),
        BlocProvider(create: (context) => getIt<UploadDocumentBloc>()),
      ];
}
