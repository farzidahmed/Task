import 'package:rxdart/rxdart.dart';
import 'package:task_auth/features/auth/data/delete_account_rx/rx.dart';
import 'package:task_auth/features/auth/data/logut_rx/rx.dart';
import 'package:task_auth/features/auth/data/rx.dart';
import 'package:task_auth/features/auth/model/login_response_model.dart';
import 'package:task_auth/features/auth/presentation/signup/data/rx.dart';
import 'package:task_auth/features/auth/presentation/update_profile_rx/rx.dart';
import 'package:task_auth/features/auth/presentation/verify_otp/model/otp_verify_model.dart';
import 'package:task_auth/features/auth/presentation/verify_otp/otp_verify_rx/rx.dart';

SignupRX signupRXObj = SignupRX(empty: {}, dataFetcher: BehaviorSubject<Map>());
VerifyOtpRx verifyOtpRxObj = VerifyOtpRx(
  empty: VerfiyOtpModel(),
  dataFetcher: BehaviorSubject<VerfiyOtpModel>(),
);
LoginRX loginRXObj = LoginRX(
  empty: LoginResponseModel(),
  dataFetcher: BehaviorSubject<LoginResponseModel>(),
);
EditProfileRx profileUpdateRxObj = EditProfileRx(
  empty: {},
  dataFetcher: BehaviorSubject<Map>(),
);
LogoutRx logoutRxObj = LogoutRx(empty: {}, dataFetcher: BehaviorSubject<Map>());
DeleteAccountRx deleteAccountRxObj = DeleteAccountRx(
  empty: {},
  dataFetcher: BehaviorSubject<Map>(),
);
