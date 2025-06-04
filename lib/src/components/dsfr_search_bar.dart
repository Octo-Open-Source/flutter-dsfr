import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

class DsfrSearchBar extends StatefulWidget {
  final String hintText;
  final Function() onSearch;
  final TextEditingController controller;

  const DsfrSearchBar({super.key, this.hintText = 'Rechercher', required this.onSearch, required this.controller});

  @override
  State<DsfrSearchBar> createState() => _DsfrSearchBarState();
}

class _DsfrSearchBarState extends State<DsfrSearchBar> {
  late FocusNode _textFieldFocusNode;
  late FocusNode _buttonFocusNode;

  @override
  void initState() {
    super.initState();
    _textFieldFocusNode = FocusNode();
    _buttonFocusNode = FocusNode();

    _textFieldFocusNode.addListener(() {
      setState(() {});
    });

    _buttonFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _textFieldFocusNode.dispose();
    _buttonFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Flexible(
              child: DsfrFocusWidget(
                isFocused: _textFieldFocusNode.hasFocus,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8)),
                child: Material(
                  color: DsfrColorDecisions.backgroundContrastGrey(context),
                  child: TextField(
                    focusNode: _textFieldFocusNode,
                    controller: widget.controller,
                    textInputAction: TextInputAction.search,
                    onSubmitted: (value) => widget.onSearch(),
                    decoration: InputDecoration(
                      hintText: widget.hintText,
                      hintStyle: DsfrTextStyle.bodySmItalic(color: DsfrColorDecisions.textDefaultGrey(context)),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                      labelStyle: DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textDefaultGrey(context)),
                    ),
                  ),
                ),
              ),
            ),
            DsfrFocusWidget(
              isFocused: _buttonFocusNode.hasFocus,
              borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
              child: Material(
                color: DsfrColorDecisions.backgroundActionHighBlueFrance(context),
                child: Semantics(
                  label: widget.hintText,
                  child: InkWell(
                    focusNode: _buttonFocusNode,
                    onTap: widget.onSearch,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        DsfrIcons.systemSearchLine,
                        color: DsfrColorDecisions.backgroundContrastGrey(context),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Divider(height: 0, thickness: 2, color: DsfrColorDecisions.backgroundActionHighBlueFrance(context)),
      ],
    );
  }
}
