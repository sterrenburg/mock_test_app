import 'package:injectable/injectable.dart';
import 'package:mocktestapp/mock.dart';

abstract class Repository {
  Future<String> doSomething();
}

@prod
@RegisterAs(Repository)
@injectable
class RepositoryImplementation implements Repository {
  @override
  Future<String> doSomething() async => 'It is done in production';
}