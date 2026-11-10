class CakeShop {
  const CakeShop({
    required this.name,
    required this.address,
    required this.phone,
    required this.images,
    required this.description,
    required this.openCloseTime,
    required this.website,
    required this.facebook,
    required this.latitude,
    required this.longitude,
  });

  final String name;
  final String address;
  final String phone;
  final List<String> images;
  final String description;
  final String openCloseTime;
  final String website;
  final String facebook;
  final double latitude;
  final double longitude;
}
