import 'package:hive_ce/hive_ce.dart';
import 'package:lat_res/data/local/tvshow.dart';

import 'user.dart';

@GenerateAdapters([
  AdapterSpec<LocalUser>(),
  AdapterSpec<LocalTVShow>(),
])
part 'hive_adapters.g.dart';
