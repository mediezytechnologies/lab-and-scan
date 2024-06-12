// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/auth/login/login_bloc.dart' as _i27;
import '../../../application/auth/register/register_bloc.dart' as _i28;
import '../../../application/home/get_completed/get_completed_bloc.dart'
    as _i22;
import '../../../application/home/get_previous_completed/get_previous_completed_bloc.dart'
    as _i23;
import '../../../application/home/get_up_coming/get_up_coming_bloc.dart'
    as _i24;
import '../../../application/home/get_user_details/get_user_details_bloc.dart'
    as _i25;
import '../../../application/home/incompleted_previous/incompleted_previous_bloc.dart'
    as _i26;
import '../../../application/home/upload_document/upload_document_bloc.dart'
    as _i29;
import '../../../application/home/user_update/user_update_bloc.dart' as _i21;
import '../../../infrastructure/auth/login/login_repo_impl.dart' as _i14;
import '../../../infrastructure/auth/register/register_repo_impl.dart' as _i16;
import '../../../infrastructure/home/get_completed/get_completed_repo_impl.dart'
    as _i4;
import '../../../infrastructure/home/get_previous_completed/get_previous_completed_repo_impl.dart'
    as _i6;
import '../../../infrastructure/home/get_upcoming/get_upcoming_repo_impl.dart'
    as _i8;
import '../../../infrastructure/home/get_user_details/get_uesr_details_repo_impl.dart'
    as _i10;
import '../../../infrastructure/home/incompleted_previous/incompleted_previous_repo_impl.dart'
    as _i12;
import '../../../infrastructure/home/update_user/update_user_repo_impl.dart'
    as _i18;
import '../../../infrastructure/home/upload_document/upload_document_repo_impl.dart'
    as _i20;
import '../../auth/login/login_repository.dart' as _i13;
import '../../auth/register/register_respository.dart' as _i15;
import '../../home/get_completed/get_completed_repository.dart' as _i3;
import '../../home/get_previous_completed/get_previous_completed_repository.dart'
    as _i5;
import '../../home/get_upcoming/get_upcoming_repository.dart' as _i7;
import '../../home/get_user_details/get_user_details_repository.dart' as _i9;
import '../../home/incompleted_previous/incompleted_previous_repository.dart'
    as _i11;
import '../../home/update_user/update_user_repository.dart' as _i17;
import '../../home/upload_document/upload_document_repository.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i5.GetPreviousCompletedRepository>(
      () => _i6.GetPreviousCompletedRepoImpl());
  gh.lazySingleton<_i7.GetUpcomingRepository>(() => _i8.GetUpcomingRepoImpl());
  gh.lazySingleton<_i9.GetUserDetailsRepository>(() => _i10.GetUserRepoImpl());
  gh.lazySingleton<_i11.IncompletedPreviousRepository>(
      () => _i12.IncompletedPreviousRepoImpl());
  gh.lazySingleton<_i13.LoginRepository>(() => _i14.LoginRepoImpl());
  gh.lazySingleton<_i15.RegisterRepository>(() => _i16.RegisterRepoImpl());
  gh.lazySingleton<_i17.UpdateUserRepository>(() => _i18.UpdateUserRepoImpl());
  gh.lazySingleton<_i19.UploadDocumentRepository>(
      () => _i20.UploadDocumentRepoImpl());
  gh.factory<_i21.UserUpdateBloc>(
      () => _i21.UserUpdateBloc(get<_i17.UpdateUserRepository>()));
  gh.factory<_i22.GetCompletedBloc>(
      () => _i22.GetCompletedBloc(get<_i3.GetCompletedRepository>()));
  gh.factory<_i23.GetPreviousCompletedBloc>(() =>
      _i23.GetPreviousCompletedBloc(get<_i5.GetPreviousCompletedRepository>()));
  gh.factory<_i24.GetUpComingBloc>(
      () => _i24.GetUpComingBloc(get<_i7.GetUpcomingRepository>()));
  gh.factory<_i25.GetUserDetailsBloc>(
      () => _i25.GetUserDetailsBloc(get<_i9.GetUserDetailsRepository>()));
  gh.factory<_i26.IncompletedPreviousBloc>(() =>
      _i26.IncompletedPreviousBloc(get<_i11.IncompletedPreviousRepository>()));
  gh.factory<_i27.LoginBloc>(() => _i27.LoginBloc(get<_i13.LoginRepository>()));
  gh.factory<_i28.RegisterBloc>(
      () => _i28.RegisterBloc(get<_i15.RegisterRepository>()));
  gh.factory<_i29.UploadDocumentBloc>(
      () => _i29.UploadDocumentBloc(get<_i19.UploadDocumentRepository>()));
  return get;
}
