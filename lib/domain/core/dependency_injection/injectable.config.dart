// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/home/get_user_details/get_user_details_bloc.dart'
    as _i9;
import '../../../application/login/login_bloc.dart' as _i10;
import '../../../application/register/register_bloc.dart' as _i11;
import '../../../infrastructure/home/get_user_details/get_uesr_details_repo_impl.dart'
    as _i4;
import '../../../infrastructure/login/login_repo_impl.dart' as _i6;
import '../../../infrastructure/register/register_repo_impl.dart' as _i8;
import '../../home/get_user_details/get_user_details_repository.dart' as _i3;
import '../../login/login_repository.dart' as _i5;
import '../../register/register_respository.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.GetUserDetailsRepository>(() => _i4.GetUserRepoImpl());
  gh.lazySingleton<_i5.LoginRepository>(() => _i6.LoginRepoImpl());
  gh.lazySingleton<_i7.RegisterRepository>(() => _i8.RegisterRepoImpl());
  gh.factory<_i9.GetUserDetailsBloc>(
      () => _i9.GetUserDetailsBloc(get<_i3.GetUserDetailsRepository>()));
  gh.factory<_i10.LoginBloc>(() => _i10.LoginBloc(get<_i5.LoginRepository>()));
  gh.factory<_i11.RegisterBloc>(
      () => _i11.RegisterBloc(get<_i7.RegisterRepository>()));
  return get;
}
