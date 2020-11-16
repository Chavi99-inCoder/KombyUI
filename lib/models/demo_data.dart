
class Category {
  String name;
  String icon;
  String imageUrl;
  List<lists> list;

  Category({
    this.name,
    this.icon,
    this.imageUrl,
    this.list,
  });
}

class lists {
  String imageUrl;
  String name;
  String auther;
  String date;
  String description;
  String autherImg;

  lists({
    this.imageUrl,
    this.name,
    this.description,
    this.auther,
    this.date,
    this.autherImg,

  });
}

class others {
  String imageUrl;
  String name;

  others({
    this.imageUrl,
    this.name,

  });
}

List<Category> categories = [
  Category(
      name: 'IOS',
      imageUrl: 'assets/images/ios_cat.webp',
      list: ios_list,
  ),
  Category(
      name: 'Android',
      imageUrl: 'assets/images/android_cat.jpg',
      list: android_list,
  ),
];

List<lists> android_list = [
  lists(
      name: 'android 1',
      imageUrl: 'assets/images/img1.jpg',
      description: 'The mobile phone is stimulating one of the most important technological revolutions in human history. This article first presents impacts, challenges, and predictions of mobile phone use. It first indicates that the impact of the mobile phone on society has been predominantly positive while the mobile phone has certain negative attributes. It then discusses multiple ways to overcome mobile technology challenges (e.g., new radio technologies and specialized devices optimized for medical, educational, or “Internet of things” applications). The authors predict that, in the two or three more generations, mobile phones use will have exciting advances to achieve the full benefits, especially in the area of healthcare, education, industry, daily life, learning, and collaborations, which will be more effective, productive, and creative.',
      auther: 'Taylor Swift',
      date: '2019.01.01',
      autherImg: 'assets/images/profile.JPG'

  ),
  lists(
      name: 'android 2',
      imageUrl: 'assets/images/img2.jpg',
      description: 'The mobile phone is stimulating one of the most important technological revolutions in human history. This article first presents impacts, challenges, and predictions of mobile phone use. It first indicates that the impact of the mobile phone on society has been predominantly positive while the mobile phone has certain negative attributes. It then discusses multiple ways to overcome mobile technology challenges (e.g., new radio technologies and specialized devices optimized for medical, educational, or “Internet of things” applications). The authors predict that, in the two or three more generations, mobile phones use will have exciting advances to achieve the full benefits, especially in the area of healthcare, education, industry, daily life, learning, and collaborations, which will be more effective, productive, and creative.',
      auther: 'Taylor Swift',
      date: '2019.01.01',
      autherImg: 'assets/images/profile.JPG'

  ),
  lists(
      name: 'android 3',
      imageUrl: 'assets/images/img3.jpg',
      description: 'The mobile phone is stimulating one of the most important technological revolutions in human history. This article first presents impacts, challenges, and predictions of mobile phone use. It first indicates that the impact of the mobile phone on society has been predominantly positive while the mobile phone has certain negative attributes. It then discusses multiple ways to overcome mobile technology challenges (e.g., new radio technologies and specialized devices optimized for medical, educational, or “Internet of things” applications). The authors predict that, in the two or three more generations, mobile phones use will have exciting advances to achieve the full benefits, especially in the area of healthcare, education, industry, daily life, learning, and collaborations, which will be more effective, productive, and creative.',
      auther: 'Taylor Swift',
      date: '2019.01.01',
      autherImg: 'assets/images/profile.JPG'

  ),
];

List<lists> ios_list = [
  lists(
      name: 'ios 1',
      imageUrl: 'assets/images/img1.jpg',
      description: 'The mobile phone is stimulating one of the most important technological revolutions in human history. This article first presents impacts, challenges, and predictions of mobile phone use. It first indicates that the impact of the mobile phone on society has been predominantly positive while the mobile phone has certain negative attributes. It then discusses multiple ways to overcome mobile technology challenges (e.g., new radio technologies and specialized devices optimized for medical, educational, or “Internet of things” applications). The authors predict that, in the two or three more generations, mobile phones use will have exciting advances to achieve the full benefits, especially in the area of healthcare, education, industry, daily life, learning, and collaborations, which will be more effective, productive, and creative.',
      auther: 'Taylor Swift',
      date: '2019.01.01',
      autherImg: 'assets/images/profile.JPG'

  ),
  lists(
      name: 'ios 2',
      imageUrl: 'assets/images/img2.jpg',
      description: 'The mobile phone is stimulating one of the most important technological revolutions in human history. This article first presents impacts, challenges, and predictions of mobile phone use. It first indicates that the impact of the mobile phone on society has been predominantly positive while the mobile phone has certain negative attributes. It then discusses multiple ways to overcome mobile technology challenges (e.g., new radio technologies and specialized devices optimized for medical, educational, or “Internet of things” applications). The authors predict that, in the two or three more generations, mobile phones use will have exciting advances to achieve the full benefits, especially in the area of healthcare, education, industry, daily life, learning, and collaborations, which will be more effective, productive, and creative.',
      auther: 'Taylor Swift',
      date: '2019.01.01',
      autherImg: 'assets/images/profile.JPG'

  ),
  lists(
      name: 'ios 3',
      imageUrl: 'assets/images/img3.jpg',
      description: 'The mobile phone is stimulating one of the most important technological revolutions in human history. This article first presents impacts, challenges, and predictions of mobile phone use. It first indicates that the impact of the mobile phone on society has been predominantly positive while the mobile phone has certain negative attributes. It then discusses multiple ways to overcome mobile technology challenges (e.g., new radio technologies and specialized devices optimized for medical, educational, or “Internet of things” applications). The authors predict that, in the two or three more generations, mobile phones use will have exciting advances to achieve the full benefits, especially in the area of healthcare, education, industry, daily life, learning, and collaborations, which will be more effective, productive, and creative.',
      auther: 'Taylor Swift',
      date: '2019.01.01',
      autherImg: 'assets/images/profile.JPG'

  ),
];

List<others> other_list = [
  others(
    name: 'Articles 1',
    imageUrl: 'assets/images/img1.jpg',
  ),
  others(
    name: 'Articles 2',
    imageUrl: 'assets/images/img2.jpg',
  ),
  others(
    name: 'Articles 3',
    imageUrl: 'assets/images/img3.jpg',
  ),
  others(
    name: 'Articles 4',
    imageUrl: 'assets/images/img4.jpg',
  ),
  others(
    name: 'Articles 5',
    imageUrl: 'assets/images/img5.jpg',
  ),
];


class ImageData{
  final String img;

  ImageData({
    this.img,
  });
}
List<ImageData> imageList = [
  ImageData(
    img: 'assets/images/img1.jpg',
  ),
  ImageData(
    img: 'assets/images/img2.jpg',
  ),
  ImageData(
    img: 'assets/images/img3.jpg',
  ),
  ImageData(
    img: 'assets/images/img4.jpg',
  ),
  ImageData(
    img: 'assets/images/img5.jpg',
  ),
  ImageData(
    img: 'assets/images/img1.jpg',
  ),
  ImageData(
    img: 'assets/images/img2.jpg',
  ),
  ImageData(
    img: 'assets/images/img3.jpg',
  ),
];