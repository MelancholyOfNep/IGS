-> Intro

==Intro==
Amanda` Hi.
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Amanda` It's a beautiful day outside.
+   [Yeah, over here at least.]
    Amanda` To tell you the truth, the only reason I still take this job is so that I can be outside while I work.
+   +   [Being outside is a plus. Have you ever considered leaving?]
        Amanda` And do what? I don't have any real job experience besides cleaning, and I'd rather do that out here for now.
+   +   +   [You can be honest with me, Amanda. Off the record.]
            Amanda` Well, sure. I've thought about applying for an office job before. People always treat me like I'm worthless.
+   +   +   +   [(continue)]
                Amanda` Yesterday, someone's kid dropped something, and when they went to pick it up, their dad just said: "Don't worry, the janitor will get it."
+   +   +   +   +   [(continue)]
                    Amanda` Some people really don't see me as a person, and that's always sad.
+   +   +   +   +   +   [(continue)]
                        Amanda` But I'm here, I'm outdoors. I even learned some coin magic to entertain the kids.
+   +   +   +   +   +   +   [(continue)]                        
                            Amanda` It's nice.
+   +   +   +   +   +   +   +   [And do you feel safe here?]
                                Amanda` Absolutely. And if I didn't, I have the only set of keys to the janitor's closet. I could always just lock myself in if I needed to.
+   +   +   +   +   +   +   +   +   [(exit)] -> END

==Interrogate==
Amanda` Did you want to ask me something?
+ { ch2Evidence0 } [Lost Key] -> EvidenceC
+ [Never Mind]
    Player` Maybe I need to find some more evidence...
+   + [(exit)] -> END
==EvidenceC==
VAR ch3Evidence1 = 1
Amanda` What is that?
+ [I found this key, is it yours?]
    Amanda` No, my key is in my pocket.
+   + [Oh, well maybe this is a duplicate.]
        Amanda` Impossible. I've never made a duplicate.
+   +   + [Maybe the Ring Master-]
            Amanda` Also impossible. I replaced the lock myself. There's no reason for him to be in there looking through my stuff.
+   +   +   + [I see. But are you sure this isn't your key?]
                Amanda` Well, it does look similar. Very similar. That's odd.
+   +   +   +   + [(continue)]
                    Amanda` Wait!? This is the same key! But, how?
+   +   +   +   +   + [This day is full of surprises, isn't it?]
                        Amanda` She never lost her key before the murder happened. It only makes sense, the murderer stole her key.
~ ch3Evidence1 = 1
+   +   +   +   +   +   + [(exit)] -> END
