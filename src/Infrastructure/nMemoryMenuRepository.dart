import '../Domain/IMenuRepository.dart';
import '../Domain/MenuItem.dart';

class InMemoryMenuRepository implements IMenuRepository {
  final List<MenuItem> _items = [
    MenuItem(id: '1', name: 'Борщ', category: 'Перші страви', price: 120.0),
    MenuItem(id: '2', name: 'Вареники', category: 'Основні страви', price: 95.0),
    MenuItem(id: '3', name: 'Узвар', category: 'Напої', price: 35.0),
  ];

  @override
  List<MenuItem> getAllItems() {
    return _items;
  }

  @override
  List<MenuItem> getItemsByCategory(String category) {
    return _items.where((item) => item.category == category).toList();
  }
}