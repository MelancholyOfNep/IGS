VAR ch1Evidence1 = 0
VAR ch3Evidence1 = 0
VAR ch3Evidence0 = 0
VAR ch2Evidence3 = 0
-> Intro

==Intro==
Tim` Yes?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Tim` Please don't come near me.
+   [Ok. Are you okay?]
    Tim` I don't know.
+   +   [Yeah, I get that.] -> Choices

==Choices==
(What should I ask them?)
+   [Do you remember me?]
    -> Choice1
    
+   [You're the acrobat, right?]
    -> Choice2
    
==Choice1==
Tim` I-I don't think we've ever met.
+   [Right. Well, I promise I won't hurt you. I just want to figure out what's going on.] -> Outro

==Choice2==
Tim` Y-yeah. How did you know?
+   [Intuition, or something. Something very bad happened.]
    Tim` I know.
+   +   [(continue)]-> Outro

==Outro==
Tim` The Ring Master is dead.
+   [Dead?]
    Tim` Murdered.
+   +   [(continue)]
        Tim` His body was found in the Circus Tent after our morning performance.

~ch1Evidence1 = 1
+   +   +   [When?]
            Tim` I- I don't know. Today just feels cursed.
+   +   +   +   [(exit)] -> END

==Interrogate==
+ { ch3Evidence1 == 1} [Amanda's key was stolen.] -> EvidenceA
+ { ch3Evidence0 == 1} [Tim is innocent.] -> EvidenceB
+ { ch2Evidence3 == 1} [Tim's Flower] -> EvidenceC
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
