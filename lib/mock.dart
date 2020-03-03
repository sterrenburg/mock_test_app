import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

/// Mock class for FirebaseAuth
@RegisterAs(FirebaseAuth, env: Environment.test)
@injectable
class MockFirebaseAuth extends Mock implements FirebaseAuth {}
