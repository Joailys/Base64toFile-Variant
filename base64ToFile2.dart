// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:typed_data';
import '/flutter_flow/uploaded_file.dart';

// Function to convert a base64 encoded string to an FFUploadedFile object
FFUploadedFile? base64ToFile2(String? base64File) {
  if (base64File == null) return null; // Return null if base64File is null

  // Decoding the base64 string into bytes
  final Uint8List bytes = base64.decode(base64File);

  // Extracting the MIME type from the base64 string
  final String mimeType =
      RegExp(r'data:(.*?);').firstMatch(base64File)?.group(1) ??
          'application/octet-stream';

  // Generating a unique file name using the current timestamp and MIME type
  final String extension = mimeType.split('/').last;
  final String fileName = '${DateTime.now().millisecondsSinceEpoch}.$extension';

  // Creating and returning an FFUploadedFile object with the decoded bytes and file name
  return FFUploadedFile(bytes: bytes, name: fileName);
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
