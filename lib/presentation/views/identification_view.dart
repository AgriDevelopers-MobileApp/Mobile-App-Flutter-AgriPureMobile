import 'dart:convert';
import 'dart:typed_data';
import 'package:agripure_mobile/services/identify_service.dart';
import '../../models/plant_result.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class IdentificationView extends StatefulWidget {
  const IdentificationView({Key? key}) : super(key: key);

  @override
  State<IdentificationView> createState() => _IdentificationViewState();
}

class _IdentificationViewState extends State<IdentificationView> {
  PlantResult? _plantResult;
  Uint8List? _imageBytes;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 1.0),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text("Do you want to identify your plant?",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              if (_imageBytes == null && _plantResult == null && !_isLoading)

                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Captura una imagen para predecir qué planta puede ser',
                      style: TextStyle(fontSize: 18, color: Colors.white,),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              if (_isLoading)
                CircularProgressIndicator(),

              if (_imageBytes != null)
                Image.memory(
                  _imageBytes!,
                  width: 250,
                  height: 250,
                ),
              if (_plantResult != null)
                Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Nombre de la planta:',
                      style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,),
                    ),
                    Text(
                      _plantResult!.plantName,
                      style: TextStyle(fontSize: 16,
                        color: Colors.white,),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Detalles:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                        color: Colors.white,),
                    ),
                    Text(
                      _plantResult!.plantDetails["scientific_name"].toString(),
                      style: TextStyle(fontSize: 16,
                        color: Colors.white,),
                    ),

                    SizedBox(height: 20),
                    Text(
                      'Probabilidad:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                        color: Colors.white,),
                    ),
                    Text(
                      _plantResult!.probability.toString(),
                      style: TextStyle(fontSize: 16,
                        color: Colors.white,),
                    ),
                  ],
                ),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: _takePhoto,
        child: Icon(Icons.camera),
      ),
    );
  }

  Future<void> _takePhoto() async {
    final imagePicker = ImagePicker();

    final XFile? imageFile = await imagePicker.pickImage(
      source: ImageSource.camera, // Utiliza la cámara para tomar la foto
    );

    if (imageFile != null) {
      final imageBytes = await imageFile.readAsBytes();
      final base64Image = base64Encode(imageBytes);

      setState(() {
        _imageBytes = imageBytes;
        _plantResult = null;
        _isLoading = true;
      });

      try {
        final plantResult = await IdentifyService.sendImageToApi(base64Image)
        .catchError((onError) =>{
          print(onError)
        });

        setState(() {
          _plantResult = plantResult;
          _isLoading = false;
        });
      } catch (e) {
        setState(() {
          _isLoading = false;
        });
        print("Error");
      }
    }
  }
}
