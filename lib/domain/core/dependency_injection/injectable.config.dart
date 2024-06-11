// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/auth/login/login_bloc.dart' as _i21;
import '../../../application/auth/register/register_bloc.dart' as _i22;
import '../../../application/home/get_completed/get_completed_bloc.dart'
    as _i18;
import '../../../application/home/get_up_coming/get_up_coming_bloc.dart'
    as _i19;
import '../../../application/home/get_user_details/get_user_details_bloc.dart'
    as _i20;
import '../../../application/home/upload_document/upload_document_bloc.dart'
    as _i23;
import '../../../application/home/user_update/user_update_bloc.dart' as _i17;
import '../../../infrastructure/auth/login/login_repo_impl.dart' as _i10;
import '../../../infrastructure/auth/register/register_repo_impl.dart' as _i12;
import '../../../infrastructure/home/get_completed/get_completed_repo_impl.dart'
    as _i4;
import '../../../infrastructure/home/get_upcoming/get_upcoming_repo_impl.dart'
    as _i6;
import '../../../infrastructure/home/get_user_details/get_uesr_details_repo_impl.dart'
    as _i8;
import '../../../infrastructure/home/update_user/update_user_repo_impl.dart'
    as _i14;
import '../../../infrastructure/home/upload_document/upload_document_repo_impl.dart'
    as _i16;
import '../../auth/login/login_repository.dart' as _i9;
import '../../auth/register/register_respository.dart' as _i11;
import '../../home/get_completed/get_completed_repository.dart' as _i3;
import '../../home/get_upcoming/get_upcoming_repository.dart' as _i5;
import '../../home/get_user_details/get_user_details_repository.dart' as _i7;
import '../../home/update_user/update_user_repository.dart' as _i13;
import '../../home/upload_document/upload_document_repository.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.GetCompletedRepository>(
      () => _i4.GetCompletedRepoImpl());
  gh.lazySingleton<_i5.GetUpcomingRepository>(() => _i6.GetUpcomingRepoImpl());
  gh.lazySingleton<_i7.GetUserDetailsRepository>(() => _i8.GetUserRepoImpl());
  gh.lazySingleton<_i9.LoginRepository>(() => _i10.LoginRepoImpl());
  gh.lazySingleton<_i11.RegisterRepository>(() => _i12.RegisterRepoImpl());
  gh.lazySingleton<_i13.UpdateUserRepository>(() => _i14.UpdateUserRepoImpl());
  gh.lazySingleton<_i15.UploadDocumentRepository>(
      () => _i16.UploadDocumentRepoImpl());
  gh.factory<_i17.UserUpdateBloc>(
      () => _i17.UserUpdateBloc(get<_i13.UpdateUserRepository>()));
  gh.factory<_i18.GetCompletedBloc>(
      () => _i18.GetCompletedBloc(get<_i3.GetCompletedRepository>()));
  gh.factory<_i19.GetUpComingBloc>(
      () => _i19.GetUpComingBloc(get<_i5.GetUpcomingRepository>()));
  gh.factory<_i20.GetUserDetailsBloc>(
      () => _i20.GetUserDetailsBloc(get<_i7.GetUserDetailsRepository>()));
  gh.factory<_i21.LoginBloc>(() => _i21.LoginBloc(get<_i9.LoginRepository>()));
  gh.factory<_i22.RegisterBloc>(
      () => _i22.RegisterBloc(get<_i11.RegisterRepository>()));
  gh.factory<_i23.UploadDocumentBloc>(
      () => _i23.UploadDocumentBloc(get<_i15.UploadDocumentRepository>()));
  return get;
}
