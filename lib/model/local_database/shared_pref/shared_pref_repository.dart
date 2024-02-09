import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable()
class SharedPreferencesRepository {
  final SharedPreferences sharedPreferences;

  set pin(String value) => sharedPreferences.setString('pin', value);

  String get pin => sharedPreferences.getString('pin') ?? '';

  set token(String value) => sharedPreferences.setString('token', value);

  String get token => sharedPreferences.getString('token') ?? '';

  set phone(String value) => sharedPreferences.setString("phone", value);

  String get phone => sharedPreferences.getString("phone") ?? '';

  SharedPreferencesRepository(this.sharedPreferences);

  Future<bool> clearAll() => sharedPreferences.clear();
}
