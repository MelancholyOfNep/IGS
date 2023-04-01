-> Intro

==Intro==
Tim` Yes?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Tim` I can't make up my mind. I don't know if I should keep performing or not.
+ [It doesn't matter.]
    Tim` What do you mean?
+   + [We're all stuck here, and we're just going to keep reliving this.] -> END

==Interrogate==
+ { ch3Evidence1 } [Amanda's key was stolen.] -> EvidenceA
+ { ch3Evidence0 } [Tim is innocent.] -> EvidenceB
+ { ch2Evidence3 } [Tim's Flower] -> EvidenceC
+ [Never Mind]
    Player` Maybe I need to find some more evidence...
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
