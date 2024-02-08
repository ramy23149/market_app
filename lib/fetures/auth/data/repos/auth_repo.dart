abstract class AuthRepo {
  Future logInWithGoogle();
  Future logInWithFaceBook();
  Future completeInformation({required String name, required String phoneNumber, required String adress});
}
