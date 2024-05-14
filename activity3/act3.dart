import 'dart:io';

void main() {
  // Define input and output file paths
  String inputFilePath = 'input.txt';
  String outputFilePath = 'output.txt';

  // Read data from input file
  File inputFile = File(inputFilePath);
  List<String> lines = inputFile.readAsLinesSync();

  // Calculate sum of numbers
  int sum = 0;
  for (String line in lines) {
    try {
      int number = int.parse(line);
      sum += number;
    } catch (e) {
      print('Error parsing number: $e');
    }
  }

  // Write sum to output file
  File outputFile = File(outputFilePath);
  outputFile.writeAsStringSync('Sum of numbers: $sum');
  
  print('Sum calculated and written to $outputFilePath');
}
