import 'package:hive_ce/hive_ce.dart';
import 'package:lat_res/data/local/recipe.dart';
import 'user.dart';

@GenerateAdapters([AdapterSpec<LocalUser>(), AdapterSpec<LocalRecipe>()])
part 'hive_adapters.g.dart';
