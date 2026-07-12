
class GooglePlaceDto {

  final String placeId;
  final String name;
  final String address;
  final double latitude;
  final double longitude;

  GooglePlaceDto({
    required this.placeId,
    required this.name,
    required this.address,
    required this.latitude,
    required this.longitude,
  });

  factory GooglePlaceDto.fromJson(Map<String, dynamic> json) {
    return GooglePlaceDto(
        placeId: json["place_id"] ?? "",
        name: json["name"] ?? "",
        address: json["formatted_address"] ?? json["vicinity"] ?? "",
        latitude: (json["geometry"]["location"]["lat"] as num).toDouble() ?? 0.0,
        longitude: (json["geometry"]["location"]["lng"] as num).toDouble() ?? 0.0,
    );
  }
}

