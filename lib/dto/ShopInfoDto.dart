
class ShopDto {

  final int? shopId;
  final String googlePlaceId;
  final String name;
  final double latitude;
  final double longitude;
  final String address;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool deleteFlg;

  ShopDto({
    this.shopId,
    required this.googlePlaceId,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.createdAt,
    required this.updatedAt,
    this.deleteFlg
  });

  factory ShopDto.fromMap(Map<String, dynamic> map){
    return ShopDto(
      googlePlaceId: googlePlaceId,
      name: name,
      latitude: latitude,
      longitude: longitude,
      address: address,
      createAt: createAt,
      updateAt: updateAt
    );
  }

  Map<String, dynamic> toMap(){
    return {
      "shop_id": shopId,
      "google_place_id": googlePlaceId,
      "name": name,
      "latitude": latitude,
      "longitude": longitude,
      "address": address,
      "created_at": createdAt.toIso8601String(),
      "updated_at": updatedAt.toIso8601String(),
      "delete_flg": deleted ? 1 : 0,
    };
  }
}