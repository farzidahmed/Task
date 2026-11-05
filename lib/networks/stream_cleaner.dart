import 'package:task_auth/networks/dio/dio.dart';
import '../constants/app_constants.dart';
import '../helpers/di.dart';

Future<void> totalDataClean() async {
  await appData.write(kKeyIsLoggedIn, false);
  // await appData.write(kKeyRole, '');
}

/// Clears the saved login session and removes the auth header from Dio.
Future<void> clearSession() async {
  await totalDataClean();
  await appData.remove(kKeyAccessToken);
  DioSingleton.instance.create();
}
