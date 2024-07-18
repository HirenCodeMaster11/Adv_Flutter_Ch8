class Album {
  late int albumId, id;
  late String title, url, thumbnailUrl;

  Album(
      {required this.albumId,
      required this.id,
      required this.thumbnailUrl,
      required this.title,
      required this.url});

  factory Album.fromMap(Map m1) {
    return Album(
        albumId: m1['albumId'],
        id: m1['id'],
        thumbnailUrl: m1['thumbnailUrl'],
        title: m1['title'],
        url: m1['url']);
  }
}
