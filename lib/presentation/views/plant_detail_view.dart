import 'package:flutter/material.dart';

import '../../models/plant_model.dart';

class PlantDetailView extends StatelessWidget {

  Plant plant;

  PlantDetailView({required this.plant});

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
        title: Text('${plant.name}', style: TextStyle(
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
            padding: const EdgeInsets.all(15.0),
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

                Text('Scientifist Name: ${plant.scientifist_name}', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat"
                ),),

                SizedBox(
                  height: 26,
                ),

                Text('Variety: ${plant.variety}', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w300
                ),),

                SizedBox(
                  height: 26,
                ),

                ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network('${plant.image}',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,)
                ),

                SizedBox(
                  height: 26,
                ),

                Text('Planting information:', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),),

                SizedBox(
                  height: 12,
                ),

                Text('Distance between: ${plant.distance_between} cm', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat"
                ),),

                SizedBox(
                  height: 20,
                ),

                Text('Depth: ${plant.depth} cm', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat"
                ),),

                SizedBox(
                  height: 20,
                ),

                Text('Fertilization interval: ${plant.intervale_fert} days', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat"
                ),),

                SizedBox(
                  height: 20,
                ),

                Text('Fumigation interval: ${plant.intervale_fumig} days', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat"
                ),),

                SizedBox(
                  height: 26,
                ),

                Text('Extra information:', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),),

                SizedBox(
                  height: 26,
                ),

                Text('Plant distance between plants:', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),),

                Text('${plant.info_distance_between}', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300
                ),),

                SizedBox(
                  height: 26,
                ),

                Text('Land type:', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),),

                Text('${plant.info_land_type}', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300
                ),),

                SizedBox(
                  height: 26,
                ),

                Text('Ideal depth for planting:', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),),

                Text('${plant.info_ideal_depth}', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300
                ),),

                SizedBox(
                  height: 26,
                ),

                Text('Fertilization and fumigation:', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),),

                Text('${plant.info_fert_fumig}', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300
                ),),

              ],
            ),
          ),
        ],
      )
    );
  }
}
