class AuthFormData {
  String username;
  String password;
  String? confirmPassword;

  AuthFormData({
    this.username = "",
    this.password = "",
    this.confirmPassword = "",
  });
}
