import 'dart:convert';
import 'package:http/http.dart' as http;

class Employee {
  String? id;
  String? name;
  String? image;

  Employee({this.id, this.name, this.image});

  factory Employee.user(Map<String, dynamic> json) {
    return Employee(
      // userId: json['userId'],
      id: json['id'].toString(),
      name: json['first_name'] + " " + json['last_name'],
      image: json['avatar'],
    );
  }
  static Future<Employee> connectToAPI() async {
    String apiUrl = "https://reqres.in/api/users?page=2";

    var api = await http.get(Uri.parse(apiUrl));
    var jsonObject = json.decode(api.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return Employee.user(userData);
  }
}
