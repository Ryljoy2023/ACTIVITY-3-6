import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  try {
    // API endpoint and headers
    String apiUrl = 'https://love-calculator.p.rapidapi.com/getPercentage';
    Map<String, String> headers = {
      'X-Rapidapi-Key': 'cbb785b118mshca1af2cdd30f124p1c7543jsn179040334463',
      'X-Rapidapi-Host': 'love-calculator.p.rapidapi.com',
      'Host': 'love-calculator.p.rapidapi.com',
    };

    // Query parameters
    Map<String, String> queryParams = {
      'sname': 'Frichie', // Replace with source name
      'fname': 'Derick', // Replace with target name
    };

    // Constructing the URL with query parameters
    String queryString = Uri(queryParameters: queryParams).query;
    String requestUrl = '$apiUrl?$queryString';

    // Fetch data asynchronously
    var response = await http.get(Uri.parse(requestUrl), headers: headers);

    // Check if request was successful
    if (response.statusCode == 200) {
      // Parse JSON response
      var data = jsonDecode(response.body);

      // Extract relevant information
      String sourceName = data['sname'];
      String targetName = data['fname'];
      String percentage = data['percentage'];
      String result = data['result'];

      // Display relevant information
      print('Love percentage between $sourceName and $targetName: $percentage%');
      print('Result: $result');
    } else {
      print('Failed to fetch data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error occurred: $e');
  }
}
