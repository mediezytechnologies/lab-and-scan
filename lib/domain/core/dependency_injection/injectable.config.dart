// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/auth/login/login_bloc.dart' as _i30;
import '../../../application/auth/register/register_bloc.dart' as _i31;
import '../../../application/home/contact_us/contact_us_bloc.dart' as _i24;
import '../../../application/home/get_completed/get_completed_bloc.dart'
    as _i25;
import '../../../application/home/get_previous_completed/get_previous_completed_bloc.dart'
    as _i26;
import '../../../application/home/get_up_coming/get_up_coming_bloc.dart'
    as _i27;
import '../../../application/home/get_user_details/get_user_details_bloc.dart'
    as _i28;
import '../../../application/home/incompleted_previous/incompleted_previous_bloc.dart'
    as _i29;
import '../../../application/home/upload_document/upload_document_bloc.dart'
    as _i32;
import '../../../application/home/user_update/user_update_bloc.dart' as _i23;
import '../../../infrastructure/auth/login/login_repo_impl.dart' as _i16;
import '../../../infrastructure/auth/register/register_repo_impl.dart' as _i18;
import '../../../infrastructure/home/contact_us/contact_us_repo_impl.dart'
    as _i4;
import '../../../infrastructure/home/get_completed/get_completed_repo_impl.dart'
    as _i6;
import '../../../infrastructure/home/get_previous_completed/get_previous_completed_repo_impl.dart'
    as _i8;
import '../../../infrastructure/home/get_upcoming/get_upcoming_repo_impl.dart'
    as _i10;
import '../../../infrastructure/home/get_user_details/get_uesr_details_repo_impl.dart'
    as _i12;
import '../../../infrastructure/home/incompleted_previous/incompleted_previous_repo_impl.dart'
    as _i14;
import '../../../infrastructure/home/update_user/update_user_repo_impl.dart'
    as _i20;
import '../../../infrastructure/home/upload_document/upload_document_repo_impl.dart'
    as _i22;
import '../../auth/login/login_repository.dart' as _i15;
import '../../auth/register/register_respository.dart' as _i17;
import '../../home/contact_us/contact_us_repository.dart' as _i3;
import '../../home/get_completed/get_completed_repository.dart' as _i5;
import '../../home/get_previous_completed/get_previous_completed_repository.dart'
    as _i7;
import '../../home/get_upcoming/get_upcoming_repository.dart' as _i9;
import '../../home/get_user_details/get_user_details_repository.dart' as _i11;
import '../../home/incompleted_previous/incompleted_previous_repository.dart'
    as _i13;
import '../../home/update_user/update_user_repository.dart' as _i19;
import '../../home/upload_document/upload_document_repository.dart'
    as _i21; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.ContactUsRepository>(() => _i4.ContactUsRepoImpl());
  gh.lazySingleton<_i5.GetCompletedRepository>(
      () => _i6.GetCompletedRepoImpl());
  gh.lazySingleton<_i7.GetPreviousCompletedRepository>(
      () => _i8.GetPreviousCompletedRepoImpl());
  gh.lazySingleton<_i9.GetUpcomingRepository>(() => _i10.GetUpcomingRepoImpl());
  gh.lazySingleton<_i11.GetUserDetailsRepository>(() => _i12.GetUserRepoImpl());
  gh.lazySingleton<_i13.IncompletedPreviousRepository>(
      () => _i14.IncompletedPreviousRepoImpl());
  gh.lazySingleton<_i15.LoginRepository>(() => _i16.LoginRepoImpl());
  gh.lazySingleton<_i17.RegisterRepository>(() => _i18.RegisterRepoImpl());
  gh.lazySingleton<_i19.UpdateUserRepository>(() => _i20.UpdateUserRepoImpl());
  gh.lazySingleton<_i21.UploadDocumentRepository>(
      () => _i22.UploadDocumentRepoImpl());
  gh.factory<_i23.UserUpdateBloc>(
      () => _i23.UserUpdateBloc(get<_i19.UpdateUserRepository>()));
  gh.factory<_i24.ContactUsBloc>(
      () => _i24.ContactUsBloc(get<_i3.ContactUsRepository>()));
  gh.factory<_i25.GetCompletedBloc>(
      () => _i25.GetCompletedBloc(get<_i5.GetCompletedRepository>()));
  gh.factory<_i26.GetPreviousCompletedBloc>(() =>
      _i26.GetPreviousCompletedBloc(get<_i7.GetPreviousCompletedRepository>()));
  gh.factory<_i27.GetUpComingBloc>(
      () => _i27.GetUpComingBloc(get<_i9.GetUpcomingRepository>()));
  gh.factory<_i28.GetUserDetailsBloc>(
      () => _i28.GetUserDetailsBloc(get<_i11.GetUserDetailsRepository>()));
  gh.factory<_i29.IncompletedPreviousBloc>(() =>
      _i29.IncompletedPreviousBloc(get<_i13.IncompletedPreviousRepository>()));
  gh.factory<_i30.LoginBloc>(() => _i30.LoginBloc(get<_i15.LoginRepository>()));
  gh.factory<_i31.RegisterBloc>(
      () => _i31.RegisterBloc(get<_i17.RegisterRepository>()));
  gh.factory<_i32.UploadDocumentBloc>(
      () => _i32.UploadDocumentBloc(get<_i21.UploadDocumentRepository>()));
  return get;
}
