void dPrint(Object? obj) {
  if (!bool.fromEnvironment('dart.vm.product')) print('carsome:$obj');
}
