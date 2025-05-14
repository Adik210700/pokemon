import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_app/core/services/di/di_injection.config.dart';



@InjectableInit(
  initializerName:'init',
  preferRelativeImports: true,
  asExtension : true,
)
void configureDependencies(GetIt getIt)=> getIt.init();