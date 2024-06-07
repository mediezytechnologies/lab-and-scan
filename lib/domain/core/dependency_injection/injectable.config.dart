// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/home/get_completed/get_completed_bloc.dart'
    as _i13;
import '../../../application/home/get_up_coming/get_up_coming_bloc.dart'
    as _i14;
import '../../../application/home/get_user_details/get_user_details_bloc.dart'
    as _i15;
import '../../../application/login/login_bloc.dart' as _i16;
import '../../../application/register/register_bloc.dart' as _i17;
import '../../../infrastructure/home/get_completed/get_completed_repo_impl.dart'
    as _i4;
import '../../../infrastructure/home/get_upcoming/get_upcoming_repo_impl.dart'
    as _i6;
import '../../../infrastructure/home/get_user_details/get_uesr_details_repo_impl.dart'
    as _i8;
import '../../../infrastructure/login/login_repo_impl.dart' as _i10;
import '../../../infrastructure/register/register_repo_impl.dart' as _i12;
import '../../home/get_completed/get_completed_repository.dart' as _i3;
import '../../home/get_upcoming/get_upcoming_repository.dart' as _i5;
import '../../home/get_user_details/get_user_details_repository.dart' as _i7;
import '../../login/login_repository.dart' as _i9;
import '../../register/register_respository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i13.GetCompletedBloc>(
      () => _i13.GetCompletedBloc(get<_i3.GetCompletedRepository>()));
  gh.factory<_i14.GetUpComingBloc>(
      () => _i14.GetUpComingBloc(get<_i5.GetUpcomingRepository>()));
  gh.factory<_i15.GetUserDetailsBloc>(
      () => _i15.GetUserDetailsBloc(get<_i7.GetUserDetailsRepository>()));
  gh.factory<_i16.LoginBloc>(() => _i16.LoginBloc(get<_i9.LoginRepository>()));
  gh.factory<_i17.RegisterBloc>(
      () => _i17.RegisterBloc(get<_i11.RegisterRepository>()));
  return get;
}
