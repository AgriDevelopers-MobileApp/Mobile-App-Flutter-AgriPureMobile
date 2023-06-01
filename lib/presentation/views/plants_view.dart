import 'package:agripure_mobile/presentation/views/plant_detail_view.dart';
import 'package:agripure_mobile/services/plant_service.dart';
import 'package:flutter/material.dart';

class PlantsView extends StatefulWidget {
  const PlantsView({Key? key}) : super(key: key);

  @override
  State<PlantsView> createState() => _PlantsViewState();
}

class _PlantsViewState extends State<PlantsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(40, 40, 40, 1.0),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Good Morning",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              SizedBox(
                height: 15,
              ),

              Text("Search plants",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),

              SizedBox(
                height: 15,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Ingrese planta a buscar"
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              Text("Your plants: ",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),

              SizedBox(
                height: 15,
              ),

              FutureBuilder(
                  initialData: [],
                  future:  PlantService.getPlants(),
                  builder: (context, AsyncSnapshot<List> snapshot){
                    return Expanded(
                      child: ListView.builder(
                          itemCount: snapshot.data!.length + 1,
                          itemBuilder: (context, index) {
                            if (index < snapshot.data!.length) {
                              var plant = snapshot.data![index];

                              return Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                              borderRadius: BorderRadius.circular(15),
                                              child: Image.network('${plant.image}',
                                                width: double.infinity,
                                                height: 200,
                                                fit: BoxFit.cover,)
                                          ),

                                          SizedBox(
                                            height: 20,
                                          ),

                                          Text("${plant.name}", style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold
                                          ),),

                                          SizedBox(
                                            height: 20,
                                          ),

                                          ElevatedButton(
                                            onPressed: (){
                                              Navigator.push(context, MaterialPageRoute(
                                                  builder: (context) => PlantDetailView(plant: plant)
                                              ));
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.orange, // Establecer el fondo anaranjado
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Text("Details", style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                            ),
                                          )

                                        ],
                                      ),
                                    )
                                ),
                              );
                            } else {
                              return Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  height: 250,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF4D4D4D),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+ ADD PLANTS',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }


                          }),
                    );
                  }
              )
            ],
          ),

        )
    );
  }
}