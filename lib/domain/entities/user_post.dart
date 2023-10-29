class User {
    final int id;
    final String name;
    final String lastNames;
    final String email;
    final String username;
    final String password;
    final int tipoUsuario;
    final DateTime fechaAlta;
    final DateTime fechaActualizacion;

    User({
        required this.id,
        required this.name,
        required this.lastNames,
        required this.email,
        required this.username,
        required this.password,
        required this.tipoUsuario,
        required this.fechaAlta,
        required this.fechaActualizacion,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        lastNames: json["last_names"],
        email: json["email"],
        username: json["username"],
        password: json["password"],
        tipoUsuario: json["tipo_usuario"],
        fechaAlta: DateTime.parse(json["fecha_alta"]),
        fechaActualizacion: DateTime.parse(json["fecha_actualizacion"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "last_names": lastNames,
        "email": email,
        "username": username,
        "password": password,
        "tipo_usuario": tipoUsuario,
        "fecha_alta": fechaAlta.toIso8601String(),
        "fecha_actualizacion": fechaActualizacion.toIso8601String(),
    };
}