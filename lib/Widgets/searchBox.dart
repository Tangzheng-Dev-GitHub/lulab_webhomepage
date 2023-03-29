// import 'package:flutter/material.dart';
//
// //搜索框
// class SearchBar extends StatefulWidget {
//   const SearchBar({Key? key, this.onChanged}) : super(key: key);
//   final ValueChanged<String>? onChanged;
//
//   @override
//   _SearchBarState createState() => _SearchBarState();
// }
//
// class _SearchBarState extends State<SearchBar> {
//   final TextEditingController _textEditingController = TextEditingController();
//
//   bool _showClear = false;
//
//   void _onChanged(String text) {
//     if (widget.onChanged != null) {
//       widget.onChanged!(text);
//     }
//     setState(() {
//       _showClear = text.isNotEmpty;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.transparent,
//       height: 44,
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           SizedBox(
//             height: 22,
//             child: Row(
//               children: [
//                 Container(
//                   width: 150,
//                   height: 50,
//                   margin: const EdgeInsets.only(left: 20, right: 16, top: 1),
//                   padding: const EdgeInsets.only(left: 20, right: 4, top: 4.5),
//                   decoration: BoxDecoration(
//                     color: Colors.grey.shade100,
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: TextField(
//                           controller: _textEditingController,
//                           cursorColor: Colors.green,
//                           cursorHeight: 12,
//                           autofocus: true,
//                           onChanged: _onChanged,
//                           style: const TextStyle(
//                             fontSize: 12.0,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w300,
//                           ),
//                           decoration: const InputDecoration(
//                               contentPadding: EdgeInsets.only(
//                                   left: -2.5, bottom: 20, top: -18),
//                               border: InputBorder.none,
//                               fillColor: Colors.grey,
//                               hintText: "搜索内容",
//                               hintStyle: TextStyle(
//                                 fontSize: 12,
//                               )),
//                         ),
//                       ),
//                       if (_showClear)
//                         GestureDetector(
//                           child: const Center(
//                               child: Icon(
//                             Icons.cancel,
//                             size: 18,
//                             color: Colors.grey,
//                           )),
//                           onTap: () {
//                             _textEditingController.clear();
//                             setState(() {
//                               _onChanged("");
//                             });
//                           },
//                         )
//                     ],
//                   ),
//                 ), //圆角背景
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({Key? key, this.onChanged}) : super(key: key);
  final ValueChanged<String>? onChanged;

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final TextEditingController _textEditingController = TextEditingController();

  bool _showClear = false;

  void _onChanged(String text) {
    if (widget.onChanged != null) {
      widget.onChanged!(text);
    }
    setState(() {
      _showClear = text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 44,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 22,
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 50,
                  margin: const EdgeInsets.only(left: 20, right: 16, top: 1),
                  padding: const EdgeInsets.only(left: 20, right: 4, top: 4.5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.search,
                        size: 18,
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: TextField(
                          controller: _textEditingController,
                          cursorColor: Colors.green,
                          cursorHeight: 12,
                          autofocus: true,
                          onChanged: _onChanged,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  left: -3, bottom: 20, top: -20),
                              border: InputBorder.none,
                              fillColor: Colors.grey,
                              hintText: "    搜索内容",
                              hintStyle: TextStyle(
                                fontSize: 12,
                              )),
                        ),
                      ),
                      if (_showClear)
                        GestureDetector(
                          child: const Center(
                              child: Icon(
                            Icons.cancel,
                            size: 18,
                            color: Colors.grey,
                          )),
                          onTap: () {
                            _textEditingController.clear();
                            setState(() {
                              _onChanged("");
                            });
                          },
                        )
                    ],
                  ),
                ), //圆角背景
              ],
            ),
          ),
        ],
      ),
    );
  }
}
