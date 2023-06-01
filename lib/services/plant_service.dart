import 'dart:convert';
import 'package:agripure_mobile/models/plant_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class PlantService {
  static Future<List<Plant>> getPlants() async {
    var url = Uri.parse('https://agripure-mobile-service.onrender.com/api/plants');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    Map<String, String> headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": 'Bearer $token'
    };

    List<Plant> plantsList = [];

    final response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      final plants = jsonDecode(response.body);

      for (var plant in plants) {
        plantsList.add(Plant.fromJson(plant));
      }

      return plantsList;
    }

    /*plantsList.add(
        Plant(
          id: 1,
          name: "Cauliflower",
          image: "https://www.gob.mx/cms/uploads/article/main_image/45015/coliflor.jpg",
          scientifist_name: "Brassica oleracea var. botrytis",
          variety: "Brassica oleracea",
          info_land_type: "Cauliflower is grown in a wide variety of soils. The best results are obtained in loamy, deep soils with a good content of organic matter. Cauliflower is very sensitive to soil acidity, it develops well in soils with a pH between 5.5 and 6.5.",
          info_distance_between: "Planting distances vary according to the time of year in which it is planted; in the dry season it can be sown at 50 cm between plants and 60 cm between rows and in the rainy season it is advisable to widen the distance between rows to 80 cm.",
          depth: "5",
          info_ideal_depth: "You can then sow 3-4 seeds in each hole at a depth of 0.5-1.5 cm (0.2-0.6 inches) and gently cover with soil. You can water immediately after sowing. Cauliflower germinates best at an average temperature of 80°F (26°C). The seed needs to have optimal moisture levels to germinate.",
          distance_between: "5",
          info_fert_fumig: "Fertilizing at the right time is crucial to getting the most out of your cauliflower crops. In general, you should pay once every two weeks during periods of active growth. In the case of transplants, pay once before the transplant and again two weeks after.\n\nThis plant should be fumigated every 3-5 weeks in order to isolate them from mosquitoes and other pests, this by spraying the fumigation on the plant itself. On the other hand, drenching the soil with insecticide can prevent the formation of larvae for a period of 7 weeks.",
          intervale_fert: 5,
          intervale_fumig: 5
        )
    );

    plantsList.add(
        Plant(
            id: 2,
            name: "Apple",
            image: "https://www.recetasnestle.com.pe/sites/default/files/styles/crop_article_banner_desktop_nes/public/2022-07/banner-manzana-verde-y-roja.jpg?itok=UjiFQnEs",
            scientifist_name: "Pyrus malus L",
            variety: "Malus domestica",
            info_land_type: "The apple tree can thrive in average soil with a pH close to 7, for this it must be well drained and free of standing water. However, the best yields are reported in fertile and loamy sandy soils with a pH between 6 and 7.",
            info_distance_between: "The distance we leave between the apple trees depends on the apple variety, and more specifically on the final size of the mature tree and our preference for extensive agriculture. Distances between rows and between trees in the row range from 22 X 16 ft to 6 X 6 ft (7m X 5m to 1.8m X 1.8m).",
            depth: "6",
            info_ideal_depth: "Begin by digging a hole 25 inches (63 cm) in diameter and 25 inches (63 cm) deep for each sapling you plan to plant. Trees are carefully placed in the holes and covered with soil.",
            distance_between: "13",
            info_fert_fumig:"Apple tree pests can affect different organs of the tree, such as fruits, leaves, branches or roots, with fruit damage being the most visible and causing the most losses to the farmer during the harvest. There is a wide group of species considered pests, among which the apple moth or carpocapsa, the two-spotted mite, the aphid and the thrips stand out.",
            intervale_fert: 10,
            intervale_fumig: 10
        )
    );*/

    return plantsList;
  }
}