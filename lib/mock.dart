import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart' as mockito;
import 'package:mocktestapp/repository.dart';

/// Mock class for third party class FirebaseAuth
@test
@RegisterAs(FirebaseAuth)
@injectable
class MockFirebaseAuth extends mockito.Mock implements FirebaseAuth {}

/// Mock class for abstract class Repository
@test
@RegisterAs(Repository)
@injectable
class RepositoryMock extends mockito.Mock implements Repository {}