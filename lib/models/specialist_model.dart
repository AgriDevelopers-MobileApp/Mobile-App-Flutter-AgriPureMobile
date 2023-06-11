class Specialist {
  int? id;
  String? name;
  String? image;
  String? description_specialist;
  String? info_favorite_plants;
  String? info_certifications;
  String? info_experience;

  Specialist({
      required this.id,
      required this.name,
      required this.image,
      required this.description_specialist,
      required this.info_favorite_plants,
      required this.info_certifications,
      required this.info_experience
});

  Specialist.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description_specialist = json['description_specialist'];
    info_favorite_plants = json['info_favorite_plants'];
    info_certifications = json['info_certifications'];
    info_experience = json['info_experience'];
  }
}