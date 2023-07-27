import 'dart:io';

import 'package:dart_firebase_admin/dart_firebase_admin.dart';

Future<void> main() async {
  final admin = FirebaseAdminApp.initializeApp(
    'dart-firebase-admin',
    Credential.fromServiceAccount(File('../service-account.json')),
  );

  final auth = FirebaseAdminAuth(admin);

  // await auth.deleteUser('867gK70vkJNjOzlj4uQoMcg7a1d2');
  // await auth.createSessionCookie('867gK70vkJNjOzlj4uQoMcg7a1d2');
  final d = await auth.deleteUsers(['jQ8RIsaXXigZ279pnLO3MHu4D1Y2']);
  print(d.errors);
  print(d.failureCount);
  print('Deleted!');
}