import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/widget/custom_text_field.dart';
import 'package:coupkart/widget/heading_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  static const LatLng googlePlex = LatLng(23.8041, 90.4152);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final Map<String, LatLng> places = {
    'Place 1': const LatLng(19.7235, 79.8017),
    'Place 2': const LatLng(23.7808, 90.4223),
    'Place 3': const LatLng(23.7956, 90.3844),
  };

  final TextEditingController searchController = TextEditingController();

  LatLng currentLocation = ExploreScreen.googlePlex;
  // GoogleMapController? _mapController;

  Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();
    _setMarkers();
  }

  void _setMarkers() {
    markers = places.entries
        .map((entry) => Marker(
              markerId: MarkerId(entry.key),
              position: entry.value,
              infoWindow: InfoWindow(title: entry.key),
            ))
        .toSet();
  }

  // void _searchPlace(String query) {
  //   if (places.containsKey(query)) {
  //     setState(() {
  //       currentLocation = places[query]!;
  //     });
  //     _moveCamera();
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text('Place not found')),
  //     );
  //   }
  // }

  // void _moveCamera() {
  //   if (_mapController != null) {
  //     _mapController!.animateCamera(
  //       CameraUpdate.newLatLng(currentLocation),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: AppColor.whiteColor,
        title: const Text(
          'Explore',
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: AppColor.primaryTxtColor,
            fontSize: 18,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * .02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormField(
                  controller: searchController,
                  hintText: "Search Places",
                  prefixIcon: const Icon(CupertinoIcons.search_circle),
                ),
                // child: TextField(
                //   controller: searchController,
                //   decoration: InputDecoration(
                //     hintText: 'Search place...',
                //     suffixIcon: IconButton(
                //       icon: const Icon(Icons.search),
                //       onPressed: () {
                //         _searchPlace(searchController.text);
                //       },
                //     ),
                //   ),
                //   onSubmitted: _searchPlace,
                // ),
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              SizedBox(
                height: Get.height / 3,
                width: Get.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: currentLocation,
                      zoom: 13,
                    ),
                    onMapCreated: (controller) {
                      // _mapController = controller;
                    },
                    markers: markers,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              Row(
                children: [
                  const Icon(
                    CupertinoIcons.location_solid,
                    color: AppColor.primaryColor,
                  ),
                  SizedBox(
                    width: Get.width * .01,
                  ),
                  const HeadingText(headingText: "Trending Places"),
                ],
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              customPlaces("Cayman Brac", () {}),
              customPlaces("Pico Tequeria", () {}),
              customPlaces("Peppars", () {}),
              customPlaces("Rubis", () {}),
              customPlaces("AI La Kebabs", () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget customPlaces(String place, Function ontap) {
    return InkWell(
      onTap: () {
        ontap;
      },
      child: Padding(
        padding:  EdgeInsets.only(bottom: Get.height * .01),
        child: Text(
          place,
          style: const TextStyle(
            color: AppColor.primaryColor,
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
    );
  }
}
