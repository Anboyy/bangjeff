class ListArtikelModel {
  ListArtikelModel(
      {this.id, this.title, this.subtitle, this.deskripsi, this.image});

  int? id;
  String? title;
  String? subtitle;
  String? deskripsi;
  String? image;

  factory ListArtikelModel.fromJson(Map<String, dynamic> json) =>
      ListArtikelModel(
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        deskripsi: json["deskripsi"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subtitle": subtitle,
        "deskripsi": deskripsi,
        "image": image
      };
}
