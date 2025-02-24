```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        if (jsonData is Map && jsonData.containsKey('name')) {
          final String name = jsonData['name'];
          print('Name: $name');
        } else {
          print('Error: Unexpected JSON structure or missing name key.');
        }
      } on FormatException catch (e) {
        print('Error: Invalid JSON format - $e');
      } on NoSuchMethodError catch (e) {
        print('Error: Key not found - $e');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```