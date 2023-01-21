// To parse this JSON data, do
//
//     final imageApi = imageApiFromJson(jsonString);

import 'dart:convert';

List<ImageApi?>? imageApiFromJson(String str) => json.decode(str) == null ? [] : List<ImageApi?>.from(json.decode(str)!.map((x) => ImageApi.fromJson(x)));

String imageApiToJson(List<ImageApi?>? data) => json.encode(data == null ? [] : List<dynamic>.from(data!.map((x) => x!.toJson())));

class ImageApi {
  ImageApi({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  factory ImageApi.fromJson(Map<String, dynamic> json) => ImageApi(
    albumId: json["albumId"],
    id: json["id"],
    title: json["title"],
    url: json["url"],
    thumbnailUrl: json["thumbnailUrl"],
  );

  Map<String, dynamic> toJson() => {
    "albumId": albumId,
    "id": id,
    "title": title,
    "url": url,
    "thumbnailUrl": thumbnailUrl,
  };
}
