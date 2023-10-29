import 'package:http/http.dart' as http;

class UserClient {

  final String url = 'localhost:3001/api/login/';

  Future<bool> login(String email, String contrasena, String token) async {
    final response = await http.post(
      url as Uri,
      body: {
        'nombreUsuario': email,
        'contrasena': contrasena,
        'token': token,
      },
    );
    print(response);
    if (response.statusCode == 200) {
      // La solicitud fue exitosa, verifica la respuesta del servidor y devuelve true o false según la autenticación.
      
      return true;
    } else {
      // La solicitud falló, maneja los errores aquí.
      return false;
    }
    
  }
}


