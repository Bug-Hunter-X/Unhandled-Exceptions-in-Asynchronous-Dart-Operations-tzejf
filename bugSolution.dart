```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
    } else {
      //Handle error explicitly, providing detailed context
      throw Exception('Failed to load data. Status code: ${response.statusCode}, Body: ${response.body}');
    }
  } on SocketException catch (e) {
    //Handle specific network errors
    print('Network error: $e');
  } on FormatException catch (e) {
    //Handle JSON decoding errors
    print('JSON decoding error: $e');
  } catch (e) {
    //Catch any other exceptions
    print('An unexpected error occurred: $e');
  }
}
```