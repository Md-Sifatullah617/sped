import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final Widget? content;
  final bool initiallyExpanded;
  final Function(bool)? onExpansionChanged;
  final Color? backgroundColor;
  final bool? checkboxValue;

  const CustomExpansionTile({
    super.key,
    required this.title,
    this.content,
    this.initiallyExpanded = false,
    this.onExpansionChanged,
    this.backgroundColor,
    this.checkboxValue,
  });

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initiallyExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            side: const BorderSide(width: 1),
            title: Text(widget.title),
            value: widget.checkboxValue ?? _isExpanded,
            onChanged: (newValue) {
              setState(() {
                _isExpanded = newValue!;
                widget.onExpansionChanged?.call(newValue);
              });
            },
          ),
          if (_isExpanded && widget.content != null) widget.content!,
        ],
      ),
    );
  }
}
