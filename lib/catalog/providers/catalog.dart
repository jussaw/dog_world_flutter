import 'package:dog_world/catalog/domain/models/dog_park_entry_list_model.dart';
import 'package:dog_world/catalog/domain/models/dog_park_entry_model.dart';
import 'package:dog_world/catalog/domain/services/catalog_service.dart';
import 'package:dog_world/catalog/widgets/catalog_entry.dart';
import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  final CatalogService _service = CatalogService();
  late List<DogParkEntryModel> _dogParkEntryModelList;

  late final Future<DogParkListModel> _dogParkEntryModelListFuture =
      _service.getDogParks();

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  Future _refresh() async {
    DogParkListModel dogParkListModel = await _service.getDogParks();
    setState(() {
      _dogParkEntryModelList = dogParkListModel.dogParkList;
    });
  }

  // TODO: Implement update function
  // Future _appendToList() async {
  //   DogParkListModel dogParkListModel = await _service.getNewParks();
  //   setState((() {
  //     _dogParkEntryModelList.addAll(dogParkListModel.dogParkList);
  //   }));
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RefreshIndicator(
        onRefresh: _refresh,
        child: FutureBuilder(
          future: _dogParkEntryModelListFuture,
          builder:
              (BuildContext context, AsyncSnapshot<DogParkListModel> snapshot) {
            Widget child;
            if (snapshot.hasData) {
              child = ListView(
                children: [
                  ..._dogParkEntryModelList.map((dogParkEntryModel) =>
                      CatalogEntry(model: dogParkEntryModel))
                ],
              );
              // TODO: Update error message
            } else if (snapshot.hasError) {
              child = Column(
                children: [
                  const Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('Error: ${snapshot.error}'),
                  ),
                ],
              );
              // TODO: Update progress message
            } else {
              child = Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: CircularProgressIndicator(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Awaiting result...'),
                  ),
                ],
              );
            }
            return child;
          },
        ),
      ),
    );
  }
}
