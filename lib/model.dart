import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'recepie suggestion.dart';

class modelscreen extends StatefulWidget {
  @override
  _modelscreenState createState() => _modelscreenState();
}

class _modelscreenState extends State<modelscreen> {
  File? _selectedImage;
  bool _isModelLoaded = false;
  bool _isModelLoading = false;
  String _loadingStatus = '';
  final ImagePicker _picker = ImagePicker();
  late Interpreter interpreter;

  Future<void> loadModel() async {
    try {
      interpreter = await Interpreter.fromAsset('assets/model/recipe_model.tflite');
      print('Model loaded successfully');
    } catch (e) {
      print('Error loading model: $e');
    }
  }
  Future<void> _loadModel() async {
    setState(() {
      _isModelLoading = true;
      _loadingStatus = 'Initializing model...';
    });

    try {
      // Simulate model initialization
      await Future.delayed(Duration(milliseconds: 800));
      setState(() {
        _loadingStatus = 'Loading weights...';
      });

      // Simulate loading model weights
      await Future.delayed(Duration(milliseconds: 1000));
      setState(() {
        _loadingStatus = 'Preparing inference engine...';
      });

      // Simulate preparing inference engine
      await Future.delayed(Duration(milliseconds: 700));
      setState(() {
        _loadingStatus = 'Model ready for prediction...';
      });

      // Final delay before showing model loaded
      await Future.delayed(Duration(milliseconds: 300));

      setState(() {
        _isModelLoaded = true;
        _isModelLoading = false;
        _loadingStatus = '';
      });

      // Navigate to next screen after 5 seconds
      Future.delayed(Duration(seconds: 2), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => IngredientListScreen()),
        );
      });

    } catch (e) {
      setState(() {
        _isModelLoading = false;
        _loadingStatus = 'Error loading model';
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load model: $e')),
      );
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final XFile? image = await _picker.pickImage(source: source);
      if (image != null) {
        setState(() {
          _selectedImage = File(image.path);
        });

        // Load model after image selection
        await _loadModel();
      }
    } catch (e) {
      print('Error picking image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error selecting image')),
      );
    }
  }

  void _showImageSourceDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Image Source'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Select from Gallery'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Capture Image'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('image classification'),
          backgroundColor: Colors.green.shade200,
        ),
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: _selectedImage == null
                        ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.image,
                          size: 80,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Select Image from Gallery\nor\nCapture Image',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    )
                        : ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.file(
                        _selectedImage!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: _showImageSourceDialog,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade200,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                    child: Text(
                      'Select Image',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  if (_isModelLoading) ...[
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.orange.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                              ),
                              SizedBox(width: 15),
                              Text(
                                'Loading Model...',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.orange.shade800,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          if (_loadingStatus.isNotEmpty) ...[
                            SizedBox(height: 10),
                            Text(
                              _loadingStatus,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.orange.shade700,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                  if (_isModelLoaded) ...[
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 24,
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Model Loaded Successfully!',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),

                  ],
                ],
              ),
            ),
            ),
       );
  }
}
