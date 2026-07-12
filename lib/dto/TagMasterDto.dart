
class TagDto {

  final int? tagId;
  final String tagName;
  bool selected;

  TagDto({
    this.tagId,
    required this.tagName,
    this.selected = false,
  });

  factory TagDto.fromMap(Map<String, dynamic> map){
    return TagDto(
      tagId: map["tag_id"] as int?,
      tagName: map["tag_name"],
    );
  }

  Map<String, dynamic> toMap(){
    return {
      "tag_id": tagId,
      "tag_name": tagName,
    };
  }

  @override
  String toString(){
    return tagName;
  }
}
