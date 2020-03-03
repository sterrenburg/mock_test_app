import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mocktestapp/injectable.iconfig.dart';

final getIt = GetIt.instance;

@injectableInit
void configure(String environment) => $initGetIt(getIt);
