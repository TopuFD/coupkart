import 'package:coupkart/route/app_route.dart';
import 'package:coupkart/utils/app_color.dart';
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
    'Dhaka': const LatLng(19.7235, 79.8017),
    'Dilli': const LatLng(23.7808, 90.4223),
    'India': const LatLng(23.7956, 90.3844),
  };

  final TextEditingController searchController = TextEditingController();

  LatLng currentLocation = ExploreScreen.googlePlex;
  GoogleMapController? _mapController;

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

  void _searchPlace(String query) {
    if (places.containsKey(query)) {
      setState(() {
        currentLocation = places[query]!;
      });
      _moveCamera();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Place not found')),
      );
    }
  }

  void _moveCamera() {
    if (_mapController != null) {
      _mapController!.animateCamera(
        CameraUpdate.newLatLng(currentLocation),
      );
    }
  }

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
              Container(
                height: Get.height * .05,
                padding: EdgeInsets.symmetric(
                    horizontal: Get.width * .01, vertical: Get.height * .01),
                decoration: ShapeDecoration(
                  color: AppColor.greyColor,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: AppColor.secondaryColor,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Places",
                    prefixIcon: InkWell(
                        onTap: () {
                          _searchPlace(searchController.text);
                        },
                        child: const Icon(CupertinoIcons.search_circle)),
                    prefixIconColor: AppColor.secondaryColor,
                  ),
                  onSubmitted: _searchPlace,
                ),
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              //here is google map===========================================>
              SizedBox(
                height: Get.height / 3,
                width: Get.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: currentLocation,
                    ),
                    onMapCreated: (controller) {
                      _mapController = controller;
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
                  InkWell(
                      onTap: () {
                        Get.toNamed(AppRoute.barOfPlaces);
                      },
                      child: const HeadingText(headingText: "Trending Places")),
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
        padding: EdgeInsets.only(bottom: Get.height * .01),
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
