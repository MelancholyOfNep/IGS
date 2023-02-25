#name Player
Hey Tim!

#name Tim
Hi journalist!

-> Choices

==Choices==
+ So, have you forgotten your flower before?
    -> Choice1
+ When did you go back to grab your flower?
    -> Choice2
    
==Choice1==
#name Tim
Ugh, no. I'm still trying to process how that even happened.

#name Player
It's weird, isn't it?

#name Tim
It's been boethering me all day. How could I forget something I care so much about.

-> DONE

==Choice2==
#name Tim
Oh, um. I went back right after the morning performance.

#name Player
You didn't wait until your next performance?

#name Tim
No, I went right away. I could hardly wait. I still can't believe I made that mistake.

-> DONE

==DONE==
#name Player
We all make mistakes.

#name Tim
Yes, but does that have to include me?

#name Player
It includes all of us.
#name Player
So, Tim really did forget his flower, and he would have gone back for it. But he never did go back to the dressing room, where the murder happened.
#name Player
He's innocent, too.

VAR ch3Evidence0 = 1

-> END
