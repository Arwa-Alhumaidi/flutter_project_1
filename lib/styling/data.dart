class dataShop {
  final String id;
  final String title;
  final String image;

  const dataShop({
    required this.id,
    required this.title,
    required this.image,
  });
}

const data = [
  dataShop(id: '1', title: 'Nike React Pegasus Trail 4', image: 'assets/p2.png'),
  dataShop(id: '2', title: 'Nike ZoomX Invincible Run Flyknit 2', image: 'assets/p1.png'),
];
