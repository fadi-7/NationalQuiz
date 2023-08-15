import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nationalquiz/core/enums/bottom_navigation.dart';
import 'package:nationalquiz/ui/shared/colors.dart';
import 'package:nationalquiz/ui/shared/custom_widgets/BottomNavigationWidget.dart';
import 'package:nationalquiz/ui/shared/custom_widgets/custom-text.dart';
import 'package:nationalquiz/ui/shared/custom_widgets/space_between.dart';
import 'package:nationalquiz/ui/shared/utils.dart';
import 'package:nationalquiz/ui/views/main/home/home_view.dart';
import 'package:nationalquiz/ui/views/main/important_question/important_question.dart';
import 'package:nationalquiz/ui/views/main/notification/notification_view.dart';
import 'package:nationalquiz/ui/views/main/profile/profile_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {


BottomNavigationEnum selected = BottomNavigationEnum.HOME;
  PageController controller = PageController(initialPage: 2);
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  
    @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      body:Stack(children: [

      SvgPicture.asset("images/shapeMaker.svg",width:screenWidth(1)  ),
  
         Padding(
           padding:  EdgeInsetsDirectional.only(start: screenWidth(15)),
           child: Row(
            children: [
            
            SpaceBetween(6),
           SvgPicture.asset("images/ic_home.svg", color:  AppColors.mainWhiteColor),
         Padding(
           padding:  EdgeInsetsDirectional.only(start: screenWidth(35)),
           child: Text_wedget(text: "الرئيسية",  textcolor: AppColors.mainWhiteColor,),
         )
         
           ]),
         ),



         
          PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: controller,
                children: [
                 NotificationView(),
                 HomeView(),
                  ImportantQuestion(),
                  ProfileView()
                 
                ],
              ),

              
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: BottomNavigationWidget(
                  bottomNavigation: selected,
                  onTap: (select, pageNumber) {
                    setState(() {
                      selected = select;
                    });
                    controller.jumpToPage(pageNumber);
                  },
                ),

                
              ),
         

   
      
      
      
     
    ]) ,);
  }
}














// import 'package:flutter/material.dart';
// import 'package:food_ordering_sp2/ui/views/main_view/profile_view/profile_view.dart';

// import '../../../core/enums/bottom_navigation.dart';
// import '../../shared/custom_widgets/custom_drawer.dart';
// import 'home_view/home_view.dart';
// import 'main_view_widgets/bottom_navigation_widget.dart';
// import 'menu_view/menu_view.dart';
// import 'more_view/more_view.dart';
// import 'offers_view/offers_view.dart';

// class MainView extends StatefulWidget {
//   MainView({Key? key}) : super(key: key);

//   @override
//   State<MainView> createState() => _MainViewState();
// }

// class _MainViewState extends State<MainView> {
//   BottomNavigationEnum selected = BottomNavigationEnum.HOME;
//   PageController controller = PageController(initialPage: 2);
//   GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//           key: key,
//           drawer: CustomDrawer(),
//           body: Stack(
//             children: [
//               PageView(
//                 physics: NeverScrollableScrollPhysics(),
//                 controller: controller,
//                 children: [
//                   MenuView(),
//                   OffersView(),
//                   MainView(onPressed: (){},),
//                   ProfileView(),
//                   MoreView()
//                 ],
//               ),
//               Align(
//                 alignment: AlignmentDirectional.bottomCenter,
//                 child: BottomNavigationWidget(
//                   bottomNavigation: selected,
//                   onTap: (select, pageNumber) {
//                     setState(() {
//                       selected = select;
//                     });
//                     controller.jumpToPage(pageNumber);
//                   },
//                 ),

                
//               ),
//             ],
//           )),
//     );
//   }
// }