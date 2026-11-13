import '../Infrastructure/InMemoryMenuRepository.dart';
import '../Application/GetMenuUseCase.dart';

void main() {
  // 1. Створюємо конкретне сховище даних (Infrastructure)
  var repository = InMemoryMenuRepository();

  // 2. Передаємо його у UseCase (Application) - це і є Dependency Injection
  var getMenuUseCase = GetMenuUseCase(repository);

  // 3. Виконуємо логіку та виводимо результат (Presentation)
  var menu = getMenuUseCase.execute();

  print('--- Меню Ресторану ---');
  for (var item in menu) {
    print('${item.name} (${item.category}) - ${item.price} грн');
  }
}