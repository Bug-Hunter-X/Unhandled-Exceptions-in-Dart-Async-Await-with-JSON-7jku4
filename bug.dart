```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final jsonData = jsonDecode(response.body);
      // Accessing data, potential error here if jsonData structure is unexpected
      final String name = jsonData['name']; // error if 'name' key is missing
      print('Name: $name');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e'); // Catches network errors, JSON decoding errors, and key errors
  }
}
```