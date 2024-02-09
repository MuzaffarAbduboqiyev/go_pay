// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_pay/controller/auth_controller/auth_network_service.dart'
    as _i15;
import 'package:go_pay/controller/auth_controller/login_controller/login_repository.dart'
    as _i18;
import 'package:go_pay/controller/home_controller/home_network_service.dart'
    as _i16;
import 'package:go_pay/controller/home_controller/home_repository.dart' as _i17;
import 'package:go_pay/model/local_database/shared_pref/database_module.dart'
    as _i20;
import 'package:go_pay/model/local_database/shared_pref/shared_pref_repository.dart'
    as _i11;
import 'package:go_pay/ui/widgets/button_widget/button_widget.dart' as _i3;
import 'package:go_pay/ui/widgets/card_widget/card_shape.dart' as _i4;
import 'package:go_pay/ui/widgets/card_widget/card_widget.dart' as _i13;
import 'package:go_pay/ui/widgets/container_widget/container_decoration.dart'
    as _i5;
import 'package:go_pay/ui/widgets/container_widget/container_widget.dart'
    as _i6;
import 'package:go_pay/ui/widgets/icon_widget/icon_widget.dart' as _i8;
import 'package:go_pay/ui/widgets/image/image_widget.dart' as _i9;
import 'package:go_pay/ui/widgets/text_widget/text_widget.dart' as _i12;
import 'package:go_pay/utils/service/network_service/network_module.dart'
    as _i19;
import 'package:go_pay/utils/service/network_service/request_service.dart'
    as _i14;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

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
    gh.factory<_i4.CardShape>(() => _i4.CardShapeImplementation());
    gh.factory<_i5.ContainerDecoration>(
        () => _i5.ContainerDecorationImplementation());
    gh.factory<_i6.ContainerWidget>(() => _i6.ContainerWidgetImplementation());
    gh.lazySingleton<_i7.Dio>(() => serviceModule.dio);
    gh.factory<_i8.IconWidget>(() => _i8.IconWidgetImpl());
    gh.factory<_i9.ImageWidget>(() => _i9.ImageWidgetImpl());
    await gh.factoryAsync<_i10.SharedPreferences>(
      () => databaseModule.prefs,
      preResolve: true,
    );
    gh.factory<_i11.SharedPreferencesRepository>(
        () => _i11.SharedPreferencesRepository(gh<_i10.SharedPreferences>()));
    gh.factory<_i12.TextWidget>(() => _i12.TextWidgetImplementation());
    gh.factory<_i13.CardWidget>(() => _i13.CardWidgetImplementation(
          gh<_i4.CardShape>(),
          gh<_i6.ContainerWidget>(),
          gh<_i5.ContainerDecoration>(),
        ));
    gh.factory<_i14.NetworkService>(() => _i14.NetworkService(
          gh<_i11.SharedPreferencesRepository>(),
          gh<_i7.Dio>(),
        ));
    gh.factory<_i15.AuthNetworkService>(
        () => _i15.AuthNetworkService(gh<_i14.NetworkService>()));
    gh.factory<_i16.HomeNetworkService>(() =>
        _i16.HomeNetworkService(networkService: gh<_i14.NetworkService>()));
    gh.factory<_i17.HomeRepository>(() => _i17.HomeRepository(
          gh<_i11.SharedPreferencesRepository>(),
          gh<_i16.HomeNetworkService>(),
        ));
    gh.factory<_i18.LoginRepository>(() => _i18.LoginRepository(
          gh<_i15.AuthNetworkService>(),
          gh<_i11.SharedPreferencesRepository>(),
        ));
    return this;
  }
}

class _$ServiceModule extends _i19.ServiceModule {}

class _$DatabaseModule extends _i20.DatabaseModule {}
