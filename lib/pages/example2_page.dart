import 'package:codigo6_ui/pages/custom_bottom_bar.dart';
import 'package:codigo6_ui/widgets/item_category_widget.dart';
import 'package:codigo6_ui/widgets/item_recommedation_widget.dart';
import 'package:codigo6_ui/widgets/item_recommendation2_widget.dart';
import 'package:flutter/material.dart';

class Example2Page extends StatelessWidget {
  const Example2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FBFC),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLocation(),
                    const SizedBox(height: 24.0),
                    _buildSearch(),
                    const SizedBox(height: 24.0),
                    _buildSectionTitle("Category"),
                    const SizedBox(height: 14.0),
                    _buildCategoriesList(),
                    const SizedBox(height: 24.0),
                    _buildSectionTitle("Recommendation"),
                    const SizedBox(height: 16.0),
                    _buildHorizontaList(),
                    const SizedBox(height: 24.0),
                    _buildSectionTitle("Recommendation"),
                    const SizedBox(height: 16.0),
                    _buildVerticalList(),
                    _buildImageWithText(),
                    const SizedBox(height: 300),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }

  _buildLocation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 16.0,
                    color: const Color(0xff349DFD).withOpacity(0.5),
                  ),
                  const SizedBox(
                    width: 3.0,
                  ),
                  Text(
                    "Location",
                    style: TextStyle(
                      color: const Color(0xff2B333F).withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              const Text(
                "Purbalingga, Jawa Tengah",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xff2B333F),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        _buildNotificationBtn(),
      ],
    );
  }

  _buildNotificationBtn() {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Stack(
        children: [
          const Icon(
            Icons.notifications,
            size: 24.0,
            color: Color(0xffC6C6C6),
          ),
          Positioned(
            top: 3,
            right: 2,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 1.7,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildSearch() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Search",
          suffixIcon: const Icon(
            Icons.search,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 14.0,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  _buildCategoriesList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          ItemCategoryWidget(
            icon: "home",
            text: "House",
            isSelected: true,
          ),
          ItemCategoryWidget(
            icon: "city",
            text: "Hotel",
            isSelected: false,
          ),
          ItemCategoryWidget(
            icon: "house",
            text: "Apartment",
            isSelected: false,
          ),
        ],
      ),
    );
  }

  _buildHorizontaList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: const [
          ItemRecommendationWidget(),
          ItemRecommendationWidget(),
          ItemRecommendationWidget(),
        ],
      ),
    );
  }

  _buildVerticalList() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return const ItemRecommnedation2Widget();
      },
    );
  }

  _buildImageWithText() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://images.pexels.com/photos/1390403/pexels-photo-1390403.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          ),
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 14.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                  style: TextStyle(color: Colors.white),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Information",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
