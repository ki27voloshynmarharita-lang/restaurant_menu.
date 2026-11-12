import 'MenuItem.dart';

abstract class IMenuRepository {
  List<MenuItem> getAllItems();
  List<MenuItem> getItemsByCategory(String category);
}