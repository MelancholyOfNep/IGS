VAR ch3Evidence0 = 0

Player` Hey Tim!
+ [(continue)]
    Tim` Hi journalist! -> Choices
==Choices==
+ [So, have you forgotten your flower before?] -> Choice1
+ [When did you go back to grab your flower?] -> Choice2
==Choice1==
Tim` Ugh, no. I'm still trying to process how that even happened.
+ [It's weird, isn't it?]
    Tim` It's been bothering me all day. How could I forget something I care so much about. -> NEXT
==Choice2==
Tim` Oh, um. I went back right after the morning performance.
+ [You didn't wait until your next performance?]
    Tim` No, I went right away. I could hardly wait. I still can't believe I made that mistake. -> NEXT
==NEXT==
+ [We all make mistakes.]
    Player` Yes, but does that have to include me?
+   + [It includes all of us.]
        Player` So, Tim really did forget their flower, and they would have gone back for it. But They never did go back to the dressing room, where the murder happened.
+   +   + [(continue)]
            Player` They're innocent, too.
~ ch3Evidence0 = 1
+   +   +   + [(exit)] -> END
