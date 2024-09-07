class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Seamless Shopping Experience',
      image: 'assests/onboardimg1.png',
      discription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt"),
  UnbordingContent(
      title: 'Wishlist: Where Fashion Dreams Begin',
      image: 'assests/onboardimg2.png',
      discription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt"),
  UnbordingContent(
      title: ' Swift And Reliable \n Delivery ',
      image: 'assests/onboardimg3.png',
      discription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt"),
];
