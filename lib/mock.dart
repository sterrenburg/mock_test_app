import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart' as mockito;

/// Mock class for FirebaseAuth
@test
@RegisterAs(FirebaseAuth)
@injectable
class MockFirebaseAuth extends mockito.Mock implements FirebaseAuth {}
