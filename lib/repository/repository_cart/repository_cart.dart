abstract class RepositoryCart {
  const RepositoryCart();

  List<String> get data;

  void add(String cardId);

  void remove(String cardId);
}
