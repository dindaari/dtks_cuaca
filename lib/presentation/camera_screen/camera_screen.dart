import 'dart:io';

// import 'package:deteksi_cuaca/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(CameraScreen());
}

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Object Detection',
      home: CameraScreenPage(),
    );
  }
}

class CameraScreenPage extends StatefulWidget {
  @override
  _CameraScreenPageState createState() => _CameraScreenPageState();
}

class _CameraScreenPageState extends State<CameraScreenPage> {
  late CameraController _controller;
  late List<CameraDescription> _cameras;
  File? _image;
  List<dynamic>? _recognitions;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
    loadModel();
  }

  Future<void> _initializeCamera() async {
    _cameras = await availableCameras();
    _controller = CameraController(_cameras[0], ResolutionPreset.medium);
    await _controller.initialize();
    if (!mounted) {
      return;
    }
    setState(() {});
  }

  loadModel() async {
    await Tflite.loadModel(
      model: 'assets/model_unquant.tflite', // Ganti dengan path model TFLite Anda
      labels: 'assets/labels.txt', // Ganti dengan path label model Anda
    );
  }

  runModelOnImage() async {
    if (_image == null) return;

    final recognitions = await Tflite.runModelOnImage(
      path: _image!.path,
      numResults: 5,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );

    setState(() {
      _recognitions = recognitions;
    });
  }

  Future<void> pickImageFromCamera() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });

      runModelOnImage();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    Tflite.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Object Detection with Camera'),
      ),
      body: Stack(
        children: [
          CameraPreview(_controller),
          Positioned(
            bottom: 10,
            left: 10,
            child: _image == null
                ? ElevatedButton(
                    onPressed: () {
                      pickImageFromCamera();
                    },
                    child: Text('Ambil Gambar'),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _recognitions != null
                        ? _recognitions!.map((res) {
                            return Text(
                                '${res['label']} ${(res['confidence'] * 100).toStringAsFixed(2)}%');
                          }).toList()
                        : [],
                  ),
          ),
        ],
      ),
    );
  }
}
// /// Navigates to the artikelScreen when the action is triggered.
//   onTapImgIcOutlineArticle(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.artikelScreen);
//   }

//   /// Navigates to the chatbotScreen when the action is triggered.
//   onTapImgImage(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.chatbotScreen);
//   }
