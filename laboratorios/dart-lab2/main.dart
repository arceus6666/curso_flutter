import 'operaciones.dart';

class Alumno {
  String nombre;
  String apellido;

  String nombreCompleto() {
    return '${nombre} ${apellido}';
  }
}

void main(List<String> args) {
  Alumno alumno = new Alumno();

  alumno.nombre = 'Ana';
  alumno.apellido = 'Gomez';

  print(alumno.nombreCompleto());

  Operaciones operaciones = new Operaciones(14.5, 7);
  print(operaciones.suma());

  print('Numero aleatorio es ${operaciones.aleatorio(10)}');
}
