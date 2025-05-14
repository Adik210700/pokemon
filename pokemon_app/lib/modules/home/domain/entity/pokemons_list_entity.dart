class PokemonsListEntity {
  final int count;
  final String next;
  final String? previous;
  final List<PokemonsListElementEntity> results;

  PokemonsListEntity({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });
}

class PokemonsListElementEntity {
  final String name;
  final String url;

  PokemonsListElementEntity({
    required this.name,
    required this.url,
  });
}
