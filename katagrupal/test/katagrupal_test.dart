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
}
