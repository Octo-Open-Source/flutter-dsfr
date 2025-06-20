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
    const radius = Radius.circular(DsfrSpacings.s1v);

    final underlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(
        color: DsfrColorDecisions.borderPlainBlueFrance(context),
        width: DsfrSpacings.s0v5,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.only(topLeft: radius),
    );

    final buttonBorderRadius = BorderRadius.only(topRight: radius);

    return Row(
      children: [
        Flexible(
          child: DsfrFocusWidget(
            isFocused: _textFieldFocusNode.hasFocus,
            borderRadius: underlineInputBorder.borderRadius,
            child: TextField(
              focusNode: _textFieldFocusNode,
              controller: widget.controller,
              textInputAction: TextInputAction.search,
              onSubmitted: (value) => widget.onSearch(),
              decoration: InputDecoration(
                filled: true,
                fillColor: DsfrColorDecisions.backgroundContrastGrey(context),
                border: underlineInputBorder,
                enabledBorder: underlineInputBorder,
                focusedBorder: underlineInputBorder,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                hintText: widget.hintText,
                hintStyle: DsfrTextStyle.bodyMd(
                  color: DsfrColorDecisions.textMentionGrey(context),
                ).copyWith(fontStyle: FontStyle.italic),
                labelStyle: DsfrTextStyle.bodyMd(color: DsfrColorDecisions.textDefaultGrey(context)),
              ),
            ),
          ),
        ),
        DsfrFocusWidget(
          isFocused: _buttonFocusNode.hasFocus,
          borderRadius: buttonBorderRadius,
          child: Material(
            color: DsfrColorDecisions.backgroundActionHighBlueFrance(context),
            borderRadius: buttonBorderRadius,
            child: Semantics(
              label: widget.hintText,
              child: InkWell(
                focusNode: _buttonFocusNode,
                onTap: widget.onSearch,
                borderRadius: buttonBorderRadius,
                child: SizedBox(
                  width: 48,
                  height: 48,
                  child: Icon(
                    DsfrIcons.systemSearchLine,
                    color: DsfrColorDecisions.backgroundContrastGrey(context),
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
