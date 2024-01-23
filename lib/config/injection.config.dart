// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/bloc/home_screen/home_screen_bloc.dart' as _i5;
import '../domain/home_service.dart' as _i3;
import '../infrastructure/memory_home_service.dart' as _i4;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.HomeService>(() => _i4.MemoryHomeService());
  gh.lazySingleton<_i5.HomeScreenBloc>(
      () => _i5.HomeScreenBloc(gh<_i3.HomeService>()));
  return getIt;
}
