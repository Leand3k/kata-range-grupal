import 'package:katagrupal/katagrupal.dart' as katagrupal;

void main(List<String> arguments) {
  print('Hello world: ${katagrupal.calculate()}!');
}

class Range {
  List AddRange(String Interval) {
    var i;
    var pList = new List();
    var x = Interval.split(',');

    for (int a = 0; a < x.length; a++) {
      i = x[a]
          .replaceAll('[', '')
          .replaceAll(']', '')
          .replaceAll('(', '')
          .replaceAll(')', '');
      pList.add(int.parse(i));
    }

    return pList;
  }

  bool ContainsRange(String intervalo, String segundaLista) {
    bool respuesta = true;

    List interval = AddRange(intervalo);
    List interval2 = AddRange(segundaLista);

    if (interval.first <= interval2.first && interval.last >= interval2.last) {
      respuesta = true;
    } else {
      respuesta = false;
    }

    return respuesta;
  }
}
