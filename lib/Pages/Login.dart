import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//pages
import 'Home.dart';

class logIn extends StatefulWidget {
  @override
  _logInState createState() => _logInState();
}

class _logInState extends State<logIn> {
  final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences sharedPreferences;
  bool loading = false;
  bool isLogedIn = false;

  @override
  void initState() {
    super.initState();
    isSignedIn();
  }

  //async waits for something to come in the future while we are waiting for something else
  void isSignedIn() async {
    setState(() {
      loading = true;
    });
    sharedPreferences =
        await SharedPreferences.getInstance(); //wait for data to be loaded
    isLogedIn = await googleSignIn.isSignedIn();
    if (isLogedIn) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => new HomePage()));
      //push replacement is not to give the use to retrun back to the same page
    }
    setState(() {
      loading = false;
    });
  }

  Future handleSignIN() async {
    sharedPreferences = await SharedPreferences.getInstance();

    setState(() {
      loading = true;
    });

    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();

    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    final AuthResult authResult =
        await firebaseAuth.signInWithCredential(credential);
    final FirebaseUser firebaseUser = authResult.user;
    if (firebaseUser != null) {
      final QuerySnapshot querySnapshot = await Firestore.instance
          .collection("user")
          .where("id", isEqualTo: firebaseUser.uid)
          .getDocuments();

      final List<DocumentSnapshot> documents = querySnapshot.documents;

      //!!!!!!! this is to check if that particular user is present or not !!!!!!!!!!!!! i.e. should the user be registered???? !!!!!!!!!!!
      //!!!!! to add new user !!!!!!!!!!!!!!
      if(documents.length == 0){
        Firestore.instance.collection("user").document(firebaseUser.uid).setData({
          // Set Data takes a map as an input
          "id" : firebaseUser.uid,
          "username" : firebaseUser.displayName,
          "profilePicture" : firebaseUser.photoUrl,
        });
        await sharedPreferences.setString("id", firebaseUser.uid);
        await sharedPreferences.setString("username", firebaseUser.displayName);
        await sharedPreferences.setString("profilePicture", firebaseUser.photoUrl);
      }
      else{
        await sharedPreferences.setString("id", documents[0]["id"]);
        await sharedPreferences.setString("username", documents[1]["username"]);
        await sharedPreferences.setString("profilePicture", documents[2]["profilePicture"]);
      }
      Fluttertoast.showToast(msg: "LogIn Succesfull");
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
    );
  }
}
