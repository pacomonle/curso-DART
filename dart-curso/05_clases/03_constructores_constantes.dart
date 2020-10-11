class Location {
  final double lat;
  final double lng;
// Constructor
  // Location(this.lat, this.lng)
  const Location(this.lat, this.lng);
}

main(List<String> args) {
  final sanFrancisco1 = new Location(18.2323, 39.9000);
  final sanFrancisco2 = new Location(18.2323, 39.9001);
  final sanFrancisco3 = new Location(18.2323, 39.9001);

  print(sanFrancisco1 == sanFrancisco2); // False
  print(sanFrancisco2 ==
      sanFrancisco3); // False apunta a dos lugares distintos de memoria

  const sanFrancisco4 = const Location(18.2323, 39.9000);
  const sanFrancisco5 = const Location(18.2323, 39.9001);
  const sanFrancisco6 = const Location(18.2323, 39.9001);

  const berlin = const Location(18.2323, 39.9001);

  print(sanFrancisco4 == sanFrancisco5); // False
  print(
      sanFrancisco5 == sanFrancisco6); // true? apunta al mismo lugar de memoria
  print(berlin == sanFrancisco6); // true?  apunta al mismo lugar de memoria
}
