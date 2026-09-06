class Sport {
  final String name;
  final String description;
  final String image;
  final String category;

  Sport({
    required this.name,
    required this.description,
    required this.image,
    required this.category,
  });

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Sport &&
            runtimeType == other.runtimeType &&
            name == other.name;
  }

  @override
  int get hashCode => name.hashCode;
}