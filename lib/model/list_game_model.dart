class ListGameModel {
  ListGameModel(
      {this.id,
      this.nama_produk,
      this.pengembang,
      this.harga,
      this.deskripsi,
      this.image});

  int? id;
  String? nama_produk;
  String? pengembang;
  int? harga;
  String? deskripsi;
  String? image;

  factory ListGameModel.fromJson(Map<String, dynamic> json) => ListGameModel(
        id: json["id"],
        nama_produk: json["nama_produk"],
        pengembang: json["pengembang"],
        harga: json["harga"],
        deskripsi: json["deskripsi"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama_produk": nama_produk,
        "pengembang": pengembang,
        "harga": harga,
        "deskripsi": deskripsi,
        "image": image
      };
}
