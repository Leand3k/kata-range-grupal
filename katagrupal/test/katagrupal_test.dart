import 'package:katagrupal/katagrupal.dart';
import 'package:test/test.dart';
import '../bin/katagrupal.dart';

void main() {
  test('Contains', () {
    Range range = new Range();

    var actual = "[3,7)";
    var conjunto = "{5,6}";
    var expected = true;
    expect(range.ContainsRange(actual, conjunto), expected);
  });
  test('Contains', () {
    Range range = new Range();

    var actual = "[3,7)";
    var conjunto = "{3,4}";
    var expected = true;
    expect(range.ContainsRange(actual, conjunto), expected);
  });
  test('Contains', () {
    Range range = new Range();

    var actual = "[3,7)";
    var conjunto = "{7,8}";
    var expected = false;
    expect(range.ContainsRange(actual, conjunto), expected);
  });

  test('containsRange1', () {
    Range range = new Range();

    var actual = "[3,7)";
    var expected = false;
    expect(range.ContainsRange(actual, "[2,5] "), expected);
  });
  test('containsRange2', () {
    Range range = new Range();

    var actual = "[2,10]";
    var expected = false;
    expect(range.ContainsRange(actual, "[12,20]"), expected);
  });
  test('containsRange3', () {
    Range range = new Range();

    var actual = "[6,9]";
    var expected = true;
    expect(range.ContainsRange(actual, "[7,8]"), expected);
  });

  test('allPoints1', () {
    Range range = new Range();
    String intervalo = "(2,7)";
    List f = (range.AddRange(intervalo));

    var actual = range.getAllPoints(f);
    List expected = [3, 4, 5, 6];
    expect(actual, expected);
  });

  test('allPoints2', () {
    Range range = new Range();
    String intervalo = "(1,5)";
    List f = (range.AddRange(intervalo));

    var actual = range.getAllPoints(f);
    List expected = [2, 3, 4];
    expect(actual, expected);
  });
  test('allPoints3', () {
    Range range = new Range();
    String intervalo = "[4,10)";
    List f = (range.AddRange(intervalo));

    var actual = range.getAllPoints(f);
    List expected = [4, 5, 6, 7, 8, 9];
    expect(actual, expected);
  });
  //endPoints
  test('endPoints', () {
    Range range = new Range();
    String intervalo = "[1,5]";
    var actual = range.endPoints(intervalo);
    var expected = '1, 5';
    expect(actual, expected);
  });

  test('endPoints2', () {
    Range range = new Range();
    String intervalo = "[5,9]";
    var actual = range.endPoints(intervalo);
    var expected = '5, 9';
    expect(actual, expected);
  });

  test('endPoints3', () {
    Range range = new Range();
    String intervalo = "[1,9]";
    var actual = range.endPoints(intervalo);
    var expected = '1, 9';
    expect(actual, expected);
  });

  test('endPoints3', () {
    Range range = new Range();
    String intervalo = "[290,500]";
    var actual = range.endPoints(intervalo);
    var expected = '290, 500';
    expect(actual, expected);
  });
  //overlapsRange
  test('overlapsRange1', () {
    Range range = new Range();
    List intervalo = range.AddRange("[2,5)");
    List intervalo2 = range.AddRange("[8,16)");

    var actual = range.overlapsRange(intervalo, intervalo2);
    var expected = false;
    expect(actual, expected);
  });

  test('overlapsRange2', () {
    Range range = new Range();
    List intervalo = range.AddRange("[4,5)");
    List intervalo2 = range.AddRange("[5,7)");

    var actual = range.overlapsRange(intervalo, intervalo2);
    var expected = false;
    expect(actual, expected);
  });
  test('overlapsRange3', () {
    Range range = new Range();
    List intervalo = range.AddRange("[3,5)");
    List intervalo2 = range.AddRange("[4,11)");

    var actual = range.overlapsRange(intervalo, intervalo2);
    var expected = false;
    expect(actual, expected);
  });
  test('equals1', () {
    Range range = new Range();
    List intervalo = range.AddRange("[3,5)");
    List intervalo2 = range.AddRange("[3,5)");

    var actual = range.equals(intervalo, intervalo2);
    var expected = true;
    expect(actual, expected);
  });
  test('equals2', () {
    Range range = new Range();
    List intervalo = range.AddRange("[2,9)");
    List intervalo2 = range.AddRange("[4,6)");

    var actual = range.equals(intervalo, intervalo2);
    var expected = false;
    expect(actual, expected);
  });

  test('not equals1', () {
    Range range = new Range();
    List intervalo = range.AddRange("[3,6)");
    List intervalo2 = range.AddRange("[7,10)");

    var actual = range.equals(intervalo, intervalo2);
    var expected = false;
    expect(actual, expected);
  });

  test('not equals2', () {
    Range range = new Range();
    List intervalo = range.AddRange("[5,7)");
    List intervalo2 = range.AddRange("[9,10)");

    var actual = range.equals(intervalo, intervalo2);
    var expected = false;
    expect(actual, expected);
  });
}
