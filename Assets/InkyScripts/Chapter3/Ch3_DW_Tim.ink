VAR ch3Evidence1 = 0
VAR ch3Evidence0 = 0
VAR ch2Evidence3 = 0
-> Intro

==Intro==
Tim` Yes?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Tim` I don't think I want to perform again.
+ [What? But you love performing!]
    Tim` I know. And I do love it, I really do! But now I'm not sure I'll be able to separate my performance from death.
+   + [I see...]
        Tim` But don't worry. I'm not making any life-changing decisions just yet.
+   +   + [(continue)]
            Tim` I need some space to think before I do.
+   +   +   + [That's a good idea.]
                You` Just don't let something sad get in the way of doing what you want to do.
+   +   +   +   + [(exit)] -> END

==Interrogate==
+ { ch3Evidence1 == 1} [Amanda's key was stolen.] -> EvidenceA
+ { ch3Evidence0 == 1} [Tim is innocent.] -> EvidenceB
+ { ch2Evidence3 == 1} [Tim's Flower] -> EvidenceC
+ [Never Mind]
    You` Maybe I need to find some more evidence...
+   + [(exit)] -> END

==EvidenceA==
Tim` That's a shame.
+ [Do you know who did it?]
    Tim` I'm so sorry I don't know.
+   + [(exit)] -> END

==EvidenceB==
Tim` Do you see me as the murdering type?
+ [No, I see you as an acrobat.]
    Tim` A murdering acrobat?
+   + [I never thought you were guilty. I mean to say that I can now definitively say you absolutely did not murder the Ring Master.]
        Tim` I guess that's a good thing.
+   +   + [I'm sorry, I realize it's a bit of a weird thing.]
            Tim` No no, it's okay. I appreciate all your hard work.
+   +   +   + [(continue)]
                Tim` I'm just a bit nervous and upset.
+   +   +   +   + [I understand. (exit)] -> END

==EvidenceC==
VAR ch2Evidence7 = 0
Tim` Oh, yes, there it is.
+ [You forgot this this morning, right?]
    Tim` Right, I haven't been back there since this morning. I'd rather stay in the open where people can see me if I'm attacked.
+   + [I understand. Would you like it back?]
        Tim` Honestly? Not right now. I don't want to think about performing right now.
~ ch2Evidence7 = 1
+   +   + [(exit)] -> END