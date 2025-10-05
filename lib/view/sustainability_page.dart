// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:suncube_ai/utils/app_theme.dart';

// class SustainabilityPage extends StatefulWidget {
//   const SustainabilityPage({super.key});

//   @override
//   State<SustainabilityPage> createState() => _SustainabilityPageState();
// }

// class _SustainabilityPageState extends State<SustainabilityPage> {
//   static const Color themeGreen = Color(0xFF34B87C);
//   static const Color secondaryColor = Color(0xFFF4A261); // Warm orange complement
//   static const Color tertiaryColor = Color(0xFF66C998); // Lighter green variant
//   static const Color surfaceColor = Color(0xFF1A2522); // Darker surface for contrast
//   static const Color onSurfaceVariant = Color(0xFFCBD7D2); // Light text for contrast

//   int _selectedTab = 2; // 0: Daily, 1: Monthly, 2: Lifetime
//   double _goalValue = 10;

//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data: AppTheme.darkTheme.copyWith(
//         colorScheme: ColorScheme.dark(
//           primary: themeGreen,
//           secondary: secondaryColor,
//           tertiary: tertiaryColor,
//           surface: surfaceColor,
//           onSurfaceVariant: onSurfaceVariant,
//           onSurface: Colors.white,
//         ),
//       ),
//       child: Scaffold(
//         extendBodyBehindAppBar: true,
//         backgroundColor: const Color(0xFF060C09),
//         appBar: AppBar(
//           leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(Icons.arrow_back, color: Colors.white, size: 30.sp),
//           ),
//           backgroundColor: const Color(0xFF060C09).withOpacity(0.9),
//           elevation: 0,
//           title: Text(
//             'Sustainability',
//             style: GoogleFonts.inter(
//               fontWeight: FontWeight.w800,
//               fontSize: 20.sp,
//               color: Colors.white,
//             ),
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               _buildHeroSection(),
//               _buildImpactDashboard(),
//               _buildComparisonSection(),
//               _buildGoalSection(),
//               _buildShareSection(),
//               _buildGlobalImpact(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildAppBar() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
//       decoration: BoxDecoration(
//         color: surfaceColor,
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 40.w,
//             height: 40.h,
//             decoration: BoxDecoration(
//               color: themeGreen,
//               borderRadius: BorderRadius.circular(12.r),
//             ),
//             child: Icon(Icons.flash_on, size: 24.sp, color: Colors.white),
//           ),
//           SizedBox(width: 8.w),
//           Text(
//             'Suncube AI',
//             style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
//           ),
//           const Spacer(),
//           IconButton(
//             icon: Icon(Icons.menu, size: 24.sp, color: Colors.white),
//             onPressed: () {},
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildHeroSection() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
//       child: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//             decoration: BoxDecoration(
//               color: tertiaryColor.withOpacity(0.2),
//               border: Border.all(color: tertiaryColor.withOpacity(0.3)),
//               borderRadius: BorderRadius.circular(12.r),
//             ),
//             child: Text(
//               '🌱 Environmental Impact',
//               style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                 color: tertiaryColor,
//               ),
//             ),
//           ),
//           SizedBox(height: 20.h),
//           Text(
//             'Track Your Solar Footprint. Save the Planet in Kilowatts.',
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.headlineLarge!.copyWith(
//               height: 1.2,
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(height: 16.h),
//           Text(
//             'See how your switch to solar contributes to the planet — one carbon unit at a time.',
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//               color: onSurfaceVariant,
//               height: 1.4,
//             ),
//           ),
//           SizedBox(height: 24.h),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: secondaryColor,
//               foregroundColor: Colors.white,
//             ),
//             onPressed: () {},
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text('Explore My Offset'),
//                 SizedBox(width: 8.w),
//                 Icon(Icons.arrow_forward, size: 16.sp),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildImpactDashboard() {
//     return Container(
//       color: surfaceColor.withOpacity(0.9),
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
//       child: Column(
//         children: [
//           _buildSectionHeader('Live Impact', 'Real-Time CO₂ Offset Simulation'),
//           SizedBox(height: 20.h),
//           _buildTabSelector(),
//           SizedBox(height: 24.h),
//           _buildImpactCards(),
//         ],
//       ),
//     );
//   }

//   Widget _buildSectionHeader(String badge, String title) {
//     return Column(
//       children: [
//         Container(
//           padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
//           decoration: BoxDecoration(
//             border: Border.all(color: onSurfaceVariant.withOpacity(0.3)),
//             borderRadius: BorderRadius.circular(12.r),
//           ),
//           child: Text(
//             badge,
//             style: Theme.of(context).textTheme.labelSmall!.copyWith(color: onSurfaceVariant),
//           ),
//         ),
//         SizedBox(height: 12.h),
//         Text(
//           title,
//           textAlign: TextAlign.center,
//           style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white),
//         ),
//       ],
//     );
//   }

//   Widget _buildTabSelector() {
//     return Container(
//       padding: EdgeInsets.all(4.w),
//       decoration: BoxDecoration(
//         color: onSurfaceVariant.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(12.r),
//       ),
//       child: Row(
//         children: [
//           _buildTab(0, Icons.calendar_today, 'Daily'),
//           _buildTab(1, Icons.bar_chart, 'Monthly'),
//           _buildTab(2, Icons.public, 'Lifetime'),
//         ],
//       ),
//     );
//   }

//   Widget _buildTab(int index, IconData icon, String label) {
//     final isSelected = _selectedTab == index;
//     return Expanded(
//       child: GestureDetector(
//         onTap: () => setState(() => _selectedTab = index),
//         child: Container(
//           padding: EdgeInsets.symmetric(vertical: 8.h),
//           decoration: BoxDecoration(
//             color: isSelected ? surfaceColor : Colors.transparent,
//             borderRadius: BorderRadius.circular(6.r),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(icon, size: 16.sp, color: isSelected ? Colors.white : onSurfaceVariant),
//               SizedBox(width: 4.w),
//               Text(
//                 label,
//                 style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                   color: isSelected ? Colors.white : onSurfaceVariant,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildImpactCards() {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Expanded(child: _buildImpactCard('CO₂ Prevented', '1250.0', 'tons', tertiaryColor, Icons.eco, 78)),
//             SizedBox(width: 12.w),
//             Expanded(child: _buildImpactCard('Trees Equivalent', '15,625', 'trees', tertiaryColor, Icons.park, 85)),
//           ],
//         ),
//         SizedBox(height: 12.h),
//         Row(
//           children: [
//             Expanded(child: _buildImpactCard('Car Emissions', '2875', 'miles', secondaryColor, Icons.directions_car, 92)),
//             SizedBox(width: 12.w),
//             Expanded(child: _buildImpactCard('Water Saved', '890k', 'gallons', secondaryColor, Icons.water_drop, 67)),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildImpactCard(String title, String value, String unit, Color color, IconData icon, int progress) {
//     return Card(
//       color: surfaceColor,
//       child: Padding(
//         padding: EdgeInsets.all(16.w),
//         child: Column(
//           children: [
//             Icon(icon, color: color, size: 32.sp),
//             SizedBox(height: 8.h),
//             Text(
//               title,
//               textAlign: TextAlign.center,
//               style: Theme.of(context).textTheme.labelSmall!.copyWith(color: onSurfaceVariant),
//             ),
//             SizedBox(height: 12.h),
//             Text(
//               value,
//               style: Theme.of(context).textTheme.displayLarge!.copyWith(color: color),
//             ),
//             Text(
//               unit,
//               style: Theme.of(context).textTheme.labelSmall!.copyWith(color: onSurfaceVariant),
//             ),
//             SizedBox(height: 12.h),
//             Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Progress', style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 9.sp, color: onSurfaceVariant)),
//                     Text('$progress%', style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 9.sp, color: onSurfaceVariant)),
//                   ],
//                 ),
//                 SizedBox(height: 4.h),
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(4.r),
//                   child: LinearProgressIndicator(
//                     value: progress / 100,
//                     backgroundColor: color.withOpacity(0.2),
//                     valueColor: AlwaysStoppedAnimation<Color>(color),
//                     minHeight: 6.h,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildComparisonSection() {
//     return Container(
//       color: surfaceColor.withOpacity(0.9),
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
//       child: Column(
//         children: [
//           _buildSectionHeader('Energy Comparison', 'Solar vs Grid Energy Impact'),
//           SizedBox(height: 24.h),
//           _buildComparisonCard(),
//         ],
//       ),
//     );
//   }

//   Widget _buildComparisonCard() {
//     return Card(
//       color: surfaceColor,
//       child: Padding(
//         padding: EdgeInsets.all(20.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Carbon Intensity Comparison',
//               style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
//             ),
//             SizedBox(height: 24.h),
//             _buildComparisonBar('Solar Energy', '0.04 kg CO₂/kWh', tertiaryColor, 0.047),
//             SizedBox(height: 16.h),
//             _buildComparisonBar('Grid Electricity', '0.85 kg CO₂/kWh', Colors.redAccent, 1.0),
//             SizedBox(height: 24.h),
//             Container(
//               padding: EdgeInsets.all(16.w),
//               decoration: BoxDecoration(
//                 color: tertiaryColor.withOpacity(0.2),
//                 borderRadius: BorderRadius.circular(12.r),
//               ),
//               child: Column(
//                 children: [
//                   Text(
//                     '95%',
//                     style: Theme.of(context).textTheme.displayLarge!.copyWith(color: tertiaryColor),
//                   ),
//                   Text(
//                     'Less Carbon Emissions',
//                     style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: tertiaryColor),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildComparisonBar(String label, String value, Color color, double percentage) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   width: 12.w,
//                   height: 12.h,
//                   decoration: BoxDecoration(
//                     color: color,
//                     shape: BoxShape.circle,
//                   ),
//                 ),
//                 SizedBox(width: 8.w),
//                 Text(label, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white)),
//               ],
//             ),
//             Text(
//               value,
//               style: Theme.of(context).textTheme.displayLarge!.copyWith(color: color, fontSize: 16.sp),
//             ),
//           ],
//         ),
//         SizedBox(height: 8.h),
//         ClipRRect(
//           borderRadius: BorderRadius.circular(12.r),
//           child: Container(
//             height: 24.h,
//             color: onSurfaceVariant.withOpacity(0.1),
//             child: FractionallySizedBox(
//               alignment: Alignment.centerLeft,
//               widthFactor: percentage,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: color,
//                   borderRadius: BorderRadius.circular(12.r),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildGoalSection() {
//     return Container(
//       color: surfaceColor.withOpacity(0.9),
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
//       child: Column(
//         children: [
//           _buildSectionHeader('Goal Setting', 'Set Your Sustainability Goals'),
//           SizedBox(height: 24.h),
//           Card(
//             color: surfaceColor,
//             child: Padding(
//               padding: EdgeInsets.all(20.w),
//               child: Column(
//                 children: [
//                   Text(
//                     'I want to offset: ${_goalValue.toInt()} tons of CO₂',
//                     style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
//                   ),
//                   SizedBox(height: 16.h),
//                   Slider(
//                     value: _goalValue,
//                     min: 1,
//                     max: 50,
//                     divisions: 49,
//                     activeColor: tertiaryColor,
//                     inactiveColor: onSurfaceVariant.withOpacity(0.2),
//                     onChanged: (value) => setState(() => _goalValue = value),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('1 ton', style: Theme.of(context).textTheme.labelSmall!.copyWith(color: onSurfaceVariant)),
//                       Text('50 tons', style: Theme.of(context).textTheme.labelSmall!.copyWith(color: onSurfaceVariant)),
//                     ],
//                   ),
//                   SizedBox(height: 24.h),
//                   Row(
//                     children: [
//                       Expanded(child: _buildGoalMetric('1', 'Months to reach', tertiaryColor)),
//                       SizedBox(width: 12.w),
//                       Expanded(child: _buildGoalMetric('125', 'Trees equivalent', secondaryColor)),
//                     ],
//                   ),
//                   SizedBox(height: 12.h),
//                   _buildGoalMetric('230k', 'Miles of driving', tertiaryColor),
//                   SizedBox(height: 16.h),
//                   Container(
//                     padding: EdgeInsets.all(16.w),
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         colors: [tertiaryColor, secondaryColor],
//                       ),
//                       borderRadius: BorderRadius.circular(12.r),
//                     ),
//                     child: Column(
//                       children: [
//                         Text(
//                           '🎯 Goal Progress Tracker',
//                           style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
//                         ),
//                         SizedBox(height: 8.h),
//                         Text(
//                           '12500.0%',
//                           style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white),
//                         ),
//                         Text(
//                           'Goal achieved! 🎉',
//                           style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildGoalMetric(String value, String label, Color color) {
//     return Container(
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: color.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(12.r),
//       ),
//       child: Column(
//         children: [
//           Text(
//             value,
//             style: Theme.of(context).textTheme.displayLarge!.copyWith(color: color),
//           ),
//           SizedBox(height: 4.h),
//           Text(
//             label,
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.labelSmall!.copyWith(color: color),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildShareSection() {
//     return Container(
//       color: surfaceColor.withOpacity(0.9),
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
//       child: Column(
//         children: [
//           _buildSectionHeader('Share Your Impact', 'Share Your Sustainability Story'),
//           SizedBox(height: 24.h),
//           _buildShareCard(
//             Icons.download,
//             'Download Sustainability Report',
//             'Get a detailed PDF report of your environmental impact.',
//             tertiaryColor,
//           ),
//           SizedBox(height: 16.h),
//           _buildShareCard(
//             Icons.share,
//             'Share Offset Badge',
//             'Share your environmental impact on social media.',
//             secondaryColor,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildShareCard(IconData icon, String title, String description, Color color) {
//     return Card(
//       color: surfaceColor,
//       child: Padding(
//         padding: EdgeInsets.all(20.w),
//         child: Column(
//           children: [
//             Icon(icon, size: 48.sp, color: color),
//             SizedBox(height: 16.h),
//             Text(
//               title,
//               textAlign: TextAlign.center,
//               style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
//             ),
//             SizedBox(height: 8.h),
//             Text(
//               description,
//               textAlign: TextAlign.center,
//               style: Theme.of(context).textTheme.labelSmall!.copyWith(color: onSurfaceVariant),
//             ),
//             SizedBox(height: 16.h),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: color,
//                 foregroundColor: Colors.white,
//               ),
//               onPressed: () {},
//               child: Text(icon == Icons.download ? 'Download Report' : 'Share Now'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildGlobalImpact() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [tertiaryColor, tertiaryColor.withOpacity(0.7)],
//         ),
//       ),
//       child: Column(
//         children: [
//           Text(
//             'Global Environmental Impact',
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white),
//           ),
//           SizedBox(height: 16.h),
//           Text(
//             'Together with our customers worldwide, we\'re making a significant impact.',
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
//           ),
//           SizedBox(height: 32.h),
//           Row(
//             children: [
//               Expanded(child: _buildGlobalStat('50,000+', 'Tons CO₂ Prevented')),
//               SizedBox(width: 16.w),
//               Expanded(child: _buildGlobalStat('625,000', 'Trees Equivalent')),
//             ],
//           ),
//           SizedBox(height: 16.h),
//           Row(
//             children: [
//               Expanded(child: _buildGlobalStat('35M+', 'Gallons Water Saved')),
//               SizedBox(width: 16.w),
//               Expanded(child: _buildGlobalStat('128 GWh', 'Clean Energy')),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildGlobalStat(String value, String label) {
//     return Column(
//       children: [
//         Text(
//           value,
//           style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white),
//         ),
//         SizedBox(height: 4.h),
//         Text(
//           label,
//           textAlign: TextAlign.center,
//           style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:lucide_icons_flutter/lucide_icons.dart';
// import 'package:suncube_ai/widgets/app_sidebar.dart';

// class SustainabilityPage extends StatefulWidget {
//   const SustainabilityPage({super.key});

//   @override
//   State<SustainabilityPage> createState() => _SustainabilityPageState();
// }

// class _SustainabilityPageState extends State<SustainabilityPage> {
//   static const Color primaryBg = Color(0xFF060C09);
//   static const Color lime = Color(0xFF73E0A9);
//   static const Color solarY = Color(0xFFF59E0B);
//   static const Color gridB = Color(0xFF3B82F6);
//   static const Color ecoG = Color(0xFF34B87C);

//   int _selectedTab = 2; // 0: Daily, 1: Monthly, 2: Lifetime
//   double _goalValue = 10;

//   @override
//   Widget build(BuildContext context) {
//     ScreenUtil.init(
//       context,
//       designSize: const Size(360, 780),
//       minTextAdapt: true,
//       splitScreenMode: true,
//     );

//     return Scaffold(
//       key: GlobalKey<ScaffoldState>(),
//       extendBodyBehindAppBar: true,
//       backgroundColor: primaryBg,
//       drawer: const AppSidebar(),
//       appBar: AppBar(
//         leading: InkWell(
//           onTap: () {
//             GlobalKey<ScaffoldState>().currentState?.openDrawer();
//           },
//           child: Icon(LucideIcons.menu, color: Colors.white, size: 22.sp),
//         ),
//         backgroundColor: primaryBg.withOpacity(0.9),
//         automaticallyImplyLeading: false,
//         title: Text(
//           'Sustainability',
//           style: GoogleFonts.inter(
//             fontWeight: FontWeight.w800,
//             fontSize: 20.sp,
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: Container(
//         margin: EdgeInsets.only(top: 64.h),
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFF060C09), Color(0xFF1A231F)],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: CustomScrollView(
//           physics: const AlwaysScrollableScrollPhysics(),
//           slivers: [
//             SliverList(
//               delegate: SliverChildListDelegate([
//                 _buildHeroSection(),
//                 _buildImpactDashboard(),
//                 _buildComparisonSection(),
//                 _buildGoalSection(),
//                 _buildShareSection(),
//                 _buildGlobalImpact(),
//                 _buildFooter(),
//                 SizedBox(height: 50.h),
//               ]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildHeroSection() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [primaryBg, const Color(0xFF1A231F)],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
//             decoration: BoxDecoration(
//               color: Colors.white.withOpacity(0.1),
//               border: Border.all(color: Colors.white.withOpacity(0.2)),
//               borderRadius: BorderRadius.circular(12.r),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 10,
//                   offset: const Offset(0, 4),
//                 ),
//               ],
//             ),
//             child: Text(
//               '🌱 Environmental Impact',
//               style: GoogleFonts.inter(
//                 color: Colors.white,
//                 fontSize: 10.sp,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//           SizedBox(height: 20.h),
//           Text(
//             'Track Your Solar Footprint. Save the Planet in Kilowatts.',
//             textAlign: TextAlign.center,
//             style: GoogleFonts.inter(
//               fontSize: 28.sp,
//               fontWeight: FontWeight.w800,
//               color: Colors.white,
//               height: 1.2,
//             ),
//           ),
//           SizedBox(height: 16.h),
//           Text(
//             'See how your switch to solar contributes to the planet — one carbon unit at a time.',
//             textAlign: TextAlign.center,
//             style: GoogleFonts.inter(
//               fontSize: 14.sp,
//               color: Colors.white.withOpacity(0.8),
//               height: 1.4,
//             ),
//           ),
//           SizedBox(height: 24.h),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: lime,
//               foregroundColor: Colors.white,
//               padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8.r),
//               ),
//               elevation: 4,
//             ),
//             onPressed: () {},
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   'Explore My Offset',
//                   style: GoogleFonts.inter(
//                     fontSize: 12.sp,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 SizedBox(width: 8.w),
//                 Icon(LucideIcons.arrowRight, size: 16.sp),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildImpactDashboard() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [primaryBg, const Color(0xFF1A231F)],
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//         ),
//       ),
//       child: Column(
//         children: [
//           _buildSectionHeader('Live Impact', 'Real-Time CO₂ Offset Simulation'),
//           SizedBox(height: 20.h),
//           _buildTabSelector(),
//           SizedBox(height: 24.h),
//           _buildImpactCards(),
//         ],
//       ),
//     );
//   }

//   Widget _buildSectionHeader(String badge, String title) {
//     return Column(
//       children: [
//         Container(
//           padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
//           decoration: BoxDecoration(
//             color: Colors.white.withOpacity(0.1),
//             border: Border.all(color: Colors.white.withOpacity(0.2)),
//             borderRadius: BorderRadius.circular(12.r),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 blurRadius: 10,
//                 offset: const Offset(0, 4),
//               ),
//             ],
//           ),
//           child: Text(
//             badge,
//             style: GoogleFonts.inter(
//               fontSize: 10.sp,
//               color: Colors.white,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//         SizedBox(height: 12.h),
//         Text(
//           title,
//           textAlign: TextAlign.center,
//           style: GoogleFonts.inter(
//             fontSize: 20.sp,
//             fontWeight: FontWeight.w700,
//             color: Colors.white,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildTabSelector() {
//     return Container(
//       padding: EdgeInsets.all(4.w),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(12.r),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 10,
//             offset: const Offset(0, 4),
//           ),
//         ],
//         gradient: LinearGradient(
//           colors: [
//             Colors.white.withOpacity(0.05),
//             Colors.grey.withOpacity(0.1),
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Row(
//         children: [
//           _buildTab(0, LucideIcons.calendar, 'Daily'),
//           _buildTab(1, LucideIcons.chartBar, 'Monthly'),
//           _buildTab(2, LucideIcons.globe, 'Lifetime'),
//         ],
//       ),
//     );
//   }

//   Widget _buildTab(int index, IconData icon, String label) {
//     final isSelected = _selectedTab == index;
//     return Expanded(
//       child: GestureDetector(
//         onTap: () => setState(() => _selectedTab = index),
//         child: Container(
//           padding: EdgeInsets.symmetric(vertical: 8.h),
//           decoration: BoxDecoration(
//             color:
//                 isSelected ? Colors.white.withOpacity(0.2) : Colors.transparent,
//             borderRadius: BorderRadius.circular(6.r),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 icon,
//                 size: 16.sp,
//                 color:
//                     isSelected ? Colors.white : Colors.white.withOpacity(0.6),
//               ),
//               SizedBox(width: 4.w),
//               Text(
//                 label,
//                 style: GoogleFonts.inter(
//                   fontSize: 12.sp,
//                   color:
//                       isSelected ? Colors.white : Colors.white.withOpacity(0.6),
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildImpactCards() {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Expanded(
//               child: _buildImpactCard(
//                 'CO₂ Prevented',
//                 '1250.0',
//                 'tons',
//                 ecoG,
//                 LucideIcons.leaf,
//                 78,
//               ),
//             ),
//             SizedBox(width: 12.w),
//             Expanded(
//               child: _buildImpactCard(
//                 'Trees Equivalent',
//                 '15,625',
//                 'trees',
//                 ecoG,
//                 LucideIcons.treePine,
//                 85,
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 12.h),
//         Row(
//           children: [
//             Expanded(
//               child: _buildImpactCard(
//                 'Car Emissions',
//                 '2875',
//                 'miles',
//                 solarY,
//                 LucideIcons.car,
//                 92,
//               ),
//             ),
//             SizedBox(width: 12.w),
//             Expanded(
//               child: _buildImpactCard(
//                 'Water Saved',
//                 '890k',
//                 'gallons',
//                 solarY,
//                 LucideIcons.droplet,
//                 67,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildImpactCard(
//     String title,
//     String value,
//     String unit,
//     Color color,
//     IconData icon,
//     int progress,
//   ) {
//     return Container(
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(12.r),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 10,
//             offset: const Offset(0, 4),
//           ),
//         ],
//         gradient: LinearGradient(
//           colors: [
//             Colors.white.withOpacity(0.05),
//             Colors.grey.withOpacity(0.1),
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Column(
//         children: [
//           Icon(icon, color: color, size: 32.sp),
//           SizedBox(height: 8.h),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: GoogleFonts.inter(
//               fontSize: 10.sp,
//               color: Colors.white.withOpacity(0.6),
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           SizedBox(height: 12.h),
//           Text(
//             value,
//             style: GoogleFonts.inter(
//               fontSize: 24.sp,
//               fontWeight: FontWeight.w700,
//               color: color,
//             ),
//           ),
//           Text(
//             unit,
//             style: GoogleFonts.inter(
//               fontSize: 10.sp,
//               color: Colors.white.withOpacity(0.6),
//             ),
//           ),
//           SizedBox(height: 12.h),
//           Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Progress',
//                     style: GoogleFonts.inter(
//                       fontSize: 9.sp,
//                       color: Colors.white.withOpacity(0.6),
//                     ),
//                   ),
//                   Text(
//                     '$progress%',
//                     style: GoogleFonts.inter(
//                       fontSize: 9.sp,
//                       color: Colors.white.withOpacity(0.6),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 4.h),
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(4.r),
//                 child: LinearProgressIndicator(
//                   value: progress / 100,
//                   backgroundColor: color.withOpacity(0.2),
//                   valueColor: AlwaysStoppedAnimation<Color>(color),
//                   minHeight: 6.h,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildComparisonSection() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [primaryBg, const Color(0xFF1A231F)],
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//         ),
//       ),
//       child: Column(
//         children: [
//           _buildSectionHeader(
//             'Energy Comparison',
//             'Solar vs Grid Energy Impact',
//           ),
//           SizedBox(height: 24.h),
//           _buildComparisonCard(),
//         ],
//       ),
//     );
//   }

//   Widget _buildComparisonCard() {
//     return Container(
//       padding: EdgeInsets.all(20.w),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(12.r),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 10,
//             offset: const Offset(0, 4),
//           ),
//         ],
//         gradient: LinearGradient(
//           colors: [
//             Colors.white.withOpacity(0.05),
//             Colors.grey.withOpacity(0.1),
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Carbon Intensity Comparison',
//             style: GoogleFonts.inter(
//               fontSize: 16.sp,
//               fontWeight: FontWeight.w600,
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(height: 24.h),
//           _buildComparisonBar('Solar Energy', '0.04 kg CO₂/kWh', ecoG, 0.047),
//           SizedBox(height: 16.h),
//           _buildComparisonBar(
//             'Grid Electricity',
//             '0.85 kg CO₂/kWh',
//             Colors.redAccent,
//             1.0,
//           ),
//           SizedBox(height: 24.h),
//           Container(
//             padding: EdgeInsets.all(16.w),
//             decoration: BoxDecoration(
//               color: ecoG.withOpacity(0.2),
//               borderRadius: BorderRadius.circular(12.r),
//             ),
//             child: Column(
//               children: [
//                 Text(
//                   '95%',
//                   style: GoogleFonts.inter(
//                     fontSize: 24.sp,
//                     fontWeight: FontWeight.w700,
//                     color: ecoG,
//                   ),
//                 ),
//                 Text(
//                   'Less Carbon Emissions',
//                   style: GoogleFonts.inter(
//                     fontSize: 12.sp,
//                     color: ecoG,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildComparisonBar(
//     String label,
//     String value,
//     Color color,
//     double percentage,
//   ) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   width: 12.w,
//                   height: 12.h,
//                   decoration: BoxDecoration(
//                     color: color,
//                     shape: BoxShape.circle,
//                   ),
//                 ),
//                 SizedBox(width: 8.w),
//                 Text(
//                   label,
//                   style: GoogleFonts.inter(
//                     fontSize: 12.sp,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//             Text(
//               value,
//               style: GoogleFonts.inter(
//                 fontSize: 12.sp,
//                 color: color,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 8.h),
//         ClipRRect(
//           borderRadius: BorderRadius.circular(12.r),
//           child: Container(
//             height: 24.h,
//             color: Colors.white.withOpacity(0.1),
//             child: FractionallySizedBox(
//               alignment: Alignment.centerLeft,
//               widthFactor: percentage,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: color,
//                   borderRadius: BorderRadius.circular(12.r),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildGoalSection() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [primaryBg, const Color(0xFF1A231F)],
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//         ),
//       ),
//       child: Column(
//         children: [
//           _buildSectionHeader('Goal Setting', 'Set Your Sustainability Goals'),
//           SizedBox(height: 24.h),
//           Container(
//             padding: EdgeInsets.all(20.w),
//             decoration: BoxDecoration(
//               color: Colors.white.withOpacity(0.1),
//               borderRadius: BorderRadius.circular(12.r),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 10,
//                   offset: const Offset(0, 4),
//                 ),
//               ],
//               gradient: LinearGradient(
//                 colors: [
//                   Colors.white.withOpacity(0.05),
//                   Colors.grey.withOpacity(0.1),
//                 ],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//             child: Column(
//               children: [
//                 Text(
//                   'I want to offset: ${_goalValue.toInt()} tons of CO₂',
//                   style: GoogleFonts.inter(
//                     fontSize: 14.sp,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 SizedBox(height: 16.h),
//                 Slider(
//                   value: _goalValue,
//                   min: 1,
//                   max: 50,
//                   divisions: 49,
//                   activeColor: ecoG,
//                   inactiveColor: Colors.white.withOpacity(0.2),
//                   onChanged: (value) => setState(() => _goalValue = value),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       '1 ton',
//                       style: GoogleFonts.inter(
//                         fontSize: 10.sp,
//                         color: Colors.white.withOpacity(0.6),
//                       ),
//                     ),
//                     Text(
//                       '50 tons',
//                       style: GoogleFonts.inter(
//                         fontSize: 10.sp,
//                         color: Colors.white.withOpacity(0.6),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 24.h),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: _buildGoalMetric('1', 'Months to reach', ecoG),
//                     ),
//                     SizedBox(width: 12.w),
//                     Expanded(
//                       child: _buildGoalMetric(
//                         '125',
//                         'Trees equivalent',
//                         solarY,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 12.h),
//                 _buildGoalMetric('230k', 'Miles of driving', ecoG),
//                 SizedBox(height: 16.h),
//                 Container(
//                   padding: EdgeInsets.all(16.w),
//                   decoration: BoxDecoration(
//                     color: ecoG.withOpacity(0.2),
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                   child: Column(
//                     children: [
//                       Text(
//                         '🎯 Goal Progress Tracker',
//                         style: GoogleFonts.inter(
//                           fontSize: 14.sp,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       SizedBox(height: 8.h),
//                       Text(
//                         '12500.0%',
//                         style: GoogleFonts.inter(
//                           fontSize: 24.sp,
//                           fontWeight: FontWeight.w700,
//                           color: Colors.white,
//                         ),
//                       ),
//                       Text(
//                         'Goal achieved! 🎉',
//                         style: GoogleFonts.inter(
//                           fontSize: 12.sp,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildGoalMetric(String value, String label, Color color) {
//     return Container(
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: color.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(12.r),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 10,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Text(
//             value,
//             style: GoogleFonts.inter(
//               fontSize: 24.sp,
//               fontWeight: FontWeight.w700,
//               color: color,
//             ),
//           ),
//           SizedBox(height: 4.h),
//           Text(
//             label,
//             textAlign: TextAlign.center,
//             style: GoogleFonts.inter(
//               fontSize: 10.sp,
//               color: color,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildShareSection() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [primaryBg, const Color(0xFF1A231F)],
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//         ),
//       ),
//       child: Column(
//         children: [
//           _buildSectionHeader(
//             'Share Your Impact',
//             'Share Your Sustainability Story',
//           ),
//           SizedBox(height: 24.h),
//           _buildShareCard(
//             LucideIcons.download,
//             'Download Sustainability Report',
//             'Get a detailed PDF report of your environmental impact.',
//             ecoG,
//           ),
//           SizedBox(height: 16.h),
//           _buildShareCard(
//             LucideIcons.share,
//             'Share Offset Badge',
//             'Share your environmental impact on social media.',
//             solarY,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildShareCard(
//     IconData icon,
//     String title,
//     String description,
//     Color color,
//   ) {
//     return Container(
//       padding: EdgeInsets.all(20.w),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(12.r),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 10,
//             offset: const Offset(0, 4),
//           ),
//         ],
//         gradient: LinearGradient(
//           colors: [
//             Colors.white.withOpacity(0.05),
//             Colors.grey.withOpacity(0.1),
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Column(
//         children: [
//           Icon(icon, size: 48.sp, color: color),
//           SizedBox(height: 16.h),
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: GoogleFonts.inter(
//               fontSize: 16.sp,
//               fontWeight: FontWeight.w600,
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(height: 8.h),
//           Text(
//             description,
//             textAlign: TextAlign.center,
//             style: GoogleFonts.inter(
//               fontSize: 10.sp,
//               color: Colors.white.withOpacity(0.6),
//             ),
//           ),
//           SizedBox(height: 16.h),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: color,
//               foregroundColor: Colors.white,
//               padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8.r),
//               ),
//             ),
//             onPressed: () {},
//             child: Text(
//               icon == LucideIcons.download ? 'Download Report' : 'Share Now',
//               style: GoogleFonts.inter(fontSize: 12.sp),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildGlobalImpact() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [ecoG, ecoG.withOpacity(0.7)],
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//         ),
//       ),
//       child: Column(
//         children: [
//           Text(
//             'Global Environmental Impact',
//             textAlign: TextAlign.center,
//             style: GoogleFonts.inter(
//               fontSize: 20.sp,
//               fontWeight: FontWeight.w700,
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(height: 16.h),
//           Text(
//             'Together with our customers worldwide, we\'re making a significant impact.',
//             textAlign: TextAlign.center,
//             style: GoogleFonts.inter(
//               fontSize: 12.sp,
//               color: Colors.white,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           SizedBox(height: 32.h),
//           Row(
//             children: [
//               Expanded(
//                 child: _buildGlobalStat('50,000+', 'Tons CO₂ Prevented'),
//               ),
//               SizedBox(width: 16.w),
//               Expanded(child: _buildGlobalStat('625,000', 'Trees Equivalent')),
//             ],
//           ),
//           SizedBox(height: 16.h),
//           Row(
//             children: [
//               Expanded(child: _buildGlobalStat('35M+', 'Gallons Water Saved')),
//               SizedBox(width: 16.w),
//               Expanded(child: _buildGlobalStat('128 GWh', 'Clean Energy')),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildGlobalStat(String value, String label) {
//     return Column(
//       children: [
//         Text(
//           value,
//           style: GoogleFonts.inter(
//             fontSize: 24.sp,
//             fontWeight: FontWeight.w700,
//             color: Colors.white,
//           ),
//         ),
//         SizedBox(height: 4.h),
//         Text(
//           label,
//           textAlign: TextAlign.center,
//           style: GoogleFonts.inter(
//             fontSize: 12.sp,
//             color: Colors.white,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildFooter() {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [primaryBg, const Color(0xFF1A231F)],
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//         ),
//       ),
//       child: Text(
//         '© 2024 Suncube AI – All rights reserved',
//         textAlign: TextAlign.center,
//         style: GoogleFonts.inter(
//           color: Colors.white.withOpacity(0.7),
//           fontSize: 8.sp,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class SustainabilityPage extends StatefulWidget {
  const SustainabilityPage({super.key});

  @override
  State<SustainabilityPage> createState() => _SustainabilityPageState();
}

class _SustainabilityPageState extends State<SustainabilityPage> {
  static const Color primaryBg = Color(0xFF060C09);
  static const Color lime = Color(0xFF73E0A9);
  static const Color solarY = Color(0xFFF59E0B);
  static const Color gridB = Color(0xFF3B82F6);
  static const Color ecoG = Color(0xFF34B87C);

  double _goalValue = 10;
  String _selectedTimeFrame =
      'Lifetime'; // Dropdown value: Daily, Monthly, Lifetime

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(360, 780),
      minTextAdapt: true,
      splitScreenMode: true,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: primaryBg,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(LucideIcons.arrowLeft, color: Colors.white, size: 22.sp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: primaryBg.withOpacity(0.9),
        automaticallyImplyLeading: false,
        title: Text(
          'Sustainability',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w800,
            fontSize: 20.sp,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 64.h),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF060C09), Color(0xFF1A231F)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                _buildHeroSection(),
                _buildImpactDashboard(),
                _buildComparisonSection(),
                _buildGoalSection(),
                _buildShareSection(),
                _buildGlobalImpact(),
                _buildFooter(),
                SizedBox(height: 50.h),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primaryBg, const Color(0xFF1A231F)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              border: Border.all(color: Colors.white.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Text(
              '🌱 Environmental Impact',
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            'Track Your Solar Footprint. Save the Planet in Kilowatts.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 28.sp,
              fontWeight: FontWeight.w800,
              color: Colors.white,
              height: 1.2,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'See how your switch to solar contributes to the planet — one carbon unit at a time.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              color: Colors.white.withOpacity(0.8),
              height: 1.4,
            ),
          ),
          SizedBox(height: 24.h),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: lime,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              elevation: 4,
            ),
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Explore My Offset',
                  style: GoogleFonts.inter(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 8.w),
                Icon(LucideIcons.arrowRight, size: 16.sp),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImpactDashboard() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primaryBg, const Color(0xFF1A231F)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader('Live Impact', 'Real-Time CO₂ Offset Simulation'),
          SizedBox(height: 16.h),
          _buildTimeFrameDropdown(),
          SizedBox(height: 24.h),
          _buildImpactCards(),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String badge, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            border: Border.all(color: Colors.white.withOpacity(0.2)),
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Text(
            badge,
            style: GoogleFonts.inter(
              fontSize: 10.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          title,
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildTimeFrameDropdown() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.05),
              Colors.grey.withOpacity(0.1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: DropdownButton<String>(
          value: _selectedTimeFrame,
          icon: Icon(
            LucideIcons.chevronDown,
            color: Colors.white.withOpacity(0.6),
            size: 16.sp,
          ),
          dropdownColor: Colors.white.withOpacity(0.2),
          underline: const SizedBox(),
          items:
              ['Daily', 'Monthly', 'Lifetime'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              }).toList(),
          onChanged: (String? newValue) {
            if (newValue != null) {
              setState(() {
                _selectedTimeFrame = newValue;
              });
            }
          },
        ),
      ),
    );
  }

  Widget _buildImpactCards() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _buildImpactCard(
                'CO₂ Prevented',
                '1250.0',
                'tons',
                ecoG,
                LucideIcons.leaf,
                78,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: _buildImpactCard(
                'Trees Equivalent',
                '15,625',
                'trees',
                ecoG,
                LucideIcons.treePine,
                85,
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: _buildImpactCard(
                'Car Emissions',
                '2875',
                'miles',
                solarY,
                LucideIcons.car,
                92,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: _buildImpactCard(
                'Water Saved',
                '890k',
                'gallons',
                solarY,
                LucideIcons.droplet,
                67,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildImpactCard(
    String title,
    String value,
    String unit,
    Color color,
    IconData icon,
    int progress,
  ) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.05),
            Colors.grey.withOpacity(0.1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 32.sp),
          SizedBox(height: 8.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 10.sp,
              color: Colors.white.withOpacity(0.6),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            value,
            style: GoogleFonts.inter(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
          Text(
            unit,
            style: GoogleFonts.inter(
              fontSize: 10.sp,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          SizedBox(height: 12.h),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Progress',
                    style: GoogleFonts.inter(
                      fontSize: 9.sp,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  Text(
                    '$progress%',
                    style: GoogleFonts.inter(
                      fontSize: 9.sp,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(4.r),
                child: LinearProgressIndicator(
                  value: progress / 100,
                  backgroundColor: color.withOpacity(0.2),
                  valueColor: AlwaysStoppedAnimation<Color>(color),
                  minHeight: 6.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildComparisonSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primaryBg, const Color(0xFF1A231F)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          _buildSectionHeader(
            'Energy Comparison',
            'Solar vs Grid Energy Impact',
          ),
          SizedBox(height: 24.h),
          _buildComparisonCard(),
        ],
      ),
    );
  }

  Widget _buildComparisonCard() {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.05),
            Colors.grey.withOpacity(0.1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Carbon Intensity Comparison',
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 24.h),
          _buildComparisonBar('Solar Energy', '0.04 kg CO₂/kWh', ecoG, 0.047),
          SizedBox(height: 16.h),
          _buildComparisonBar(
            'Grid Electricity',
            '0.85 kg CO₂/kWh',
            Colors.redAccent,
            1.0,
          ),
          SizedBox(height: 24.h),
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: ecoG.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              children: [
                Text(
                  '95%',
                  style: GoogleFonts.inter(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: ecoG,
                  ),
                ),
                Text(
                  'Less Carbon Emissions',
                  style: GoogleFonts.inter(
                    fontSize: 12.sp,
                    color: ecoG,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildComparisonBar(
    String label,
    String value,
    Color color,
    double percentage,
  ) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 12.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 8.w),
                Text(
                  label,
                  style: GoogleFonts.inter(
                    fontSize: 12.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Text(
              value,
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                color: color,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: Container(
            height: 24.h,
            color: Colors.white.withOpacity(0.1),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: percentage,
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGoalSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primaryBg, const Color(0xFF1A231F)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          _buildSectionHeader('Goal Setting', 'Set Your Sustainability Goals'),
          SizedBox(height: 24.h),
          Container(
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.05),
                  Colors.grey.withOpacity(0.1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                Text(
                  'I want to offset: ${_goalValue.toInt()} tons of CO₂',
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16.h),
                Slider(
                  value: _goalValue,
                  min: 1,
                  max: 50,
                  divisions: 49,
                  activeColor: ecoG,
                  inactiveColor: Colors.white.withOpacity(0.2),
                  onChanged: (value) => setState(() => _goalValue = value),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1 ton',
                      style: GoogleFonts.inter(
                        fontSize: 10.sp,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                    Text(
                      '50 tons',
                      style: GoogleFonts.inter(
                        fontSize: 10.sp,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Expanded(
                      child: _buildGoalMetric('1', 'Months to reach', ecoG),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: _buildGoalMetric(
                        '125',
                        'Trees equivalent',
                        solarY,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                _buildGoalMetric('230k', 'Miles of driving', ecoG),
                SizedBox(height: 16.h),
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: ecoG.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '🎯 Goal Progress Tracker',
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        '12500.0%',
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Goal achieved! 🎉',
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGoalMetric(String value, String label, Color color) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            value,
            style: GoogleFonts.inter(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 10.sp,
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShareSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primaryBg, const Color(0xFF1A231F)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          _buildSectionHeader(
            'Share Your Impact',
            'Share Your Sustainability Story',
          ),
          SizedBox(height: 24.h),
          _buildShareCard(
            LucideIcons.download,
            'Download Sustainability Report',
            'Get a detailed PDF report of your environmental impact.',
            ecoG,
          ),
          SizedBox(height: 16.h),
          _buildShareCard(
            LucideIcons.share,
            'Share Offset Badge',
            'Share your environmental impact on social media.',
            solarY,
          ),
        ],
      ),
    );
  }

  Widget _buildShareCard(
    IconData icon,
    String title,
    String description,
    Color color,
  ) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.05),
            Colors.grey.withOpacity(0.1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Icon(icon, size: 48.sp, color: color),
          SizedBox(height: 16.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 10.sp,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          SizedBox(height: 16.h),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            onPressed: () {},
            child: Text(
              icon == LucideIcons.download ? 'Download Report' : 'Share Now',
              style: GoogleFonts.inter(fontSize: 12.sp),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGlobalImpact() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [ecoG, ecoG.withOpacity(0.7)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Text(
            'Global Environmental Impact',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Together with our customers worldwide, we\'re making a significant impact.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 32.h),
          Row(
            children: [
              Expanded(
                child: _buildGlobalStat('50,000+', 'Tons CO₂ Prevented'),
              ),
              SizedBox(width: 16.w),
              Expanded(child: _buildGlobalStat('625,000', 'Trees Equivalent')),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(child: _buildGlobalStat('35M+', 'Gallons Water Saved')),
              SizedBox(width: 16.w),
              Expanded(child: _buildGlobalStat('128 GWh', 'Clean Energy')),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGlobalStat(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: GoogleFonts.inter(
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 12.sp,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primaryBg, const Color(0xFF1A231F)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Text(
        '© 2024 Suncube AI – All rights reserved',
        textAlign: TextAlign.center,
        style: GoogleFonts.inter(
          color: Colors.white.withOpacity(0.7),
          fontSize: 8.sp,
        ),
      ),
    );
  }
}
