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
          .replaceAll(')', '')
          .replaceAll('{', '')
          .replaceAll('}', '');
      pList.add(int.parse(i));
    }

    if (Interval[0] == '(') {
      pList.first += 1;
    }
    if (Interval[Interval.length - 1] == ')') {
      pList.last -= 1;
    }

    return pList;
  }

  bool Contains(String intervalo, String conjunto) {
    bool respuesta = true;
    List interval = AddRange(intervalo);
    List conjunto1;
    List conjunto2 = AddRange(conjunto);
    int iterador = interval[0];
    for (int i = 0; i < interval[1] + 1; i++) {
      iterador++;
      conjunto1.add(iterador);
    }
    if (conjunto1.contains(conjunto2)) {
      return true;
    } else {
      return false;
    }
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

  List getAllPoints(List l) {
    var x = new List();

    for (int i = l.first; i <= l.last; i++) {
      x.add(i);
    }

    return x;
  }

  String endPoints(String Interval) {
    var i;
    var pList = new List();
    var x = Interval.split(',');

    for (int a = 0; a < x.length; a++) {
      i = x[a]
          .replaceAll('[', '')
          .replaceAll(']', '')
          .replaceAll('(', '')
          .replaceAll(')', '');
      pList.add(i);
    }

    if (Interval[0] == '(') {
      pList.first += 1;
    }
    if (Interval[Interval.length - 1] == ')') {
      pList.last -= 1;
    }

    //(3, 6) => {4,5}
    //[3,6] => (3,4,5,6)

    return pList.toString().replaceAll('[', '').replaceAll(']', '');
  }

  bool overlapsRange(List intervalo, List intervalo2) {
    if (intervalo.first > intervalo2.first &&
        intervalo.last < intervalo2.last) {
      return true;
    } else {
      return false;
    }
  }

  bool equals(List intervalo, List intervalo2) {
    if (intervalo.first == intervalo2.first &&
        intervalo.last == intervalo2.last) {
      return true;
    } else {
      return false;
    }
  }
}
