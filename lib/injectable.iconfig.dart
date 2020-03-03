// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:mocktestapp/mock.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerFactory<FirebaseAuth>(() => MockFirebaseAuth());
  }
}
