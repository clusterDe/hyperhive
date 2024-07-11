// ignore_for_file: public_member_api_docs, sort_constructors_first
class CardTopModel {
  String? crown;
  String? image;
  String? title;
  String? merk;
  List<String>? subTitle;
  String? stars;
  String? sold;
  List<String>? category;

  CardTopModel({
    this.crown,
    this.image,
    this.title,
    this.merk,
    this.subTitle,
    this.stars,
    this.sold,
    this.category,
  });

  CardTopModel copyWith({
    String? crown,
    String? image,
    String? title,
    String? merk,
    List<String>? subTitle,
    String? stars,
    String? sold,
    List<String>? category,
  }) {
    return CardTopModel(
      crown: crown ?? this.crown,
      image: image ?? this.image,
      title: title ?? this.title,
      merk: merk ?? this.merk,
      subTitle: subTitle ?? this.subTitle,
      stars: stars ?? this.stars,
      sold: sold ?? this.sold,
      category: category ?? this.category,
    );
  }
}
