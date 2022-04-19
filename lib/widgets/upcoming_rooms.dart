import 'package:clubhouse_ui_clone/config/palette.dart';
import 'package:clubhouse_ui_clone/data.dart';
import 'package:flutter/material.dart';

class UpComingRooms extends StatelessWidget {
  final List<Room> upcomingRooms;
  const UpComingRooms({
    Key? key,
    required this.upcomingRooms,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Palette.secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 4, 0, 4),
        child: Column(
            children: upcomingRooms
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(e.time),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (e.club.isNotEmpty)
                                Flexible(
                                  child: Text(
                                    e.club.toUpperCase(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .overline!
                                        .copyWith(
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1,
                                        ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              Flexible(
                                child: Text(
                                  e.name,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
                .toList()),
      ),
    );
  }
}
