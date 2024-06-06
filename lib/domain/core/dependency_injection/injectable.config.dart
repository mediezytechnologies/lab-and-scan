// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/home/get_up_coming/model/get_up_coming_bloc.dart'
    as _i11;
import '../../../application/home/get_user_details/get_user_details_bloc.dart'
    as _i12;
import '../../../application/login/login_bloc.dart' as _i13;
import '../../../application/register/register_bloc.dart' as _i14;
import '../../../infrastructure/home/get_upcoming/get_upcoming_repo_impl.dart'
    as _i4;
import '../../../infrastructure/home/get_user_details/get_uesr_details_repo_impl.dart'
    as _i6;
import '../../../infrastructure/login/login_repo_impl.dart' as _i8;
import '../../../infrastructure/register/register_repo_impl.dart' as _i10;
import '../../home/get_upcoming/get_upcoming_repository.dart' as _i3;
import '../../home/get_user_details/get_user_details_repository.dart' as _i5;
import '../../login/login_repository.dart' as _i7;
import '../../register/register_respository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.GetUpcomingRepository>(() => _i4.GetUpcomingRepoImpl());
  gh.lazySingleton<_i5.GetUserDetailsRepository>(() => _i6.GetUserRepoImpl());
  gh.lazySingleton<_i7.LoginRepository>(() => _i8.LoginRepoImpl());
  gh.lazySingleton<_i9.RegisterRepository>(() => _i10.RegisterRepoImpl());
  gh.factory<_i11.GetUpComingBloc>(
      () => _i11.GetUpComingBloc(get<_i3.GetUpcomingRepository>()));
  gh.factory<_i12.GetUserDetailsBloc>(
      () => _i12.GetUserDetailsBloc(get<_i5.GetUserDetailsRepository>()));
  gh.factory<_i13.LoginBloc>(() => _i13.LoginBloc(get<_i7.LoginRepository>()));
  gh.factory<_i14.RegisterBloc>(
      () => _i14.RegisterBloc(get<_i9.RegisterRepository>()));
  return get;
}
