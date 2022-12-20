import 'package:dog_world/dog_park_info/domain/models/dog_park_info_model.dart';
import 'package:dog_world/dog_park_info/domain/services/dog_park_info_service.dart';
import 'package:dog_world/dog_park_info/widgets/comment_section.dart';
import 'package:dog_world/dog_park_info/widgets/park_info.dart';
import 'package:flutter/material.dart';

class DogParkInfo extends StatefulWidget {
  const DogParkInfo({
    super.key,
    required this.parkId,
  });

  final int parkId;

  @override
  State<DogParkInfo> createState() => _DogParkInfoState();
}

class _DogParkInfoState extends State<DogParkInfo> {
  final DogParkInfoService _service = DogParkInfoService();
  late DogParkInfoModel _dogParkInfoModel;

  late final Future<DogParkInfoModel> dogParkInfoModelFuture =
      _service.getDogParkInfo(widget.parkId);

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  Future _refresh() async {
    DogParkInfoModel dogParkInfoModel = await dogParkInfoModelFuture;
    setState(() {
      _dogParkInfoModel = dogParkInfoModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          child: const Icon(Icons.arrow_back),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
      body: FutureBuilder(
        future: dogParkInfoModelFuture,
        builder:
            (BuildContext context, AsyncSnapshot<DogParkInfoModel> snapshot) {
          List<Widget> children;
          if (snapshot.hasData) {
            children = [
              Column(
                children: [
                  ParkInfo(
                    body: _dogParkInfoModel.body,
                    author: _dogParkInfoModel.authorName,
                  ),
                  CommentSection(
                    comments: _dogParkInfoModel.comments,
                  ),
                ],
              ),
            ];
            // TODO: Update error message
          } else if (snapshot.hasError) {
            children = <Widget>[
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Error: ${snapshot.error}'),
              ),
            ];
            // TODO: Update progress message
          } else {
            children = const <Widget>[
              SizedBox(
                width: 60,
                height: 60,
                child: CircularProgressIndicator(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Awaiting result...'),
              ),
            ];
          }
          return Column(
            children: children,
          );
        },
      ),
    );
  }
}
