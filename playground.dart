main() {
  var a = "hello";
  print(a);

  String b = "world";

  print('$a $b');

  List array = [1, 2, 3];
  print("$array");

  // compile error
  // Set set = [1, 1, 2, 3];

  Set set = {1, 3, 4};
  List convertedSet = set.toList();
  print('$convertedSet');

  dynamic j = 'this variable can be any types because of its dynamic type';
  j = 5;
  print(j);

  // final can only be defined at initialization
  final f = "final";

  const c = "constant";

  print('$f, $c');

  // parse
  print(int.parse('55'));
  print(56.toString());

  // map
  Map h = {'first': 1, 'second': 2};
  h.forEach((key, value) {
    print('$key : $value');
  });

  // switch
  var letter = 'b';
  switch (letter) {
    a:
    case 'a':
      print('a');
      break;
    case 'b':
      print('b');
      continue a;
  }

  print(returnStringFunction());
  print(onelineFunction(5, 8));
  optionalArgs();
}

String returnStringFunction() {
  return "some strings";
}

int onelineFunction(a, b) => a + b;

void optionalArgs({bool? hasSomething = true, int? someInt = 5}) {
  print('$hasSomething');
  print('$someInt');
}
