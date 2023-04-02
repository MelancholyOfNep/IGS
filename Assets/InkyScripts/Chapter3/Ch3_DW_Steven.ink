VAR ch3Evidence1 = 0
VAR ch2Evidence1 = 0
-> Intro

==Intro==
Steven` Yes?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Steven` Do you mind if I ask you something personal?
+ [Sure.]
    Steven` Do you believe in the afterlife?
+   + Yes. -> Choice1
+   + No. -> Choice2
==Choice1==
Player` I'll admit it's a bit weird to think that there's something else out there.
+ [(continue)]
    Player` But at this point I've just accepted that there's room in the world for things that don't make sense.
+   + [(continue)]
        Player` Weird things happen all the time, right? Things we can't always explain.
+   +   + [(continue)]
            Steven` Sometimes it's comforting to think about life after death.
+   +   +   + [It is nice. And maybe something that supernatural can make the weird parts of life make more sense.] -> NEXT
==Choice2==
Player` I can't say I know what happens after death. It's nice to think that those who die still exist in some way.
+ [(continue)]
    Player` But I think that if we make an effort to remember those people and all they left behind, they still exist, you know? They exist through our minds.
+   + [(continue)] -> NEXT

==NEXT==
Steven` I just don't like to think that those people are just gone.
+ [No one goes away forever.]
    Player` Someone will remember them, or something they did. SOme part of them will be left behind. 
+   + [(exit)] -> END

==Interrogate==
+ { ch3Evidence1 == 1} [Amanda's key was stolen.] -> EvidenceA
+ { ch2Evidence1 == 1} [There's a missing knife at the game booths.] -> EvidenceB
+ [Never Mind]
    Player` Maybe I need to find some more evidence...
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

