
const String url = "https://admin.festquests.com/api";

final class NetworkConstants {
  NetworkConstants._();
  static const ACCEPT = "Accept";
  static const APP_KEY = "App-Key";
  static const ACCEPT_LANGUAGE = "Accept-Language";
  static const ACCEPT_LANGUAGE_VALUE = "pt";
  static const APP_KEY_VALUE = String.fromEnvironment("APP_KEY_VALUE");
  static const ACCEPT_TYPE = "application/json";
  static const AUTHORIZATION = "Authorization";
  static const CONTENT_TYPE = "content-Type";
}

final class EndPoints {
  EndPoints._();
  static String login() => "/login";
  static String signup() => "/register";
  static String verifyOtp() => "/verify-email";
  static String forgetPass() => "/forgot-password";
  static String verifyForgetPass() => "/verify-otp";
  static String resendOtp() => "/api/register";
  static String resendForgetOtp() => "/resend-otp";
  static String resetPassword() => "/reset-password";
  static String userProfile() => "/profile";
  static String updateProfile() => "/update-profile";
  static String logout() => "/logout";
  static String allAlbums() => "";
  static String allbumsDetails(int id) => "";
  static String review() => "";
  static String reviewLike(int id) => "";
  static String reviewComment() => "";
  static String addFriend() => "";
  static String requestList() => "";
  static String myAllFriend() => "";

  static String acceptRequest() => "";
  static String sendRequest() => "";
  static String userChatList() => "";
  static String sendMessage(int id) => "";
  static String singleChat(int receiverId) => "";
  static String userDetails() => "/me";
  static String myAlumbs(int type) => "/my-albums?type=$type";
  static String createAlumbs() => "";
  static String deleteAccount() => "";
  static String festive() => "";
  static String wishList() => "";
  static String postWishList(int id) => "";
  static String searchFestival(String search) => "";
  static String unFriend(int id) => "";
  static String friendBlock() => "";
  static String blockUser() => "";
  static String unBlockUser() => "";
  static String faq() => "";
  static String contactMessage() => "";
  static String postWish(int id) => "/wishlist/$id";
  static String termsAndCondition() => "";
  static String privacyPolicy() => "";
  static String privateAlbums() => "/private-albums";
  static String publicAlbums() => "/public-albums";
  static String reportUser(int id) => "";
  static String reportFestival(int id) => "";
}
