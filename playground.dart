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

  try {
    errorFunc();
  } catch (e, s) {
    // 仮引数2つ目はstack traceを返却する
    // print(s);
  }

  testCascade();

  var mixinPerson = MixinPerson();

  mixinPerson.printName();
  mixinPerson.printTest('mixin test');
}

String returnStringFunction() {
  return "some strings";
}

int onelineFunction(a, b) => a + b;

void optionalArgs({bool? hasSomething = true, int? someInt = 5}) {
  print('$hasSomething');
  print('$someInt');
}

void errorFunc() {
  try {
    throw Exception('exception');
  } on Exception catch (e) {
    print(e);
    rethrow;
  } finally {
    print('finally');
  }
}

void testCascade() {
  var stringBuffer = StringBuffer();
  stringBuffer
    ..write("first")
    ..writeAll(["second", "third"], ' ')
    ..toString();
  print(stringBuffer);
}

class Person {
  final String name = 'taro';
  final String surName = 'Yamada';

  void printName() {
    print('$name');
  }
}

mixin MixinExmaple {
  void printTest(String test) {
    print('$test');
  }
}

class MixinPerson extends Person with MixinExmaple {}
