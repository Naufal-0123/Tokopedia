import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:tokopedia/app/routes/app_pages.dart';

class AuthControllerController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<User?> streamAuthStatus() => auth.authStateChanges();
  String codeVerify = "";
  login(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      Get.offAllNamed(Routes.HOME_ADMIN);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.defaultDialog(
            title: "err", middleText: "No user found for that email.");
      } else if (e.code == 'wrong-password') {
        Get.defaultDialog(
            title: "err", middleText: "Wrong password provided for that user.");
      }
    }
  }

  logOut() {
    Get.defaultDialog(
        title: "Are You Sure!",
        middleText: "logout this application ?",
        confirm: ElevatedButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Get.offAllNamed(Routes.LOGIN);
            },
            child: Text("Yes")),
        cancel: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () => Get.back(),
            child: Text("No")));
  }

  register(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailAddress, password: password);
      credential.user?.sendEmailVerification();
      Get.offAllNamed(Routes.VERIFY);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.defaultDialog(
            title: "err", middleText: "No user found for that email.");
      } else if (e.code == 'wrong-password') {
        Get.defaultDialog(
            title: "err", middleText: "Wrong password provided for that user.");
      }
    }
  }

  resetPassword(String emailAddress) async {
    try {
      final Credential = await auth.sendPasswordResetEmail(email: emailAddress);
      Get.toNamed(Routes.VERIFY);
    } on FirebaseAuthException catch (e) {
      Get.defaultDialog(title: 'Alert', middleText: 'gagal merubah kata sandi');
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    Get.offAllNamed(Routes.HOME);
    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  verifyPhone(String nomor) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+62 {nomor}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((value) => {
                if (value.user != null) {Get.toNamed(Routes.HOME)}
              });
        },
        verificationFailed: (FirebaseAuthException e) {
          Get.defaultDialog(
              title: 'Alert', middleText: 'gagal mengirim pesan verify');
        },
        codeSent: (String verificationId, int? resendToken) {
          codeVerify = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          codeVerify = verificationId;
        },
        timeout: Duration(seconds: 60));
    Get.toNamed(Routes.VERIFY_O_T_P, parameters: {"phone": nomor});
  }

  checkOTP(String sms) async {
    try {
      await auth
          .signInWithCredential(PhoneAuthProvider.credential(
              verificationId: codeVerify, smsCode: sms))
          .then((value) {
        if (value.user != null) {
          Get.toNamed(Routes.HOME);
        }
      });
    } catch (e) {
      Get.defaultDialog(
          title: "Alert", middleText: "kode verifikasi salah mas bro");
    }
  }
}
