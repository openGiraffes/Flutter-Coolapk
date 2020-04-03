import 'package:coolapk_flutter/widget/data_list/data_list.dart';
import 'package:coolapk_flutter/widget/limited_container.dart';
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  final dynamic data;

  TabPage({Key key, @required this.data}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LimitedContainer(
      limiteType: LimiteType.SingleColumn,
      child: DataListPage(DataListConfig(
        title: widget.data.title,
        url: widget.data.url,
      )),
    );
    // return DataListPageFrameWidget();
  }
}
