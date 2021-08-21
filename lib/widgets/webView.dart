import 'package:flutter/material.dart';
import 'package:sarb_mobile_app/commons/appColors.dart';
import 'package:sarb_mobile_app/commons/appTextStyles.dart';
import 'package:sarb_mobile_app/commons/sizeConfig.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWidget extends StatefulWidget {
  final String? initialUrl;
  final String? title;

  const WebViewWidget({Key? key, this.initialUrl, this.title})
      : super(key: key);

  @override
  _WebViewWidgetState createState() => _WebViewWidgetState();
}

class _WebViewWidgetState extends State<WebViewWidget> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: AppColors.lightGreen,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            widget.title!,
            style: AppTextStyles.simpleText.copyWith(color: AppColors.congoBrown),
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              WebView(
                initialUrl: widget.initialUrl,
                javascriptMode: JavascriptMode.unrestricted,
                onPageFinished: (finish) {
                  setState(() {
                    isLoading = false;
                  });
                },
              ),
              isLoading
                  ? Center(
                      child: Padding(
                        padding: EdgeInsets.all(SizeConfig.screenHeight! * 0.2),
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Stack(),
            ],
          ),
        ));
  }
}
