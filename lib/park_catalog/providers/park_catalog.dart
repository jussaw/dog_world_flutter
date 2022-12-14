import 'package:dog_world/global/widgets/error_screen.dart';
import 'package:dog_world/global/widgets/loading_screen.dart';
import 'package:dog_world/park_catalog/domain/models/dog_park_entry_list_model.dart';
import 'package:dog_world/park_catalog/domain/models/dog_park_entry_model.dart';
import 'package:dog_world/park_catalog/domain/services/catalog_service.dart';
import 'package:dog_world/park_catalog/widgets/park_catalog_entry.dart';
import 'package:flutter/material.dart';

class ParkCatalog extends StatefulWidget {
  const ParkCatalog({super.key});

  @override
  State<ParkCatalog> createState() => _ParkCatalogState();
}

class _ParkCatalogState extends State<ParkCatalog> {
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
              child = ListView.separated(
                itemCount: _dogParkEntryModelList.length,
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.black,
                  );
                },
                itemBuilder: (context, index) {
                  return ParkCatalogEntry(
                    model: _dogParkEntryModelList[index],
                  );
                },
              );
              // TODO: Update error message
            } else if (snapshot.hasError) {
              child = ErrorScreen(errorMessage: snapshot.error.toString());
              // TODO: Update progress message
            } else {
              child = const LoadingScreen();
            }
            return child;
          },
        ),
      ),
    );
  }
}
