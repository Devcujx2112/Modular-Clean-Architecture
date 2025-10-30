// ignore_for_file: file_names

import 'package:app_settings/provider/AppSettingsProvider.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AppSettingProvider, env: [Environment.prod])
class ProdAppsettingsproviderimpl extends AppSettingProvider {
  @override
  String getAppLanguage() {
    return "English";
  }

  @override
  String getAppTheme() {
    return "dark";
  }
}

@Injectable(as: AppSettingProvider, env: [Environment.dev])
class DevAppsettingsproviderimpl extends AppSettingProvider {
  @override
  String getAppLanguage() {
    return "Vietnamese";
  }

  @override
  String getAppTheme() {
    return "light";
  }
}
