// import 'package:kabirumar/provider/verification_masjid_provider.dart';


import 'package:provider/provider.dart';
import 'package:task_auth/providers/auth_provider.dart';
import 'package:task_auth/providers/change_pass_provider.dart';
import 'package:task_auth/providers/reset_pass_provider.dart';
import 'package:task_auth/providers/sign_up_provider.dart';

var providers = [
  ChangeNotifierProvider<AuthProvider>(create: (context) => AuthProvider()),
  ChangeNotifierProvider<SignUpProvider>(create: (context) => SignUpProvider()),
  ChangeNotifierProvider<ResetPassProvider>(
    create: (context) => ResetPassProvider(),
  ),
  ChangeNotifierProvider<ChangePassProvider>(
    create: (context) => ChangePassProvider(),
  ),
];
