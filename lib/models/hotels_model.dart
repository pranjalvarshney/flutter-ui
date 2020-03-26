class Hotels{
  String imgUrl;
  String name;
  String address;
  int price;

  Hotels({this.price,this.name,this.imgUrl,this.address});  

}

 final List<Hotels> hotels = [
  Hotels(
    imgUrl: 'assets/images/hotel1',
    name: "The Verticals",
    address: "404 Great Wings",
    price: 179
    ),
  Hotels(
    imgUrl: 'assets/images/hotel2',
    name: "The Verticals",
    address: "404 Great Wings",
    price: 179
  ),  
  Hotels(
    imgUrl: 'assets/images/hotel3',
    name: "The Verticals",
    address: "404 Great Wings",
    price: 179
    ), 
  Hotels(
    imgUrl: 'assets/images/hotel4',
    name: "The Verticals",
    address: "404 Great Wings",
    price: 179
    ), 
 ];