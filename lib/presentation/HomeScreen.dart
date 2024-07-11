import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temp/widgets/CustomBottomNavBar.dart';
import 'package:temp/common/assets.dart';
import 'package:temp/common/colors.dart';
import 'package:temp/model/product.dart';

import 'ProfileScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selectedIndex=0;
  List<String> images = [
    AppImages.cat1,
    AppImages.cat2,
    AppImages.cat3,
    AppImages.cat4,
    AppImages.cat5
  ];
  List<BannerModel> listBanners = [
    BannerModel(imagePath: AppImages.banner1, id: "1"),
    BannerModel(imagePath: AppImages.banner2, id: "2"),
    BannerModel(imagePath: AppImages.banner3, id: "3"),
    BannerModel(imagePath: AppImages.banner4, id: "4"),
  ];
  static const List<String> crowns = [
    'assets/images/crown1.png',
    'assets/images/crown2.png',
    'assets/images/crown3.png',
  ];
  var productList = [
    Product(
        image: AppImages.product1,
        title: 'LG전자 스탠바이미 27ART10AKPL (스탠',
        subtitle1:
            '화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.',
        subtitle2: '스탠바이미는 사랑입니다!️',
        rating: '4.89 ',
        review: '(216)'),
    Product(
        image: AppImages.product3,
        title: 'LG전자  울트라HD 75UP8300KNA (스탠드)',
        subtitle1: '화면 잘 나오고... 리모컨 기능 좋습니다.',
        subtitle2:
            '넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!',
        rating: '4.36 ',
        review: '(136)'),
    Product(
        image: AppImages.product2,
        title: '라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
        subtitle1: '반응속도 및 화질이나 여러면에서도 부족함을  느끼기에는 커녕 이정도에 이 정도 성능이면차고 넘칠만 합니다',
        subtitle2:
        '중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고',
        rating: '3.98 ',
        review: '(98)')
  ];

  TextStyle textStyleWithDefaultSize(
      {double? fontSize, FontWeight? fontWeight, Color? color}) {
    return GoogleFonts.notoSansKr(
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.grey.withOpacity(0.3),
        title: const Text(
          "LOGO",
          style: TextStyle(
              color: AppColors.purple,
              fontWeight: FontWeight.w500,
              fontSize: 24),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                height: 40,
                padding: const EdgeInsets.all(2),
                // padding to show gradient border
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: const LinearGradient(
                    colors: [AppColors.darkBlue, AppColors.blue],
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    // slightly smaller than outer container
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '검색어를 입력하세요',
                      suffixIcon: Image.asset(AppImages.searchIcon),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            BannerCarousel(
                activeColor: Colors.white,
                margin: EdgeInsets.zero,
                banners: listBanners,
                height: 280,
                indicatorBottom: false),
            Container(
              height: 580,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('제일 핫한 리뷰를 만나보세요',
                                style: textStyleWithDefaultSize(
                                    fontSize: 13, color: AppColors.grey2)),
                            Text(
                              '리뷰️  랭킹⭐ top 3',
                              style: textStyleWithDefaultSize(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 160,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.lightGrey,
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: SizedBox(
                                        width: 130,
                                        height: 180,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Image.asset(crowns[index]),
                                              Image.asset(
                                                  productList[index].image!),
                                            ],
                                          ),
                                        ),
                                      )),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    SizedBox(
                                        width: 230,
                                        child: Text(
                                          productList[index].title!,
                                          style: textStyleWithDefaultSize(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '\u2022',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        SizedBox(
                                            width: 220,
                                            child: Text(
                                              productList[index].subtitle1!,
                                              overflow: TextOverflow.ellipsis,
                                            )),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '\u2022',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        SizedBox(
                                          width: 220,
                                          child: Text(
                                            productList[index].subtitle2!,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star_rounded,
                                          color: AppColors.yellow,
                                        ),
                                        Text(productList[index].rating!,
                                            style: textStyleWithDefaultSize(
                                                color: AppColors.yellow,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700)),
                                        Text(productList[index].review!,
                                            style: textStyleWithDefaultSize(
                                                color: AppColors.lightGrey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700))
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                              color: AppColors.lightbgGrey,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 4),
                                            child: const Text('LG전자')),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                            decoration: BoxDecoration(
                                              color: AppColors.lightbgGrey,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 4),
                                            child: const Text('편리성')),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                        itemCount: productList.length,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: AppColors.lightbgGrey,
              width: double.infinity,
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              width: double.infinity,
              height: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('골드 계급 사용자들이예요', style: textStyleWithDefaultSize()),
                  Text('베스트 리뷰어 🏆 Top10',
                      style: GoogleFonts.notoSansKr(
                          fontSize: 18, fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 166,
                    child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 20,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: (){
                            setState(() {
                              selectedIndex = index;
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Profile(image: images[index],name: 'Name ${index+1}',),
                              ));
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    selectedIndex ==index?Image.asset(AppImages.crown):Container(height: 16,),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: selectedIndex == index
                                            ? Border.all(
                                                color: AppColors.yellow,
                                                width: 6.0,
                                              )
                                            : null,
                                        // Apply border only to the first item
                                        image: DecorationImage(
                                          image: AssetImage(images[index]),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text('Name ${index + 1}',
                                    style: GoogleFonts.notoSansKr(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.grey2))
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: images.length,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('LOGO Inc.',style: textStyleWithDefaultSize(color: AppColors.bgGray),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('회사 소개 ',
                            style: textStyleWithDefaultSize(fontSize: 14, color: AppColors.bgGray)),
                        const Text('|'),
                        Text('인재 채용',
                            style: textStyleWithDefaultSize(fontSize: 14, color: AppColors.bgGray)),
                        const Text('|'),
                        Text('기술 블로그',
                            style: textStyleWithDefaultSize(fontSize: 14, color: AppColors.bgGray)),
                        const Text('|'),
                        Text(
                          '리뷰 저작권',
                          style: textStyleWithDefaultSize(fontSize: 14, color: AppColors.bgGray),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.send_rounded,
                          color: AppColors.demiGrey,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'review@logo.com',
                          style: textStyleWithDefaultSize(fontSize: 14, color: AppColors.bgGray),
                        ),
                        Spacer(),
                        Container(
                          height: 25,
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                                color: AppColors.grey2, style: BorderStyle.solid, width: 0.80),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(iconDisabledColor: AppColors.grey2,
                              items: <String>['KOR']
                                  .map((value) => DropdownMenuItem(
                                value: value,
                                child: Text(value, style: textStyleWithDefaultSize(color: AppColors.grey2),),
                              ))
                                  .toList(),
                              onChanged: ( value) {},
                              isExpanded: false,
                              value: 'KOR',
                            ),
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      color: AppColors.demiGrey,
                    ),
                    Text('@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구',
                        style: textStyleWithDefaultSize(fontSize: 14, color: AppColors.bgGray)),
                    const SizedBox(
                      height: 0,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(currentIndex: 0, onTap: (int){})
    );
  }
}
