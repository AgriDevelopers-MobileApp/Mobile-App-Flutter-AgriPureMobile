import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static Future<bool> changeEmail(String newEmail, String password) async {
    try {
      var url = Uri.parse('https://agripure-mobile-service.onrender.com/auth/change_email');
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');

      Map<String, String> headers = {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "Authorization": 'Bearer $token',
      };

      var response = await http.post(
        url,
        headers: headers,
        body: jsonEncode({'new_email': newEmail}),
      );

      if (response.statusCode == 200) {
        // Email cambiado exitosamente
        return true;
      } else {
        // Error al cambiar el email
        return false;
      }
    } catch (error) {
      // Error de conectividad u otro error
      return false;
    }
  }

  static Future<bool> changePassword(String currentPassword, String newPassword) async {
    var url = Uri.parse('https://agripure-mobile-service.onrender.com/api/change-password');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    Map<String, String> headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": 'Bearer $token'
    };

    Map<String, String> body = {
      "password": newPassword,
    };

    final response = await http.post(url, headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200) {
      // Cambio de contraseña exitoso
      return true;
    } else {
      // Error al cambiar la contraseña
      return false;
    }
  }
}