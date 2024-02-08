// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_pay/controller/auth_controller/auth_network_service.dart'
    as _i7;
import 'package:go_pay/controller/auth_controller/login_controller/login_repository.dart'
    as _i8;
import 'package:go_pay/model/local_database/shared_pref/database_module.dart'
    as _i10;
import 'package:go_pay/model/local_database/shared_pref/shared_pref_repository.dart'
    as _i5;
import 'package:go_pay/utils/service/network_service/network_module.dart'
    as _i9;
import 'package:go_pay/utils/service/network_service/request_service.dart'
    as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    final databaseModule = _$DatabaseModule();
    gh.lazySingleton<_i3.Dio>(() => serviceModule.dio);
    await gh.factoryAsync<_i4.SharedPreferences>(
      () => databaseModule.prefs,
      preResolve: true,
    );
    gh.factory<_i5.SharedPreferencesRepository>(
        () => _i5.SharedPreferencesRepository(gh<_i4.SharedPreferences>()));
    gh.factory<_i6.NetworkService>(() => _i6.NetworkService(
          gh<_i5.SharedPreferencesRepository>(),
          gh<_i3.Dio>(),
        ));
    gh.factory<_i7.AuthNetworkService>(
        () => _i7.AuthNetworkService(gh<_i6.NetworkService>()));
    gh.factory<_i8.LoginRepository>(() => _i8.LoginRepository(
          gh<_i7.AuthNetworkService>(),
          gh<_i5.SharedPreferencesRepository>(),
        ));
    return this;
  }
}

class _$ServiceModule extends _i9.ServiceModule {}

class _$DatabaseModule extends _i10.DatabaseModule {}
