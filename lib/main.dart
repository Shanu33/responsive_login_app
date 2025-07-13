import 'package:adaptive_linear_layout/adaptive_linear_layout.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_login_app/respPatt.dart';
import 'package:responsive_login_app/SliderIndex.dart';
import 'package:platform_screener/platform_screener.dart';


void main() {

  runApp(const MyApp());
  /*runApp(DevicePreview(
    enabled: true, // Set to false to disable in release
    builder: (context) => MyApp(), // Your actual app
  ));*/
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //useInheritedMediaQuery: true
      // important!
      title: 'Apperico',
      debugShowCheckedModeBanner: false,
      home : MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomeScreen();
}

class MyHomeScreen extends State<MyHomePage> {

   customSize({required isLandscape,  height,  width}) {
     const horizontalPadding = EdgeInsets.symmetric(horizontal: 55,vertical: 20);
     const verticalPaddingWebNative = EdgeInsets.symmetric(vertical: 20, horizontal: 80);
     const defaultPaddingPortrait = EdgeInsets.only( bottom: 20, left: 19, right: 19);
     const androidPotrait = EdgeInsets.only(top: 50, bottom: 10, left: 19, right: 19);
     const iOSPotrait = EdgeInsets.only(top: 25, bottom: 20, left: 19, right: 19);
     const desktopPotrait = EdgeInsets.only(top: 20, bottom: 20, left: 19, right: 19);
     var myPadding;
     var PatWidth;
     var wbFontSize;
     var hiGIFWH;
     var lineFont;
     var lineText=isLandscape?"Today is new day. It's your day. You shape it.Sign in to start your projects.":"Today is new day. It's your day. You shape it.\nSign in to start your projects.";
     var inputFieldHolderFont=(isLandscape?17:15).toDouble();
     var myTextFont=(isLandscape?17:15).toDouble();
     var inputFieldSize= (isLandscape?(height/100)*4.4:(height/100)*4.8).toDouble();
     var hyperLinkFont=[(isLandscape?17:15).toDouble(),(isLandscape?17.5:16.5).toDouble()];
     var signInButtonSize=(isLandscape?(height/100)*5.2:(height/100)*5.15).toDouble();
     var furtherSignInFont=(isLandscape ? 17 : 15).toDouble();
     var furtherSignInOptionText=isLandscape ? '    Or    ' : '    Or sign in with    ';
     var ImageButtonOffset=[isLandscape?width/2:(width/100)*41.79,isLandscape?(height/100)*4.5:(height/100)*4.6];
     var signOptionDir=LayoutPreference.row;
     var GglFbText=[isLandscape?"Sign in with Google    ":"Google",isLandscape?"Sign in with Facebook":"Facebook"];
     var landScpLeftSapce=(isLandscape?(width/100)*12:0).toDouble();
     var landScpCenterSpace=(isLandscape?(width/100)*12:0).toDouble();
     var bannerImageSize=[isLandscape ? (width / 100) * 40:width,isLandscape ? height:(height / 100) * 21.1];
     var imgBtnBtwnSizedBoxSize=!isLandscape?(width/100)*4.10:null;

     if(DeviceDetector.isMobile){
       myPadding=(isLandscape ? horizontalPadding : defaultPaddingPortrait);
       wbFontSize=(isLandscape? 27:24).toDouble();
       signOptionDir=isLandscape
           ?LayoutPreference.column
           :LayoutPreference.row;
       hiGIFWH=(isLandscape?35:35).toDouble();
       lineFont=(isLandscape?17.5:17).toDouble();
       ImageButtonOffset=[isLandscape?(width/100)*18.6:(width/100)*41.79,isLandscape?(height/100)*9:(height/100)*4.5];
       furtherSignInOptionText='    Or sign in with    ';
       GglFbText=["Google","Facebook"];
       landScpLeftSapce=((width/100)*1.5).toDouble();
       landScpCenterSpace=((width/100)*7).toDouble();
       bannerImageSize=[isLandscape ? (width / 100) * 34:width,isLandscape ? (height / 100) *89:(height / 100) * 21.1];
       myTextFont=(isLandscape?17:16).toDouble();
       inputFieldSize= (isLandscape?(height/100)*9:(height/100)*4.8).toDouble();
       hyperLinkFont=[(isLandscape?17:16).toDouble(),(isLandscape?17.5:16.5).toDouble()];
       signInButtonSize=(isLandscape?(height/100)*9.5:(height/100)*5).toDouble();
       furtherSignInFont=(isLandscape ? 17 : 16).toDouble();
       inputFieldHolderFont=(isLandscape?17:16).toDouble();
       imgBtnBtwnSizedBoxSize=!isLandscape?(width/100)*3.15:(width/100)*5.2;
       lineText=isLandscape?"Today is new day. It's your day. You shape it.Sign in to start your projects.":"Today is new day. It's your day. You shape it.\nSign in to start your projects.";
     }
     if(DeviceDetector.isDesktop){
       myPadding=(isLandscape ? verticalPaddingWebNative : (DeviceDetector.isDesktopBrowser || DeviceDetector.isPWA_Desktop )?defaultPaddingPortrait:desktopPotrait);
       wbFontSize=(isLandscape? 34:25).toDouble();
       hiGIFWH=(isLandscape?43:33).toDouble();
       lineFont=(isLandscape?20:16).toDouble();
       lineText="Today is new day. It's your day. You shape it.\nSign in to start your projects.";

     }


     if (DeviceDetector.isAndroidNative || DeviceDetector.isIosNative) {
       myPadding = isLandscape
           ? horizontalPadding
           : DeviceDetector.isAndroidNative?androidPotrait:iOSPotrait;

       imgBtnBtwnSizedBoxSize=!isLandscape?(width/100)*4.10:(width/100)*6.5;
       lineText="Today is new day. It's your day. You shape it.\nSign in to start your projects.";
     }


     return [myPadding, PatWidth,wbFontSize, hiGIFWH,lineFont,signOptionDir,ImageButtonOffset,furtherSignInOptionText,GglFbText,landScpLeftSapce,landScpCenterSpace,bannerImageSize,myTextFont,inputFieldSize,hyperLinkFont,signInButtonSize,furtherSignInFont,inputFieldHolderFont,imgBtnBtwnSizedBoxSize,lineText];
   }

