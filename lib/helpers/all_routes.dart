// ignore_for_file: unused_element

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:task_auth/features/auth/presentation/forgot_pass/forgot_password_screen.dart';
import 'package:task_auth/features/auth/presentation/forgot_pass/verify_otp_screen.dart';
import 'package:task_auth/features/auth/presentation/login/login_screen.dart';
import 'package:task_auth/features/auth/presentation/reset_password_complete/reset_password_screen.dart';
import 'package:task_auth/features/auth/presentation/signup/signup_screen.dart';
import 'package:task_auth/features/auth/presentation/verification_complete/verification_complete_screen.dart';
import 'package:task_auth/features/auth/presentation/verify_otp/verify_otp_screen.dart';
import 'package:task_auth/features/profile/presentation/profile_screen.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;


  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';
  static const String forgetPasswordScreen = '/forgetPasswordScreen';
  static const String verifyOtpScreen = '/verifyOtpScreen';
  static const String verificationCompleteScreen =
      '/verificationCompleteScreen';
  static const String resetPasswordScreen = '/resetPasswordScreen';
  static const String confirmScreen = '/confirmScreen';
  static const String userVerifyScreen = '/userVerifyScreen';
  static const String homeScreen = '/homeScreen';
  static const String tripDetailsScreen = '/tripDetailsScreen';
  static const String bookingCardDetailsScreen = '/bookingCardDetailsScreen';
  static const String addToListScreen = '/addToListScreen';
  static const String resetOtpVerifyScreen = '/resetOtpVerifyScreen';
  static const String festivalDetailsScreen = '/festivalDetailsScreen';
  static const String pastFestialvalDetailsScreen =
      '/pastFestialvalDetailsScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String friendRequestScreen = '/friendRequestScreen';
  static const String chatListScreen = '/chatListScreen';
  static const String chatWithFriendScreen = '/chatWithFriendScreen';
  static const String addFriendListScreen = '/addFriendListScreen';
  static const String createAlumbs = '/createAlumbs';
  static const String userProfileScreen = '/userProfileScreen';
  static const String editProfileScreen = '/editProfileScreen';
  static const String allwishlistScreen = '/AllwishlistScreen';
  static const String termsAndConditionsScreen = "/termsAndConditionsScreen";
  static const String privacyPolicyScreen = "/privacyPolicyScreen";
  static const String helpAndSupportScreen = "/helpAndSupportScreen";
  static const String blockUserScreen = "/blockUserScreen";
  static const String albumMediaScreen = "/albumMediaScreen";
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: const LoginScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(builder: (context) => const LoginScreen());
      case Routes.resetOtpVerifyScreen:
        final args = settings.arguments as Map?;
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: VerifyOtpResetPassor(email: args?['email']),
              settings: settings,
            )
            : CupertinoPageRoute(
              builder: (context) => VerifyOtpResetPassor(email: args?['email']),
            );

      case Routes.forgetPasswordScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: const ForgotPasswordScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(
              builder: (context) => const ForgotPasswordScreen(),
            );

      case Routes.resetPasswordScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: const ResetPasswordScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(
              builder: (context) => const ResetPasswordScreen(),
            );

      case Routes.userProfileScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: const ProfileScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(
              settings: settings,
              builder: (context) => const ProfileScreen(),
            );

      case Routes.signupScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: const SignupScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(builder: (context) => const SignupScreen());

      case Routes.verifyOtpScreen:
        final args = settings.arguments as Map?;
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: VerifyOtpScreen(email: args?['email']),
              settings: settings,
            )
            : CupertinoPageRoute(
              builder: (context) => VerifyOtpScreen(email: args?['email']),
            );

      case Routes.verificationCompleteScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: const VerificationCompleteScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(
              builder: (context) => const VerificationCompleteScreen(),
            );

      default:
        return null;
    }
  }
}

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
    : super(
        settings: settings,
        reverseTransitionDuration: const Duration(milliseconds: 1),
        pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return widget;
        },
        transitionDuration: const Duration(milliseconds: 1),
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) {
          return FadeTransition(
            opacity: CurvedAnimation(parent: animation, curve: Curves.ease),
            child: child,
          );
        },
      );
}

class ScreenTitle extends StatefulWidget {
  final Widget widget;
  const ScreenTitle({super.key, required this.widget});

  @override
  State<ScreenTitle> createState() => _ScreenTitleState();
}

class _ScreenTitleState extends State<ScreenTitle>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  )..forward();

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.bounceIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: _animation, child: widget.widget);
  }
}
