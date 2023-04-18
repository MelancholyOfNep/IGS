VAR ch2Evidence5 = 0
VAR ch2Evidence2 = 0
VAR ch2Evidence0 = 0
-> Intro

==Intro==
Amanda` Hi.
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Amanda` I think I need a career change.
+ [(continue)]
    Amanda` This is just... too much.

-> Choices

==Choices==
+ [Do they not treat you well?]
    Amanda` God no. He didn't. But that hardly matters anymore.
+   + [What do you mean?]
        Amanda` The Ring Master is dead.
+   +   + [what?] -> NEXT
+ [Did something happen?]
    Amanda` Yeah, something happening. The Ring Master was murdered. 
+   +   [what?] -> NEXT

==NEXT==
Amanda` I don't know how it happened, but this is basically the last place I want to be right now.
+ [How did it happen so fast?]
    Amanda` I don't know, but it feels so uncomfortable not knowing if I can trust anyone.
+   + [(exit)] -> END

==Interrogate==
Amanda` Did you want to ask me something?
+ { ch2Evidence5 == 1} [Blood Splatter outside Dressing Room.] -> EvidenceA
+ { ch2Evidence2 == 1} [Gun in Janitor's Closet.] -> EvidenceB
+ { ch2Evidence0 == 1} [Lost Key] -> EvidenceC
+ [Never Mind]
    You` I don't have anything to ask her about right now...
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
                    You` That must mean the murder happened there. The murderer must have moved the body... for some reason.
+   +   +   +   +   + [(exit)] -> END

==EvidenceB==
VAR ch2Evidence6 = 0
Amanda` Oh my! That's not mine.
+ [How should I know?]
    Amanda` I carry brooms, not guns! How should I know it's not yours?
+   + [I wasn't even here at the time of the murder.]
        Amanda` Right, yeah. I trust you. Do you trust me?
+   +   + [I do, Amanda.]
            You` If the gun was found in your closet, the person who put it there would need that key. 
+   +   +   + [(continue)]
                You` Amanda, you didn't have your key. You're innocent. It's proven now.
+   +   +   +   + [(continue)]
                    Amanda` Oh, thank you!
~ ch2Evidence6 = 1
+   +   +   +   +   + [(exit)] -> END

==EvidenceC==
Amanda` Oh thank god, you found it!
+ [Yeah, it was over by the dressing rooms.]
    Amanda` I thought it was gone forever. Can we go open the janitor closet?
+   + [Sure.] -> END
