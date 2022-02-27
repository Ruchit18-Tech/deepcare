import 'package:deepcare/models/graph_data_model.dart';
import 'package:deepcare/size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListItem extends StatefulWidget {
  List<GraphDataModel> dataList;
  int i;

  ListItem(this.dataList, this.i);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                DateFormat('E').format(DateTime.parse(
                        widget.dataList[widget.i].date.toString())) +
                    ',',
                style: TextStyle(
                  fontSize: SizeConfig.screenHeight * 0.02,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              Text(
                widget.dataList[widget.i].date.toString().split('-')[2] +
                    '.' +
                    widget.dataList[widget.i].date.toString().split('-')[1],
                style: TextStyle(
                  fontSize: SizeConfig.screenHeight * 0.02,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
            width: SizeConfig.screenWidth * 0.08,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                Expanded(
                  child: FractionallySizedBox(
                    heightFactor: widget.dataList[widget.i].greenValue / 100,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.screenWidth * 0.009,
                ),
                Expanded(
                  child: FractionallySizedBox(
                    heightFactor: widget.dataList[widget.i].pinkValue / 100,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.screenWidth * 0.01,
                ),
                Expanded(
                  child: FractionallySizedBox(
                    heightFactor: widget.dataList[widget.i].blueValue / 100,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                widget.dataList[widget.i].met.toString(),
                style: TextStyle(
                  fontSize: SizeConfig.screenHeight * 0.02,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                widget.dataList[widget.i].jogging.toString(),
                style: TextStyle(
                  fontSize: SizeConfig.screenHeight * 0.02,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