    Widget InputField({required Height, required isLandscape,required text, required fieldHeight,required Width}){
    return SizedBox(
      height: fieldHeight,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 0,left: 16,right: 16,bottom: 0),
            border: InputBorder.none,
            filled: true,
            fillColor: Color(0xFFF3F7FB),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide(
                  color: Color(0xFFD4D7E3),
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide(
                color: Color(0xFFD4D7E3)
              )
            ),
            hintText: text,
            hintStyle: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.w100,
                color: Color(0xFF8897AD),
                fontSize:customSize(isLandscape: isLandscape,height: Height,width: Width)[17]
            )
        ),
      ),
    );}

  Widget HyperLink({required text, required isLandscape, required FontSize, alignment=Alignment.center,OnTap}){

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: OnTap,
        child: Align(
          alignment: alignment,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: "Roboto",
                fontSize: FontSize,
                color: Color(0xFF1E4AE9),
                fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    )
    ;
  }

  Widget ImageButton({required Height, required Width, required isLandscape , required Image, required textOffset,required widthOffset,required heightOffset}){
    return SizedBox(
      height: customSize(isLandscape: isLandscape,height: Height, width: Width)[6][1],
      width: customSize(isLandscape: isLandscape,height: Height, width: Width)[6][0],
      child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(0),
              backgroundColor: Color(0xFFF3F9FA),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11)
              )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: isLandscape?(Width/100)*1:(Width/100)*3,
            children: [
              SvgPicture.asset(
                Image,
                width: isLandscape?widthOffset[0].toDouble():widthOffset[1].toDouble(),
                height: isLandscape?heightOffset[0].toDouble():heightOffset[1].toDouble(),
              ),
              Text(
                textOffset,
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                    color: Color(0xFF313957)
                ),
              )
            ],
          )
      ),
    )
    ;
  }

  Widget myText({required text, required isLandscape, required FontSize}){
    return Align(
      alignment: Alignment.bottomLeft,
      child: Text(
        text,
        style: TextStyle(
            fontSize: FontSize,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w500
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    final Width=MediaQuery.of(context).size.width;
    final Height=MediaQuery.of(context).size.height;
    final mode=getScreenMode(context);
    final flexLower = mode == ScreenMode.landscape ? 1 : 3;
    final isLandscape=mode==ScreenMode.landscape;




    final  List<String> imageList=
      isLandscape
      ?["assets/Image/Painting_Of_Flower_Bouquet.jpg",
        "assets/Image/Art.png",
        "assets/Image/Art (1).png",
        "assets/Image/Art (2).png",
        "assets/Image/Art (3).png"]
    :[ "assets/Image/Flower_half.jpg",
        "assets/Image/half_opequw.png",
        "assets/Image/half_heart.png",
        "assets/Image/half_hand.png",
        "assets/Image/half_frame.png"];

    final bannerImage =imageList[SliderIndex.Counter];
    final customValues = customSize(isLandscape: isLandscape, height: Height, width: Width);

    Widget uiWrapper({required Widget child, required EdgeInsets padding}) {
      return isLandscape
          ? SingleChildScrollView(
          padding: padding,
          child: child,
      )
          : Padding(
        padding: padding,
        child: child,
      );
    }


    final style = TextStyle(
      fontFamily: "SansSarifRounded",
      fontSize: customValues[2],
      fontWeight: FontWeight.bold,
    );
    final Ortext=isLandscape ? '    Or    ' : '    Or sign in with    ';
    final textSize=measureTextSize(text:customValues[7], style: style);
    final landscape=((Width/100)*(100-((textSize.width/Width)*100)))/9;
    final potrait=((Width/100)*(100-((textSize.width/Width)*100)))/2;
    final mobLand=((Width/100)*(100-((textSize.width/Width)*100)))/6;

    print("Width :$Width\tHeight:$Height\nText Width:${textSize.width}");
    // TODO: implement build
    return Scaffold(
      //backgroundColor: Color(0xFDFFFFFD),
      body: Container(
        color: Color(0xFFFFFFFF),
        padding:customValues[0],

        child: FlexLinearLayout(
            context: context,
            direction: ReverseDirection.row,
            layoutPreference: LayoutPreference.column,
            children:[
              Stack(
                children: [
                  // Image background
                    ClipSmoothRect(
                      radius: SmoothBorderRadius(cornerRadius: 18, cornerSmoothing: 1),
                      child: Image.asset(
                        bannerImage,
                        width: customValues[11][0],
                        height: customValues[11][1],
                        fit: isLandscape ? BoxFit.fill : BoxFit.cover,
                      ),
                    ),


                  // Transparent left/right buttons
                  Positioned.fill(
                    child: Row(
                      children: [
                        // Left tappable area
                        Expanded(
                          child: GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              setState(() {
                                SliderIndex.getIndex("-", 4);
                              });
                            },
                            child: Container(), // Fully transparent
                          ),
                        ),
                        // Right tappable area
                        Expanded(
                          child: GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              setState(() {
                                SliderIndex.getIndex("+", 4);
                              });
                            },
                            child: Container(), // Fully transparent
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


              SizedBox(width: customValues[10]),

              Expanded(
                flex: flexLower,
                child: uiWrapper(
                  padding: isLandscape?EdgeInsets.only(top: (Height/100)*4,)
                      : EdgeInsets.only(top: (Height/100)*2.6),
                  child: Column(
                    children: [
                      Row(
                        spacing: 3,
                        children: [
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                                fontFamily: "SansSarifRounded",
                                fontSize:customValues[2],
                                fontWeight: FontWeight.bold
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Image.asset(
                              "assets/Image/hiFi.gif",
                              width: customValues[3],
                              height: customValues[3],
                            ),
                          )
                        ],
                      ) ,

                      SizedBox(height: isLandscape?(Height/100)*2.46:(Height/100)*0.4,),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          customValues[19],

                          style: TextStyle(
                            fontSize: customValues[4],
                            fontFamily: "SansSarifRegular",
                          ),
                          maxLines: 3,
                        ),
                      ),

                      SizedBox(height: isLandscape?(Height/100)*10.21:(Height/100)*3.8,),

                      myText(text: "Email", isLandscape: isLandscape,FontSize: customValues[12]),

                      InputField(
                          Height: Height,
                          Width: Width,
                          isLandscape: isLandscape,
                          text: "Example@email.com",
                          fieldHeight: customValues[13]
                      ),

                      SizedBox(height: isLandscape?(Height/100)*2.2:(Height/100)*1.6,),

                      myText(text: "Password", isLandscape: isLandscape,FontSize: customValues[12]),

                      InputField(
                          Height: Height,
                          Width: Width,
                          isLandscape: isLandscape,
                          text: "At least 8 characters",
                          fieldHeight: customValues[13]
                      ),

                      SizedBox(height: isLandscape?(Height/100)*2.1:(Height/100)*1.59,),

                      HyperLink(
                          text: "Forgot Password?",
                          isLandscape: isLandscape,
                          FontSize: customValues[14][0],
                          alignment: Alignment.centerRight,OnTap: (){}),

                      SizedBox(height: isLandscape?(Height/100)*2.1:(Height/100)*1.59,),

                      SizedBox(
                        height: customValues[15],
                        width: isLandscape?Width/2:Width,
                        child: TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.all(0),
                            backgroundColor: Color(0xFF162D3A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                            onPressed: (){},
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: isLandscape?17:16,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w100
                              ),
                            )
                        ),
                      ),

                      SizedBox(height: isLandscape?(Height/100)*4.21:(Height/100)*4.5,),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border:Border(top: BorderSide(
                                      color: Color(0xFF294957)
                                  )
                                  )
                              ),
                              width:isLandscape?(DeviceDetector.isDesktop?landscape:mobLand):potrait,
                            ),
                            Text(
                              customValues[7],
                              style:TextStyle(
                                fontFamily: "Roboto",
                                fontSize: customValues[16],
                                fontWeight: FontWeight.w100,
                                color: const Color(0xFF294957),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border:Border(top: BorderSide(
                                      color: Color(0xFF294957)
                                  ),
                                  )
                              ),
                              width:isLandscape?(DeviceDetector.isDesktop?landscape:mobLand):potrait,
                            ),
                          ]
                      ),

                      SizedBox(height: isLandscape?(Height/100)*2.1:(Height/100)*2.8,),

                      FlexLinearLayout(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          layoutPreference: customValues[5],
                          context: context,
                          children: [
                            ImageButton(
                                Height: Height,
                                Width: Width,
                                isLandscape: isLandscape,
                                Image: "assets/Image/google_icon.svg",
                                textOffset: customValues[8][0],
                                widthOffset: [24,22],
                                heightOffset: [24,22]
                            ),

                            SizedBox(
                              width: customValues[18],
                              height: isLandscape?(Height/100)*1.5:null,
                            ),

                            ImageButton(
                                Height: Height,
                                Width: Width,
                                isLandscape: isLandscape,
                                Image:"assets/Image/Facebook Icon.svg",
                                textOffset: customValues[8][1],
                                widthOffset: [26.5,24.5],
                                heightOffset: [26.5,24.5]
                            ),
                          ]
                      ),

                      SizedBox(height: isLandscape?(Height/100)*4.21:(Height/100)*2,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Don't you have an account?",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: customValues[14][1],
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF313957)
                            ),
                          ),

                          HyperLink(text: "Sign up", isLandscape: isLandscape, FontSize: customValues[14][1],OnTap: (){}),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(width: customValues[9]),
            ]
        ),
      )
    );
  }
}
