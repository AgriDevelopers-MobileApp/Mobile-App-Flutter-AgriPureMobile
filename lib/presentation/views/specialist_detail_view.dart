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
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description:', style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),),

                  SizedBox(
                    height: 12,
                  ),

                  Text('${specialist.description}', style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Montserrat"
                  ),),

                  SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                    height: 26,
                  ),

                  /*ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network('${specialist.image}',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,)
                  ),*/

                  SizedBox(
                    height: 20,
                  ),

                  Text('Contact information:', style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),),

                  SizedBox(
                    height: 12,
                  ),

                  Text('Telephone number: ${specialist.telephone_number}', style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Montserrat"
                  ),),

                  SizedBox(
                    height: 10,
                  ),

                  Text('Whatsapp Number: ${specialist.whatsapp_number}', style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Montserrat"
                  ),),

                  SizedBox(
                    height: 10,
                  ),

                  Text('Email: ${specialist.contact_email}', style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Montserrat"
                  ),),

                  SizedBox(
                    height: 10,
                  ),

                  Text('Extra information:', style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),),

                  SizedBox(
                    height: 26,
                  ),

                  ExpansionTile(
                    title: Text('Favorite plants:', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),),
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text('${specialist.info_favorite_plants}', style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                        ),),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 26,
                  ),


                  ExpansionTile(
                    title: Text('Certifications:', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),),
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text('${specialist.info_certifications}', style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300
                        ),),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 26,
                  ),

                  ExpansionTile(
                    title: Text('Experience:', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),),
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text('${specialist.info_experience}', style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300
                        ),),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 26,
                  ),

                ],
              ),
            ),
          ],
        )
    );
  }
}