// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_pay/controller/auth_controller/auth_network_service.dart'
    as _i12;
import 'package:go_pay/controller/auth_controller/login_controller/login_repository.dart'
    as _i13;
import 'package:go_pay/model/local_database/shared_pref/database_module.dart'
    as _i15;
import 'package:go_pay/model/local_database/shared_pref/shared_pref_repository.dart'
    as _i9;
import 'package:go_pay/ui/widgets/button_widget/button_widget.dart' as _i3;
import 'package:go_pay/ui/widgets/container_widget/container_decoration.dart'
    as _i4;
import 'package:go_pay/ui/widgets/container_widget/container_widget.dart'
    as _i5;
import 'package:go_pay/ui/widgets/icon_widget/icon_widget.dart' as _i7;
import 'package:go_pay/ui/widgets/text_widget/text_widget.dart' as _i10;
import 'package:go_pay/utils/service/network_service/network_module.dart'
    as _i14;
import 'package:go_pay/utils/service/network_service/request_service.dart'
    as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

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
    gh.factory<_i3.ButtonWidget>(() => _i3.ButtonWidgetImplementation());
    gh.factory<_i4.ContainerDecoration>(
        () => _i4.ContainerDecorationImplementation());
    gh.factory<_i5.ContainerWidget>(() => _i5.ContainerWidgetImplementation());
    gh.lazySingleton<_i6.Dio>(() => serviceModule.dio);
    gh.factory<_i7.IconWidget>(() => _i7.IconWidgetImpl());
    await gh.factoryAsync<_i8.SharedPreferences>(
      () => databaseModule.prefs,
      preResolve: true,
    );
    gh.factory<_i9.SharedPreferencesRepository>(
        () => _i9.SharedPreferencesRepository(gh<_i8.SharedPreferences>()));
    gh.factory<_i10.TextWidget>(() => _i10.TextWidgetImplementation());
    gh.factory<_i11.NetworkService>(() => _i11.NetworkService(
          gh<_i9.SharedPreferencesRepository>(),
          gh<_i6.Dio>(),
        ));
    gh.factory<_i12.AuthNetworkService>(
        () => _i12.AuthNetworkService(gh<_i11.NetworkService>()));
    gh.factory<_i13.LoginRepository>(() => _i13.LoginRepository(
          gh<_i12.AuthNetworkService>(),
          gh<_i9.SharedPreferencesRepository>(),
        ));
    return this;
  }
}

class _$ServiceModule extends _i14.ServiceModule {}

class _$DatabaseModule extends _i15.DatabaseModule {}
