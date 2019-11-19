void main() {
  print('Hola mundo Dart');

  // Variables
  var nombre = 'Ana Gomez';
  var anio = 2011;
  var diametro = 3.7;
  var cursos = ['Flutter', 'Angular', 'NodeJS', 'ReactJS'];

  print('Nombre completo es: ${nombre} de cursos ${cursos}');

  // control y declaracion de flujos

  if (anio >= 2020) {
    print('Futuro ya esta aqui');
  } else if (anio >= 2000) {
    print('Pasado');
  }

  for (var curso in cursos) {
    print(curso);
  }

  for (int mes = 1; mes <= 12; mes++) {
    print(mes);
  }

  while (anio < 2020) {
    anio += 1;
  }

  print('variable anio: ${anio}');

  // funciones
  var num = 5;
  var result = factorial(num);

  print('el factorioal de ${num} es ${result}');

  // expresion condicional
  var compara =
      result > 100 ? 'El numero es mayor a 100' : 'El numero es menor a 100';
  print(compara);

  // listas
  var lista = new List(3);
  lista[0] = 'Sql Server';
  lista[1] = 'Oracle';
  lista[2] = 'mysql';

  print(lista);

  lista.forEach((e) => print(e));

  // Sets
  var linux = {'Ubuntu', 'Centos', 'Debian'};

  // Maps
  var so = <String>{};
  so.add('Windows Server');
  so.addAll(linux);

  print(so);

  var monedas = {'BOB': 'Boliviano', 'USD': 'Dolar Americano', 'EUR': 'Euro'};

  var estadoHttp = {404: 'No encontrado', 200: 'OK', 401: 'No autorizado'};

  print(monedas['BOB']);
  print(estadoHttp[200]);
}

int factorial(int n) {
  if (n <= 0)
    return 1;
  else
    return n * factorial(n - 1);
}
