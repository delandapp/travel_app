class Travel {
  String name,image,desc,location,price;
  bool isFavorit;

  Travel(this.name, this.image, this.desc, this.location, this.price, {this.isFavorit = false});

  void favorit() {
    isFavorit = !isFavorit;
  }
}