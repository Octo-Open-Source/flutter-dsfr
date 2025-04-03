import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

class DsfrSearchBar extends StatefulWidget {
  final String hintText;
  final Function() onSearch;
  final TextEditingController controller;

  const DsfrSearchBar({
    super.key,
    this.hintText = 'Rechercher',
    required this.onSearch,
    required this.controller,
  });

  @override
  State<DsfrSearchBar> createState() => _DsfrSearchBarState();
}

class _DsfrSearchBarState extends State<DsfrSearchBar> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double searchBarWidth = screenWidth * 0.99;

    return DsfrFocusWidget(
      isFocused: _focusNode.hasFocus,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: searchBarWidth,
            height: 50,
            decoration: BoxDecoration(
              color: DsfrColorDecisions.backgroundContrastGrey(context),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    focusNode: _focusNode,
                    controller: widget.controller,
                    decoration: InputDecoration(
                      hintText: widget.hintText,
                      hintStyle: DsfrTextStyle.bodySmItalic(color: DsfrColorDecisions.textDefaultGrey(context)),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                      labelStyle: DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textDefaultGrey(context)),
                    ),
                  ),
                ),
                Material(
                  color: DsfrColorDecisions.backgroundActionHighBlueFrance(context),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
                  child: Semantics(
                    label: widget.hintText,
                    child: InkWell(
                      onTap: widget.onSearch,
                      child: SizedBox(
                        width: 50,
                        height: double.infinity,
                        child: Icon(
                          Icons.search,
                          color: DsfrColorDecisions.backgroundContrastGrey(context),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: searchBarWidth,
            height: 2,
            color: DsfrColorDecisions.backgroundActionHighBlueFrance(context),
          ),
        ],
      ),
    );
  }
}
