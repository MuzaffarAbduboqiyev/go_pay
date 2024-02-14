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
    as _i11;
import 'package:go_pay/controller/auth_controller/login_controller/login_repository.dart'
    as _i16;
import 'package:go_pay/controller/auth_controller/otp_controller/otp_repository.dart'
    as _i17;
import 'package:go_pay/controller/countries_controller/countries_network_service.dart'
    as _i12;
import 'package:go_pay/controller/countries_controller/countries_repository.dart'
    as _i13;
import 'package:go_pay/controller/home_controller/home_network_service.dart'
    as _i14;
import 'package:go_pay/controller/home_controller/home_repository.dart' as _i15;
import 'package:go_pay/controller/notification_controller/notification_network_service.dart'
    as _i7;
import 'package:go_pay/controller/notification_controller/notification_repository.dart'
    as _i8;
import 'package:go_pay/controller/transfer_controller/transfer_network_service.dart'
    as _i9;
import 'package:go_pay/controller/transfer_controller/transfer_repository.dart'
    as _i10;
import 'package:go_pay/model/local_database/shared_pref/database_module.dart'
    as _i19;
import 'package:go_pay/model/local_database/shared_pref/shared_pref_repository.dart'
    as _i5;
import 'package:go_pay/utils/service/network_service/network_module.dart'
    as _i18;
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
    gh.factory<_i7.NotificationNetworkService>(
        () => _i7.NotificationNetworkService(gh<_i6.NetworkService>()));
    gh.factory<_i8.NotificationRepository>(() => _i8.NotificationRepository(
          gh<_i7.NotificationNetworkService>(),
          gh<_i5.SharedPreferencesRepository>(),
        ));
    gh.factory<_i9.TransferNetworkService>(
        () => _i9.TransferNetworkService(gh<_i6.NetworkService>()));
    gh.factory<_i10.TransferRepository>(
        () => _i10.TransferRepository(gh<_i9.TransferNetworkService>()));
    gh.factory<_i11.AuthNetworkService>(
        () => _i11.AuthNetworkService(gh<_i6.NetworkService>()));
    gh.factory<_i12.CountriesNetworkService>(
        () => _i12.CountriesNetworkService(gh<_i6.NetworkService>()));
    gh.factory<_i13.CountriesRepository>(
        () => _i13.CountriesRepository(gh<_i12.CountriesNetworkService>()));
    gh.factory<_i14.HomeNetworkService>(() =>
        _i14.HomeNetworkService(networkService: gh<_i6.NetworkService>()));
    gh.factory<_i15.HomeRepository>(() => _i15.HomeRepository(
          gh<_i5.SharedPreferencesRepository>(),
          gh<_i14.HomeNetworkService>(),
        ));
    gh.factory<_i16.LoginRepository>(() => _i16.LoginRepository(
          gh<_i11.AuthNetworkService>(),
          gh<_i5.SharedPreferencesRepository>(),
        ));
    gh.factory<_i17.OtpRepository>(() => _i17.OtpRepository(
          gh<_i11.AuthNetworkService>(),
          gh<_i5.SharedPreferencesRepository>(),
        ));
    return this;
  }
}

class _$ServiceModule extends _i18.ServiceModule {}

class _$DatabaseModule extends _i19.DatabaseModule {}
