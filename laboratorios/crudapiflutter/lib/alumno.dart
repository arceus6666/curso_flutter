class Alumno {
  final String id;
  final String nombres;
  final String apellidos;
  final String doc_identidad;
  Alumno(this.id, this.nombres, this.apellidos, this.doc_identidad);
  Alumno.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nombres = json['nombres'],
        apellidos = json['apellido'],
        doc_identidad = json['doc_identidad'];
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombres': nombres,
        'apellidos': apellidos,
        'doc_identidad': doc_identidad
      };
}
