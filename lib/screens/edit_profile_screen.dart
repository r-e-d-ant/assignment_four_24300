import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../l10n/l10n.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final ImagePicker _picker = ImagePicker();
  XFile? _imageFile;

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    setState(() {
      _imageFile = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.editProfile),
      ),
      body: Column(
        children: [
          if (_imageFile != null)
            Image.file(File(_imageFile!.path)),
          ElevatedButton(
            onPressed: () => _pickImage(ImageSource.gallery),
            child: Text('Select from Gallery'),
          ),
          ElevatedButton(
            onPressed: () => _pickImage(ImageSource.camera),
            child: Text('Take a Picture'),
          ),
        ],
      ),
    );
  }
}
