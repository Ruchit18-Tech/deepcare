import 'package:deepcare/size_config.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './utils/data_list.dart';
import './widgets/listItem.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SafeArea(
                child: Scaffold(
                  appBar: AppBar(
                    title: const Text(
                      'DeepCare',
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.blue.withOpacity(0.5),
                  ),
                  body: const GraphPage(),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class GraphPage extends StatefulWidget {
  const GraphPage({Key? key}) : super(key: key);

  @override
  _GraphPageState createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: Stack(
          children: [
            Container(
              height: SizeConfig.screenHeight * 0.40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue.withOpacity(0.5),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: ListView.builder(
                      // physics: BouncingScrollPhysics(),
                      dragStartBehavior: DragStartBehavior.down,
                      reverse: true,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ListItem(DataList().dataList(), index);
                      },
                      itemCount: DataList().datalength(),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: SizeConfig.screenHeight * 0.04),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'MET',
                            style: TextStyle(
                              fontSize: SizeConfig.screenHeight * 0.02,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.025,
                          ),
                          FittedBox(
                            child: Text(
                              'km Joggen',
                              style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.02,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: (SizeConfig.screenHeight * 0.145) +
                      (SizeConfig.screenHeight * 0.1 * 0.3) -
                      8),
              child: Row(
                children: <Widget>[
                  const Expanded(
                    flex: 8,
                    child: DottedLine(
                      dashColor: Colors.white,
                      // dashGradient: [Colors.grey, Colors.white],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Ziel',
                      style: TextStyle(
                        fontSize: SizeConfig.screenHeight * 0.02,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (SizeConfig.screenHeight * 0.245) - 8,
                right: SizeConfig.screenWidth * 0.25,
              ),
              child: const Divider(
                thickness: 2.0,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
