import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temp/common/assets.dart';
import 'package:temp/common/colors.dart';

import '../model/review_tag.dart';

class Profile extends StatefulWidget {
  final String name;
  final String image;
  const Profile({super.key, required this.name, required this.image});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextStyle textStyleWithDefaultSize(
      {double? fontSize, FontWeight? fontWeight, Color? color}) {
    return GoogleFonts.notoSansKr(
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? Colors.black,
    );
  }
  var reviewlist = [AppImages.review1, AppImages.review2, AppImages.review3];
  String? selectedValue = '최신순';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.grey.withOpacity(0.3),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 28,
            )),
        title: Column(
          children: [
            Text(
              '랭킹 1위',
              style: textStyleWithDefaultSize(fontSize: 10),
            ),
            Text(
              '베스트 리뷰어',
              style: textStyleWithDefaultSize(fontSize: 16),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(widget.image),
                  radius: 64,
                )),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                widget.name,
                style: textStyleWithDefaultSize(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.crown),
                Text(
                  '골드',
                  style: textStyleWithDefaultSize(
                      color: AppColors.yellow,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Center(
              child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.lightbgGrey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text('조립컴 업체를 운영하며 리뷰를 작성합니다.')),
            ),
            const SizedBox(height: 30),
            Container(
              color: AppColors.lightbgGrey,
              width: double.infinity,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 16, left: 16.0, top: 16, bottom: 4),
              child: Row(
                children: [
                  Text('작성한 리뷰',
                      style: textStyleWithDefaultSize(
                          fontSize: 18, fontWeight: FontWeight.w600)),
                  const Text('총 35개'),
                  const Spacer(),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                          color: AppColors.grey2, style: BorderStyle.solid, width: 0.80),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        items: <String>['최신순']
                            .map((value) => DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        ))
                            .toList(),
                        onChanged: ( value) {},
                        isExpanded: false,
                        value: '최신순',
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              color: AppColors.grey,
            ),
            const SizedBox(height: 10),
            Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lightGrey, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Image.asset(
                  AppImages.zmd,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'AMD 라이젠 5 5600X 버미어 \n정품 멀티팩',
                    style: GoogleFonts.notoSansKr(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rounded,
                        color: AppColors.yellow,
                        size: 28,
                      ),
                      const Icon(Icons.star_rounded,
                          color: AppColors.yellow, size: 28),
                      const Icon(Icons.star_rounded,
                          color: AppColors.yellow, size: 28),
                      const Icon(Icons.star_rounded,
                          color: AppColors.yellow, size: 28),
                      const Icon(Icons.star_outline_rounded,
                          color: AppColors.yellow),
                      const SizedBox(width: 8),
                      Text('4.07',
                          style: textStyleWithDefaultSize(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
            const SizedBox(height: 16),
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(AppImages.cat1),
                          radius: 20,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name01',
                              style:
                              GoogleFonts.notoSansKr(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 100,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      if (index < 4) {
                                        return const Icon(Icons.star_rounded, color: AppColors.yellow, size: 18);
                                      } else {
                                        return const Icon(Icons.star_border_rounded, color: AppColors.yellow, size: 18);
                                      }
                                    },
                                  ),
                                ),
                                const Text('2022.12.09'),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        const SizedBox(width: 10),
                        Image.asset(AppImages.vector),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReviewTag(text: '가격 저렴해요'),
                          ReviewTag(text: 'CPU온도 고온'),
                          ReviewTag(text: '시멀작업 가능해요'),
                          ReviewTag(text: '게임 잘 돌아가요'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.bolt,
                          color: AppColors.navyBlue,
                        ),
                        Expanded(
                          child: Text(
                            '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 \n추천 가능한 제품인 듯 합니다.',
                            style: GoogleFonts.notoSansKr(),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.bolt,
                          color: AppColors.grey2,
                        ),
                        Expanded(
                          child: Text(
                            '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 \n추천 가능한 제품인 듯 합니다.',
                            style: GoogleFonts.notoSansKr(),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0,),
                      child: SizedBox(
                          height: 100,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(image: AssetImage(reviewlist[index]),fit: BoxFit.fill,)
                                  ),
                                ),
                              );
                            },
                            itemCount: reviewlist.length,
                          )),
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    Row(children: [
                      Image.asset(AppImages.msg, width: 28,color: AppColors.grey2,),
                      const Text('댓글 달기..')
                    ],)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


