import 'package:app/domain/home_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeService)
class MemoryHomeService implements HomeService {
  @override
  bool checkUser(String username, String password) {
    if(username == 'dani' && password == '1234'){
      return true;
    }

    return false;
  }
}