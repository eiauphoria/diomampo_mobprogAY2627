# Mobile Programming (AY 2026–2027)

# Lab Activity 1: 

Question: Discuss how you integrate the Image to the `newsfeed_card.dart` and make it dynamic whether it has image or not.

Answer:
To integrate an image dynamically into `newsfeed_card.dart`, I added an optional/nullable `String?` parameter (such as `postImage` or `imageUrl`) in the widget's constructor. This allows a post to be created either with an image path/URL or without one (`null` or empty string).

Inside the `build` method of `newsfeed_card.dart`, I used conditional rendering (such as an `if` statement inside the `Column`'s `children` list or a ternary operator) to check if the image parameter is not null and not empty (`postImage != null && postImage!.isNotEmpty`). When an image is provided, the widget renders the `Image.asset()` or `Image.network()` widget cleanly inside the card layout. When no image is passed, the image widget is omitted completely so there are no runtime null errors, broken image placeholders, or unnecessary empty spaces in the newsfeed card.

# Lab Activity 2: 

Question: Discuss how you manage to do the posts and the notification efficiently. Also, how you’ve accomplished the enhancement states the challenges and how you address them 

Answer:
I managed the posts and notifications efficiently by storing post details such as the author, date, text, like count, image path, and profile image in widget constructor values. Each screen builds its list from these values, so updating the content does not require changing the layout code. For notifications, I used a reusable `NotificationWidget` and supplied a name, post title, and description to every item. This keeps the notification list dynamic and scrollable.

The main challenges were keeping the layout consistent across different screen sizes and making optional post elements render safely. I addressed these by using `flutter_screenutil`, conditional image rendering, and separate reusable widgets for posts and notifications. The like, comment, page navigation, and notification lists are managed with stateful widgets and a `PageController`.
