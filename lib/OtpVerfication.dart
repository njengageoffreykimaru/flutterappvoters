import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _otpCode = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  String verificationIDReceived = "";
  bool otpCode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Authentication"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: "Phone",
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 8),
            Visibility(
              visible: otpCode,
              child: TextField(
                controller: _otpCode,
                decoration: InputDecoration(
                  labelText: "Code",
                ),
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                if (otpCode) {
                  verifyCode();
                } else {
                  sendVerificationCode();
                }
              },
              child: Text(otpCode ? "Login" : "Verify"),
            ),
          ],
        ),
      ),
    );
  }

  void sendVerificationCode() async {
    final phone = "+1" + _phoneController.text; // Replace with your country code
    await auth.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          print("You are logged in successfully");
        });
      },
      verificationFailed: (FirebaseAuthException firebaseAuthException) {
        print(firebaseAuthException.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        setState(() {
          otpCode = true;
          verificationIDReceived = verificationId;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyCode() async {
    final code = _otpCode.text.trim();
    final credential = PhoneAuthProvider.credential(
        verificationId: verificationIDReceived, smsCode: code);
    await auth.signInWithCredential(credential).then((value) {
      print("You are logged in successfully");
    });
  }

}
