import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';

String name;
String email;
String photoUrl;

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
final FacebookLogin facebookSignIn = FacebookLogin();

Future<String> signInGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
  );

  final AuthResult authResult = await _auth.signInWithCredential(credential);
  final FirebaseUser user = authResult.user;

  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.uid == currentUser.uid);

  assert(user.email != null);
  assert(user.displayName != null);
  assert(user.photoUrl != null);

  name = user.displayName;
  email = user.email;
  photoUrl = user.photoUrl;

  return 'signInWithGoogle succeded: $user';
}

void signOutGoogle() async {
  await googleSignIn.signOut();

  print("User Sign Out");
}

Future <Null> signInFacebook() async {
  final FacebookLoginResult result = await facebookSignIn.logIn(['email']);

  switch (result.status) {
    case FacebookLoginStatus.loggedIn:
      final FacebookAccessToken accessToken = result.accessToken;
      print('''
      Sign in success
      
      Token: ${accessToken.token}
      User id: ${accessToken.userId}
      Expires: ${accessToken.expires}
      Permission: ${accessToken.permissions}
      DeclinedPermission: ${accessToken.declinedPermissions}      
      ''');
      break;
    case FacebookLoginStatus.cancelledByUser:
      print("Cancelled by user");
      break;
    case FacebookLoginStatus.error:
      print('Something went wrong with the login process.\n'
          'Here\'s the error Facebook gave us: ${result.errorMessage}');
      break;
  }
}

Future<Null> signOutFacebook() async {
  await facebookSignIn.logOut();
  print('Logged out.');
}

/*
void _showMessage(String message) {
  setState(() {
    _message = message;
  });
}
 */