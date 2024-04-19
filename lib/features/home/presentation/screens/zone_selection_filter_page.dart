// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:syriamaksab/core/localization/extensions/translate.dart';
// import 'package:syriamaksab/core/locator/service_locator.dart';
// import 'package:syriamaksab/features/advertising/presentation/widgets/selectable_item.dart';
//
// import '../../../../core/widgets/app_bar.dart';
// import '../../../../core/widgets/custom_list_view.dart';
// import '../../../../core/widgets/custom_progress_indicator.dart';
// import '../../../../core/widgets/custom_search.dart';
// import '../../../../core/widgets/try_again_button.dart';
// import '../../../ads_registration/zone/presentation/bloc/zone_bloc.dart';
//
// class ZoneSelectionFilterPage extends StatelessWidget {
//   const ZoneSelectionFilterPage({Key? key,required this.citiesId}) : super(key: key);
//
//   final List<int> citiesId ;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<ZoneBloc>(
//       create: (context) => ZoneBloc(getAllZonesUseCase: locator())
//         ..add(LoadZones(cityId: citiesId.first, zonesList: [])),
//       child: BlocBuilder<ZoneBloc, ZoneState>(
//         builder: (context, state) {
//           return Scaffold(
//             appBar: CustomAppBar(
//               title: "Select_the_zone".tr(context),
//               actions: [
//                 IconButton(
//                   onPressed: () {
//                     if (state is ZoneLoaded) {
//                       showSearch(
//                         context: context,
//                         delegate:
//                             CustomSearchDelegate(zoneSearch: true, targetList: state.zonesList),
//                       );
//                     }
//                   },
//                   icon: const Icon(Icons.search),
//                 )
//               ],
//               leading: IconButton(
//                 icon: const Icon(Icons.arrow_back),
//                 onPressed: () {
//                   Navigator.pop(context, (state as ZoneLoaded).selectedZones);
//                 },
//               ),
//             ),
//             body: state is ZoneLoaded
//                 ? Column(
//                     children: [
//                       CustomListView(
//                         itemCount: state.zonesList.length,
//                         itemBuilder: (p0, index) {
//                           return SelectableItem(
//                               isSelected: state.selectedZones.contains(state.zonesList[index]),
//                               onSelectionChanged: (isSelected) {
//                                 context
//                                     .read<ZoneBloc>()
//                                     .add(AddNewZoneEvent(zone: state.zonesList[index]));
//                               },
//                               title: state.zonesList[index].name!);
//                         },
//                       ),
//                     ],
//                   )
//                 : state is ZoneLoading
//                     ? const CustomProgressIndicator()
//                     : state is ZoneFailure
//                         ? TryAgainButton(
//                             onPressed: () {
//                               BlocProvider.of<ZoneBloc>(context)
//                                   .add(LoadZones(cityId: citiesId.first, zonesList: const []));
//                             },
//                           )
//                         : const SizedBox.shrink(),
//           );
//         },
//       ),
//     );
//   }
// }
