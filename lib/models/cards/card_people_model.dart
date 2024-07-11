// ignore_for_file: public_member_api_docs, sort_constructors_first
class CardPeopleModel {
  String? image;
  String? crown;
  String? name;

  CardPeopleModel({
    this.image,
    this.crown,
    this.name,
  });

  CardPeopleModel copyWith({
    String? image,
    String? crown,
    String? name,
  }) {
    return CardPeopleModel(
      image: image ?? this.image,
      crown: crown ?? this.crown,
      name: name ?? this.name,
    );
  }
}
