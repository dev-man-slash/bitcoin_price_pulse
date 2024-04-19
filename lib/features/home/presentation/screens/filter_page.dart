// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
// import 'package:syriamaksab/common/enums.dart';
// import 'package:syriamaksab/core/locator/service_locator.dart';
// import 'package:syriamaksab/core/widgets/custom_progress_indicator.dart';
// import 'package:syriamaksab/core/widgets/try_again_button.dart';
// import 'package:syriamaksab/features/ads_registration/zone/domain/entitiy/zone_model_entity.dart';
// import 'package:syriamaksab/features/ads_registration/zone/presentation/bloc/zone_bloc.dart';
// import 'package:syriamaksab/features/category/domain/entity/category_entity.dart';
// import 'package:syriamaksab/features/category/presentation/bloc/filterByCategory/filter_by_category_bloc.dart'
//     as filterByCategoryBloc;
// import 'package:syriamaksab/features/filters/data/models/filter_ads_item_dto.dart';
// import 'package:syriamaksab/features/filters/domain/entity/filter_item_entity.dart';
// import 'package:syriamaksab/features/filters/domain/entity/filter_schema_entity.dart';
// import 'package:syriamaksab/features/filters/presentation/bloc/filter_bloc.dart';
// import 'package:syriamaksab/features/filters/presentation/widgets/filter_app_bar.dart';
// import 'package:syriamaksab/features/filters/presentation/widgets/filter_confirm_button_widget.dart';
// import 'package:syriamaksab/features/filters/presentation/widgets/filter_items_list_widget.dart';
// import 'package:syriamaksab/features/filters/presentation/widgets/filter_schema_list_widget.dart';
//
// class FilterPage extends StatelessWidget {
//   const FilterPage({Key? key, required this.data}) : super(key: key);
//
//   final Map<String, dynamic> data;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => FilterBloc(filterSchemaUseCase: locator())
//         ..add((LoadFilterSchemaEvent(initialFilter: data['initialFilters']))),
//       child: Builder(builder: (context) {
//         return Scaffold(
//             resizeToAvoidBottomInset: false,
//             appBar: FilterAppBar(
//                 leading: IconButton(
//                     onPressed: () {
//                       context.pop();
//                     },
//                     icon: const Icon(Icons.arrow_back)),
//                 onRemoveFiltersTap: () {
//                   context.read<ZoneBloc>().add(ClearZonesEvent());
//                   BlocProvider.of<FilterBloc>(context, listen: false)
//                       .add(RemoveAllFiltersExceptCategoryEvent());
//                 }),
//             body: Padding(
//               padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//               child: SingleChildScrollView(
//                 physics: const BouncingScrollPhysics(),
//                 child: BlocConsumer<FilterBloc, FilterState>(
//                   listener: (context, state) {
//                     if (state.filterSchemaState is FilterApplySuccess) {
//                       BlocProvider.of<filterByCategoryBloc.FilterByCategoryBloc>(context,
//                               listen: false)
//                           .add(filterByCategoryBloc.SetInitialFiltersEvent(
//                               filters: state.tempSelectedFilters ?? [],
//                               filterAdsListDto: state.filterAdsListDto ?? FilterAdsListDto()));
//                       context.pop();
//                     }
//                   },
//                   buildWhen: (previous, current) =>
//                       current.filterSchemaState is! FilterApplySuccess,
//                   builder: (context, state) {
//                     List<FilterItemEntity> selectedFilters = state.tempSelectedFilters ?? [];
//                     CategoryEntity? currentCategory = state.tempSelectedFilters
//                         ?.where((e) => e.category != null)
//                         .firstOrNull
//                         ?.category;
//                     if (state.filterSchemaState is FilterSchemaSuccess) {
//                       FilterSchemaSuccess completed =
//                           state.filterSchemaState as FilterSchemaSuccess;
//                       List<FilterSchemaEntity> schemas = completed.filterSchema;
//                       List<FilterItemEntity> initialSchema = selectedFilters
//                           .where((e) => e.type == FilterType.schema || e.type == FilterType.number)
//                           .toList();
//                       return Column(
//                         children: [
//                           FilterItemListWidget(
//                             currentCategory: currentCategory!,
//                             zones: (selectedFilters
//                                 .where((e) => e.type == FilterType.zone)
//                                 .firstOrNull
//                                 ?.value) as List<ZoneEntity>?,
//                             justPhoto: ((selectedFilters
//                                 .where((e) => e.type == FilterType.justWithPhoto)
//                                 .firstOrNull
//                                 ?.value) as bool?),
//                           ),
//                           FilterSchemaListWidget(
//                             schemas: schemas,
//                             initialSchema: initialSchema,
//                           ),
//                         ],
//                       );
//                     } else {
//                       return Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 24.0),
//                         child: Column(
//                           children: [
//                             if (state.filterSchemaState is FilterSchemaInProgress)
//                               const Center(child: CustomProgressIndicator()),
//                             if (state.filterSchemaState is FilterSchemaFailed)
//                               TryAgainButton(
//                                 onPressed: () => BlocProvider.of<FilterBloc>(context).add(
//                                     LoadFilterSchemaEvent(initialFilter: data['initialFilters'])),
//                               )
//                           ],
//                         ),
//                       );
//                     }
//                   },
//                 ),
//               ),
//             ),
//             bottomNavigationBar: FilterConfirmButtonWidget(
//               citiesId: data['citiesId'],
//             ));
//       }),
//     );
//   }
// }
