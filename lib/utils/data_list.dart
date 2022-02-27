import '../models/graph_data_model.dart';

class DataList {
  final List<GraphDataModel> _graphdatalist = [
    GraphDataModel(
      date: "2022-02-23",
      greenValue: 100,
      pinkValue: 70,
      blueValue: 70,
      met: 230,
      jogging: 4.7,
    ),
    GraphDataModel(
      date: "2022-02-22",
      greenValue: 70,
      pinkValue: 80,
      blueValue: 70,
      met: 250,
      jogging: 5.7,
    ),
    GraphDataModel(
      date: "2022-02-21",
      greenValue: 80,
      pinkValue: 56,
      blueValue: 90,
      met: 230,
      jogging: 4.7,
    ),
    GraphDataModel(
      date: "2022-02-20",
      greenValue: 10,
      pinkValue: 00,
      blueValue: 90,
      met: 230,
      jogging: 4.7,
    ),
    GraphDataModel(
      date: "2022-02-19",
      greenValue: 90,
      pinkValue: 70,
      blueValue: 90,
      met: 230,
      jogging: 4.7,
    ),
    GraphDataModel(
      date: "2022-02-18",
      greenValue: 56,
      pinkValue: 70,
      blueValue: 90,
      met: 230,
      jogging: 4.7,
    ),
    GraphDataModel(
      date: "2022-02-17",
      greenValue: 40,
      pinkValue: 70,
      blueValue: 90,
      met: 230,
      jogging: 4.7,
    ),
    GraphDataModel(
      date: "2022-02-16",
      greenValue: 70,
      pinkValue: 70,
      blueValue: 90,
      met: 230,
      jogging: 4.7,
    ),
    GraphDataModel(
      date: "2022-02-15",
      greenValue: 75,
      pinkValue: 70,
      blueValue: 90,
      met: 230,
      jogging: 4.7,
    ),
    GraphDataModel(
      date: "2022-02-14",
      greenValue: 50,
      pinkValue: 70,
      blueValue: 90,
      met: 30,
      jogging: 5.7,
    ),
  ];

  int datalength() {
    return _graphdatalist.length;
  }

  List<GraphDataModel> dataList() {
    return _graphdatalist;
  }
}
