import 'dart:io';

void main() {
  // Prompt the user for a file name
  stdout.write('Enter the file name: ');
  String? fileName = stdin.readLineSync();

  try {
    // Attempt to open and read the file
    File file = File(fileName!);
    if (!file.existsSync()) {
      print('File not found.');
      return;
    }

    // Read file contents
    String contents = file.readAsStringSync();
    print('File contents:');
    print(contents);
  } catch (e) {
    print('Error: $e');
  }
}
