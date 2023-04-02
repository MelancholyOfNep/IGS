VAR ch2Evidence5 = 0
VAR ch2Evidence2 = 0
VAR ch2Evidence0 = 0
-> Intro

==Intro==
Amanda` Hi.
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Amanda` Did you figure anything else out?
+ [Yeah, it was Jake.]
    Amanda` What!? Jake has always been so nice.
+   + [Has he?]
        Amanda` Well, no, but I wouldn't expect him to be a murderer.
+   +   + [Yeah.]
            Amanda` So this is good, right? We figured it out.
+   +   +   + [Yeah, but I can't fix this world...] -> END

==Interrogate==
Amanda` Did you want to ask me something?
+ { ch2Evidence5 == 1} [Blood Splatter outside Dressing Room.] -> EvidenceA
+ { ch2Evidence2 == 1} [Gun in Janitor's Closet.] -> EvidenceB
+ { ch2Evidence0 == 1} [Lost Key] -> EvidenceC
+ [Never Mind]
    Player` Maybe I need to find some more evidence...
+   + [(exit)] -> END

==EvidenceA==
Amanda` What do you mean there's blood outside the dressing rooms?
+ [I think that's where the murder happened.]
    Amanda` I don't have to clean that, do I?
+   + [You don't have to do a thing. I just wanted to know if you had been around there earlier.]
        Amanda` Like, this morning?
+   +   + [Yes, I want to know if the blood is fresh or not.]
            Amanda` Oh, right. I did make a roung over there this morning.
+   +   +   + [(continue)]
                Amanda` I... I don't remember seeing any blood, though.
+   +   +   +   + [Thank you, that's all I need to know.]
                    Player` That must mean the murder happened there. The murderer must have moved the body... for some reason.
+   +   +   +   +   + [(exit)] -> END

==EvidenceB==
VAR ch2Evidence6 = 0
Amanda` Oh my! That's not mine.
+ [How should I know?]
    Amanda` I carry brooms, not guns! How should I know it's not yours?
+   + [I wasn't even here at the time of the murder.]
        Amanda` Right, yeah. I trust you. Do you trust me?
+   +   + [I do, Amanda.]
            Player` If the gun was found in your closet, the person who put it there would need that key. 
+   +   +   + [(continue)]
                Player` Amanda, you didn't have your key. You're innocent. It's proven now.
+   +   +   +   + [(continue)]
                    Amanda` Oh, thank you!
~ ch2Evidence6 = 1
+   +   +   +   +   + [(exit)] -> END

==EvidenceC==
Amanda` Oh thank god, you found it!
+ [Yeah, it was over by the dressing rooms.]
    Amanda` I thought it was gone forever. Can we go open the janitor closet?
+   + [Sure.] -> END