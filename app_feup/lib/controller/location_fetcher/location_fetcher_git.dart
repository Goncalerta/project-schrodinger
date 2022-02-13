import 'package:redux/src/store.dart';
import 'package:uni/controller/location_fetcher/location_fetcher.dart';
import 'package:uni/model/app_state.dart';

import 'package:uni/model/entities/location_group.dart';

class LocationFetcherGit extends LocationFetcher{
  @override
  Future<List<LocationGroup>> getLocations(Store<AppState> store) async {
    final String json = '''
      {"data":[{"id":0,"lat":41.17727714163054,"lng":-8.595256816134192,"isFloorless":false,"locations":{"0":[{"type":"ROOMS","args":{"firstRoom":"B004","lastRoom":"B007"}}],"1":[{"type":"ROOMS","args":{"firstRoom":"B101","lastRoom":"B103"}},{"type":"COFFEE_MACHINE","args":{}},{"type":"VENDING_MACHINE","args":{}}],"2":[{"type":"ROOMS","args":{"firstRoom":"B201","lastRoom":"B206"}},{"type":"COFFEE_MACHINE","args":{}},{"type":"VENDING_MACHINE","args":{}}],"3":[{"type":"ROOMS","args":{"firstRoom":"B301","lastRoom":"B306"}}]}},{"id":1,"lat":41.17742653521782,"lng":-8.595423091664577,"isFloorless":false,"locations":{"0":[{"type":"ROOMS","args":{"firstRoom":"B008","lastRoom":"B009"}},{"type":"PRINTER","args":{}},{"type":"ATM","args":{}}],"1":[{"type":"ROOM","args":{"room":"B104"}}],"2":[{"type":"ROOM","args":{"room":"B207"}}],"3":[{"type":"ROOMS","args":{"firstRoom":"B307","lastRoom":"B308"}}]}},{"id":2,"lat":41.177378083280914,"lng":-8.595675215026287,"isFloorless":false,"locations":{"0":[{"type":"ROOMS","args":{"firstRoom":"B010","lastRoom":"B013"}}],"1":[{"type":"ROOMS","args":{"firstRoom":"B105","lastRoom":"B107"}}],"2":[{"type":"ROOMS","args":{"firstRoom":"B208","lastRoom":"B213"}},{"type":"VENDING_MACHINE","args":{}},{"type":"COFFEE_MACHINE","args":{}}],"3":[{"type":"ROOMS","args":{"firstRoom":"B309","lastRoom":"B314"}}]}},{"id":3,"lat":41.17782222469451,"lng":-8.595797998570717,"isFloorless":true,"locations":{"0":[{"type":"ROOM","args":{"room":"B001"}}]}},{"id":4,"lat":41.17779799887688,"lng":-8.595648399364693,"isFloorless":true,"locations":{"0":[{"type":"ROOM","args":{"room":"B002"}}]}},{"id":5,"lat":41.177713208444594,"lng":-8.595535748728913,"isFloorless":true,"locations":{"0":[{"type":"ROOM","args":{"room":"B003"}}]}},{"id":6,"lat":41.17749921305601,"lng":-8.596034661034203,"isFloorless":false,"locations":{"0":[{"type":"ROOMS","args":{"firstRoom":"B014","lastRoom":"B017"}}],"1":[{"type":"ROOMS","args":{"firstRoom":"B109","lastRoom":"B111"}}],"2":[{"type":"ROOMS","args":{"firstRoom":"B214","lastRoom":"B217"}}],"3":[{"type":"SPECIAL_ROOM","args":{"room":"Núcleo de informática","name":"B315"}}]}},{"id":7,"lat":41.17761630495904,"lng":-8.596254580744905,"isFloorless":false,"locations":{"0":[{"type":"ROOMS","args":{"firstRoom":"B018","lastRoom":"B019"}}],"1":[{"type":"ROOM","args":{"room":"B112"}}],"2":[{"type":"ROOMS","args":{"firstRoom":"B219","lastRoom":"B220"}},{"type":"ROOMS","args":{"firstRoom":"B322","lastRoom":"B323"}}]}},{"id":8,"lat":41.177559777859585,"lng":-8.596485255005897,"isFloorless":false,"locations":{"0":[{"type":"ROOMS","args":{"firstRoom":"B020","lastRoom":"B023"}}],"1":[{"type":"ROOMS","args":{"firstRoom":"B113","lastRoom":"B115"}}],"2":[{"type":"ROOMS","args":{"firstRoom":"B221","lastRoom":"B223"}},{"type":"ROOMS","args":{"firstRoom":"B324","lastRoom":"B329"}}]}},{"id":9,"lat":41.17744268585552,"lng":-8.594870138536912,"isFloorless":true,"locations":{"0":[{"type":"RESTAURANT","args":{"name":"Bar da biblioteca"}}]}},{"id":10,"lat":41.178484393573534,"lng":-8.597508341495425,"isFloorless":true,"locations":{"0":[{"type":"RESTAURANT","args":{"name":"Bar de minas"}}]}},{"id":11,"lat":41.17621926377696,"lng":-8.596961912283486,"isFloorless":true,"locations":{"0":[{"type":"RESTAURANT","args":{"name":"AEFEUP"}}]}},{"id":12,"lat":41.1762879052247,"lng":-8.595551209627097,"isFloorless":true,"locations":{"0":[{"type":"RESTAURANT","args":{"name":"Cantina da Feup"}}]}},{"id":13,"lat":41.17641307473838,"lng":-8.59535823414918,"isFloorless":true,"locations":{"0":[{"type":"RESTAURANT","args":{"name":"Grill de engenharia"}}]}}]}
    
    ''';


    return getFromJSON(json);

  }

}