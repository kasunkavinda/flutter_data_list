class Quote {
  String text;
  String author;

  //constructor is the thing that actually takes the values in when we instanciate the class
  //it sets the text. it sets the author

  //one way of doing it
  Quote(String text, String author) {
    //this.text means the text inside the class is equal to the text that is coming inside the paranthesis.
    this.text = text;
    this.author = author;
  }

  //another way of doing it - named parameters
  //Quote({String text, String author});
  //this.text means the text inside the class is equal to the text that is coming inside the paranthesis.

}

//this is how we are going to use this implementation--
//Quote myQuote = Quote('this is the quote', 'shakespier');

//this is how we are going to use this implementation--if its named parameters
//Quote myQuote = Quote(author: 'this is the quote', text:'shakespier');
