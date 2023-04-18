VAR ch3Evidence1 = 0
VAR ch2Evidence1 = 0
-> Intro

==Intro==
Steven` Yes?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
You` You deserve to know who murdered Reginald.
+ [(continue)]
    Steven` Yeah, I do. But I don't think we'll ever figure it out.
+   + [It was Jake.]
        Steven` What? Jake? But they were, like, friends.
+   +   + [I know. But it was Jake.]
            You` I'm sorry I don't have anything else to say. I can't save you.
+   +   +   + [(continue)]
                Steven` And you don't have to.
+   +   +   +   + [(exit)] -> END

==Interrogate==
+ { ch3Evidence1 == 1} [Amanda's key was stolen.] -> EvidenceA
+ { ch2Evidence1 == 1} [There's a missing knife at the game booths.] -> EvidenceB
+ [Never Mind]
    You` I think I know everything I need to know. I just need a find a way out...
+   + [(exit)] -> END

==EvidenceA==
Steven` Oh, that's a shame. I don't have a spare...
+ [(exit)] -> END

==EvidenceB==
Steven` Yes, I know.
+ [What do you mean?]
    Steven` The knife is in my pocket right now.
+   + [Oh! Uh, great...]
        Steven` Don't worry, it's not the murder weapon.
+   +   + [How do you know?]
            Steven` Because I stole it after the murder happened.
+   +   +   + [(continue)]
                Steven` Well, I guess I didn't steal it since I own the place now.
+   +   +   +   + [(continue)]
                    Steven` But someone murdered my boss, a little bit of self-protection seemed justified.
+   +   +   +   +   + [(exit)] -> END