import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:mocktestapp/injectable.dart';
import 'package:mocktestapp/repository.dart';

void main() {
  // Run `$initGetIt(GetIt.instance) in test mode before all tests
  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    configure(injectable.Environment.test);
  });

  Repository mockRepository;

  setUp(() {
    mockRepository = getIt<Repository>();
  });

  // Tests that want access to `getIt<FirebaseAuth>()` go here.
  test('should be able to mock getIt Repository instance', () {
    print(getIt<FirebaseAuth>());

    when(mockRepository.doSomething())
        .thenAnswer((_) async => 'It is done in test');
    expect(mockRepository.doSomething(), completes);
  });
}
