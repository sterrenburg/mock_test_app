import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:mocktestapp/injectable.dart';

void main() {
  // Run `$initGetIt(GetIt.instance) in test mode before all tests
  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    configure(injectable.Environment.test);
  });

  FirebaseAuth mockFirebaseAuth;

  setUp(() {
    mockFirebaseAuth = getIt<FirebaseAuth>();
  });

  // Tests that want access to `getIt<FirebaseAuth>()` go here.
  test('should be able to mock getIt FirebaseAuth instance', () {
    print(getIt<FirebaseAuth>());

    when(mockFirebaseAuth.signOut()).thenAnswer((_) async {
      print('mocking sign out');
    });
    expect(mockFirebaseAuth.signOut(), completes);
  });
}
