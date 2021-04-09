import 'package:flutter/material.dart';

class TellMeAlert {
  final BuildContext context;
  //callback
  final Function onConfirm;
  //modal conf
  final Alignment alignment;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final bool shadow;
  //Title conf
  final bool showTitle;
  final String title;
  final TextStyle titleStyle;
  //Content conf
  final bool showContent;
  final String content;
  final TextStyle contentStyle;
  //Icon conf
  final bool showIcon;
  final IconData icon;
  final Color iconColor;
  //Button conf
  final bool showConfirmButton;
  final String confirmButtonText;
  final TextStyle confirmTextStyle;
  final Color confirmButtonColor;
  final bool showCancelButton;
  final String cancelButtonText;
  final TextStyle cancelTextStyle;
  final Color cancelButtonColor;
  //custom content
  final Widget child;

  TellMeAlert({
    @required this.context,
    //callback
    this.onConfirm,
    //modal conf
    this.padding = const EdgeInsets.all(16.0),
    this.alignment = Alignment.center,
    this.borderRadius = 5,
    this.shadow = false,
    //title conf
    this.showTitle = true,
    this.title,
    this.titleStyle = _paragraphBold,
    //Content conf
    this.showContent = true,
    this.content,
    this.contentStyle = _uISubContentNormal,
    //icon conf
    this.showIcon = true,
    this.icon = Icons.error_outline,
    this.iconColor,
    //Button conf
    this.showConfirmButton = true,
    this.showCancelButton = true,
    this.confirmButtonText = "Confirm",
    this.cancelButtonText = "Cancel",
    this.confirmTextStyle,
    this.cancelTextStyle = _uISubContentNormal,
    this.confirmButtonColor,
    this.cancelButtonColor,
    //custom content
    this.child,
  }) {
    // assert(showTitle == true ? title != null : title == null,
    //     "If show title true, title can not be null");

    showAlert(context);
  }

  showAlert(BuildContext context) {
    Color primary = Theme.of(this.context).primaryColor;
    showDialog(
        barrierColor: Colors.black26,
        context: context,
        builder: (_) {
          return Align(
            alignment: this.alignment,
            child: Material(
              color: Colors.transparent,
              child: Padding(
                padding: this.padding,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(this.borderRadius),
                    boxShadow: [
                      this.shadow
                          ? BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5,
                              spreadRadius: 1,
                            )
                          : BoxShadow()
                    ],
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        this.showIcon
                            ? Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: this.iconColor != null
                                          ? this.iconColor.withOpacity(0.2)
                                          : primary.withOpacity(0.2)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Icon(
                                      this.icon,
                                      color: this.iconColor ?? primary,
                                      size: 45,
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                        showTitle
                            ? Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                child: Text(
                                  this.title,
                                  textAlign: TextAlign.center,
                                  style: this.titleStyle,
                                ),
                              )
                            : Container(),
                        showContent
                            ? Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                child: Text(
                                  this.content,
                                  textAlign: TextAlign.center,
                                  style: this.contentStyle,
                                ),
                              )
                            : Container(),
                        child == null ? Container() : child,
                        showConfirmButton
                            ? Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor: MaterialStateProperty.all(
                                        this.confirmButtonColor ?? primary),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            this.borderRadius),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    onConfirm();
                                    Navigator.pop(context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      this.confirmButtonText,
                                      style: this.confirmTextStyle,
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                        showCancelButton
                            ? Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    overlayColor: MaterialStateProperty.all(
                                        Colors.black12),
                                    backgroundColor: MaterialStateProperty.all(
                                        this.cancelButtonColor ?? Colors.white),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            this.borderRadius),
                                      ),
                                    ),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      this.cancelButtonText,
                                      style: this.cancelTextStyle,
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}

const _paragraphBold = const TextStyle(
  fontWeight: FontWeight.w700,
  color: const Color(0xff102d42),
  fontStyle: FontStyle.normal,
  fontSize: 16.0,
);

const _uISubContentNormal = const TextStyle(
  fontWeight: FontWeight.w500,
  color: const Color(0xff69819a),
  //fontFamily: "Gilroy-☞",
  fontStyle: FontStyle.normal,
  fontSize: 14.0,
);
