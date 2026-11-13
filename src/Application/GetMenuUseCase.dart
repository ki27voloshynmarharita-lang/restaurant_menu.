import '../Domain/IMenuRepository.dart';
import '../Domain/MenuItem.dart';

class GetMenuUseCase {
  final IMenuRepository repository;

  GetMenuUseCase(this.repository);

  List<MenuItem> execute() {
    return repository.getAllItems();
  }
}