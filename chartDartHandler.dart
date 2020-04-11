import 'dart:io';
import 'dart:async';
import 'dart:convert';

//void main(List arguments) {
//  List splitListElement;
//  List tempStoreDataSet = new List();
//
//  String tempString;
//  var stockHistoricalData = new File("CCL_Historical_Data.csv")
//      .openRead()
//      .transform(utf8.decoder)       // Decode bytes to UTF-8.
//      .transform(new LineSplitter()) // Convert stream to individual lines.
//      .forEach((dataListElement) {
//    tempStoreDataSet.add(dataListElement);
////    print(tempStoreDataSet);
//
////        print(dataListElement);
////        String tempString = " ";
////        splitListElement = dataListElement.split(",");
//  });
//  new File('oneSecDataSet(current_to_old).dart').writeAsStringSync(
//      "List<List> tempStoreOneSecDataSet = $tempStoreDataSet");
//  tempStoreDataSet.add(splitListElement.toString());
////  print(tempStoreDataSet);
//
//
//}

import 'dart:io';
import 'dart:async';
import 'dart:convert';

  List<List> stockDataList = new List();


main(List arguments) {
  final File file = new File("CCL_Historical_Data.csv");
  Stream<List> inputStream = file.openRead();
  inputStream
      .transform(utf8.decoder)       // Decode bytes to UTF-8.
      .transform(new LineSplitter()) // Convert stream to individual lines.
      .listen((String line) {        // Process results.
    List row = line.split(','); // split by comma

    String date = row[0];
    String price = row[1];
    String open = row[2];
    String high = row[3];
    String low = row[4];
    String vol = row[5];
    String change = row[6];
    stockDataList.add(stockDataList);
//    stockDataList.add([date, price, open, high, low, vol, change]);
//    print('$date, $price, $open');
  }


  ,
      onDone: () {

        print('File is now closed.');
        },
      onError: (e) { print(e.toString()); });
  //  Duration interval = Duration(seconds: 1);

//  Duration interval = Duration(seconds: 1);
//  inputStream = Stream.periodic(interval, (data){
//    //    limtOfData++;
////    return originalChartDataList[data];
//  });
  new File('ccl_historical_Data.dart').writeAsStringSync(
      "List<List> old_to_current_oneSecDataSet = 1234 ;");
}