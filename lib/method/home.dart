getHomeStory(props) {
  var s = [
    {
      "img":
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/family-background-design-template-29ab2d09ab60b428d95a9a6391b3c5fb_screen.jpg?ts=1625462116",
      'name': "Jon Snow",
      "time": "5m",
    },
    {
      "img":
          "https://thumbs.dreamstime.com/b/happy-family-mother-father-children-son-daughter-sunset-nature-150794881.jpg",
      'name': "Arya Stark",
      "time": "12m",
    },
    {
      "img":
          "https://ca-times.brightspotcdn.com/dims4/default/0813ab4/2147483647/strip/true/crop/2048x1362+0+0/resize/840x559!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fb3%2F5c%2F7b5ee0c0b6fd64aeeec6ad038367%2Fla-et-game-of-thrones-house-stark-through-the-043",
      'name': "Sansa Stark",
      "time": "1h",
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Nikolaj_Coster-Waldau_by_Gage_Skidmore.jpg/110px-Nikolaj_Coster-Waldau_by_Gage_Skidmore.jpg",
      'name': "Jaime Lannister",
      "time": "2h",
    },
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Lena_Headey_Primetime_Emmy_Awards_2014.jpg/110px-Lena_Headey_Primetime_Emmy_Awards_2014.jpg",
      'name': "Cersei Lannister",
      "time": "2h",
    },
  ];

  props.setState(() {
    props.stories = s;
    props.loading = false;
  });
}

getHomeOnlines(props) {
  var s = [
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Sophie_Turner_by_Gage_Skidmore_3.jpg/110px-Sophie_Turner_by_Gage_Skidmore_3.jpg"
    },
    {
      "status": "Offline",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Maisie_Williams_by_Gage_Skidmore_2.jpg/110px-Maisie_Williams_by_Gage_Skidmore_2.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Alfie_Allen_by_Gage_Skidmore_2.jpg/110px-Alfie_Allen_by_Gage_Skidmore_2.jpg"
    },
    {
      "status": "Offline",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Isaac_Hempstead_Wright_by_Gage_Skidmore_3.jpg/110px-Isaac_Hempstead_Wright_by_Gage_Skidmore_3.jpg"
    },
    {
      "status": "Unknown",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Jack_Gleeson_%28August_2012%29_%28headshot%29.jpg/110px-Jack_Gleeson_%28August_2012%29_%28headshot%29.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Peter_Dinklage_by_Gage_Skidmore.jpg/110px-Peter_Dinklage_by_Gage_Skidmore.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Carice_van_Houten_by_Gage_Skidmore.jpg/110px-Carice_van_Houten_by_Gage_Skidmore.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Sibel_Kekilli_January_2015.jpg/110px-Sibel_Kekilli_January_2015.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Natalie_Dormer_2014.jpg/110px-Natalie_Dormer_2014.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Oona_Chaplin_2016.jpg/110px-Oona_Chaplin_2016.jpg"
    },
    {
      "status": "Online",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Gwendoline_Christie_by_Gage_Skidmore.jpg/110px-Gwendoline_Christie_by_Gage_Skidmore.jpg"
    },
  ];

  props.setState(() {
    props.onlines = s;
    props.loading = false;
  });
}

getHomeChats(props) {
  var s = [
    {
      "name": "Jaime Lannister",
      "time": "5:30",
      "totel_msg": "1",
      "last_msg": "Hi How are you",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Sophie_Turner_by_Gage_Skidmore_3.jpg/110px-Sophie_Turner_by_Gage_Skidmore_3.jpg"
    },
    {
      "name": "House of north",
      "time": "4:30",
      "totel_msg": "2",
      "last_msg": "GO to hell",
      "img":
          "https://cf.bstatic.com/xdata/images/hotel/max1024x768/314637309.jpg?k=940139c7a5b5faa5b704c8dbe4b81af3c525458c8914d63e3fee68b3a7bc4eb9&o=&hp=1"
    },
    {
      "name": "Catelyn Stark",
      "time": "10:00",
      "totel_msg": "3",
      "last_msg": "Good Morning",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Maisie_Williams_by_Gage_Skidmore_2.jpg/110px-Maisie_Williams_by_Gage_Skidmore_2.jpg"
    },
    {
      "name": "Cersei Lannister",
      "time": "Yesterday",
      "totel_msg": "",
      "last_msg": "Have a nice day",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Alfie_Allen_by_Gage_Skidmore_2.jpg/110px-Alfie_Allen_by_Gage_Skidmore_2.jpg"
    },
    {
      "name": "Daenerys Targaryen",
      "time": "Yesterday",
      "totel_msg": "10",
      "last_msg": "Happy Onam",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Isaac_Hempstead_Wright_by_Gage_Skidmore_3.jpg/110px-Isaac_Hempstead_Wright_by_Gage_Skidmore_3.jpg"
    },
    {
      "name": "Jorah Mormont",
      "time": "Yesterday",
      "totel_msg": "",
      "last_msg": "Were Are you",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Jack_Gleeson_%28August_2012%29_%28headshot%29.jpg/110px-Jack_Gleeson_%28August_2012%29_%28headshot%29.jpg"
    },
    {
      "name": "Targaryens Home",
      "time": "3 days",
      "totel_msg": "",
      "last_msg": "Come fast",
      "img":
          "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F37%2F2019%2F07%2F17%2Fmodern-home-exterior-gray-scheme-792ab713.jpg"
    },
    {
      "name": "Viserys Targaryen",
      "time": "3 days",
      "totel_msg": "4",
      "last_msg": "Love you baby",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Peter_Dinklage_by_Gage_Skidmore.jpg/110px-Peter_Dinklage_by_Gage_Skidmore.jpg"
    },
    {
      "name": "Jon Snow",
      "time": "3 days",
      "totel_msg": "",
      "last_msg": "Need money",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Carice_van_Houten_by_Gage_Skidmore.jpg/110px-Carice_van_Houten_by_Gage_Skidmore.jpg"
    },
    {
      "name": "Robb Stark",
      "time": "3 days",
      "totel_msg": "",
      "last_msg": "Good bye",
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Sibel_Kekilli_January_2015.jpg/110px-Sibel_Kekilli_January_2015.jpg"
    },
    {
      "name": "Green Home",
      "time": "23 days",
      "totel_msg": "",
      "last_msg": "Were are you Man",
      "img":
          "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F37%2F2021%2F09%2F17%2Fexterior-house-amidst-trees-B-25f1YeaKTBoqHHXymzSw.jpg"
    },
  ];

  props.setState(() {
    props.chats = s;
    props.loading = false;
  });
}
