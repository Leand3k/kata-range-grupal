import 'package:katagrupal/katagrupal.dart';
import 'package:test/test.dart';
import '../bin/katagrupal.dart';

void main() {
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
}
