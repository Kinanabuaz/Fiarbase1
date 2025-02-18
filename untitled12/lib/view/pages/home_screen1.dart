// import  'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:provider/provider.dart';
// import '../../controllerr/provider_local.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(),
//         body: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(AppLocalizations.of(context)!.user_name),
//               SizedBox(height: 30),
//               Text(AppLocalizations.of(context)!.email),
//               SizedBox(height: 30),
//               Text(AppLocalizations.of(context)!.phone),
//               SizedBox(height: 30),
//               Text(AppLocalizations.of(context)!.password),
//               SizedBox(height: 30),
//               TextButton(
//                 onPressed: () {
//                   Provider.of<LangeController>(context, listen: false)
//                       .changeLang(langCode: 'ar');
//                 },
//                 child: Text("AR"),
//               ),
//               SizedBox(height: 30),
//               TextButton(
//                 onPressed: () {
//                   Provider.of<LangeController>(context, listen: false)
//                       .changeLang(langCode: 'en');
//                 },
//                 child: Text("EN"),
//               ),
//             ],
//           ),
//         ));
//   }}