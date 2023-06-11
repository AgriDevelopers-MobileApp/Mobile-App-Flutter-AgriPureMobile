import 'package:flutter/material.dart';

import '../../models/specialist_model.dart';

class SpecialistDetailView extends StatelessWidget {

  Specialist specialist;
  SpecialistDetailView({required this.specialist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(40, 40, 40, 1.0),
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 4,
          iconTheme: IconThemeData(
            color: Colors.white, // Cambiar el color de la flecha de regreso a blanco
          ),
          title: Text('${specialist.name}', style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24
          ),),
          actions: [
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Lógica para eliminar aquí
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Basic information:', style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),),

                  SizedBox(
                    height: 12,
                  ),

                  Text('Specialist description: ${specialist.description_specialist}', style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Montserrat"
                  ),),

                  SizedBox(
                    height: 10,
                  ),


                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network('${specialist.image}',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,)
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Text('Specialist information:', style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),),

                  SizedBox(
                    height: 12,
                  ),

                  Text('Favorite plants: ${specialist.info_favorite_plants}', style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Montserrat"
                  ),),

                  SizedBox(
                    height: 10,
                  ),

                  Text('Experience: ${specialist.info_experience}', style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Montserrat"
                  ),),

                  SizedBox(
                    height: 10,
                  ),

                  Text('Certification: ${specialist.info_certifications} days', style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Montserrat"
                  ),),

                  SizedBox(
                    height: 10,
                  ),

                ],
              ),
            ),
          ],
        )
    );
  }
}