import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItemSkeleton extends StatelessWidget {
  const CategoryItemSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.w, horizontal: 20.w),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Skeletonizer(
              enabled: true,
              child: Container(
                margin: EdgeInsets.only(right: 10.w),
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(9.r)),
                child: Bone.circle(size: 128.w),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Skeletonizer(
                  enabled: true,
                  child: Bone.text(words: 3),
                ),
                SizedBox(height: 2.w),
                const Skeletonizer(
                  enabled: true,
                  child: Bone.text(words: 1),
                ),
                SizedBox(height: 12.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Skeletonizer(
                      enabled: true,
                      child: Bone.icon(),
                    ),
                    SizedBox(width: 10.w),
                    const Skeletonizer(
                      enabled: true,
                      child:
                          Bone.icon(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
