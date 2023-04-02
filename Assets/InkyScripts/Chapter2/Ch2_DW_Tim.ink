VAR ch3Evidence1 = 0
VAR ch3Evidence0 = 0
VAR ch2Evidence3 = 0
-> Intro

==Intro==
Tim` Yes?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Tim` I just can't imagine anyone who would do something like this.
+ [It's unimaginable.]
    Tim` It is. And everyone here is like a friend. I feel like I would be betraying them to think of them as murderers. -> Choices

==Choices==
+ [Is there anyone you get along with well?] -> Choice1
+ [Is there anyone you don't get along with?] -> Choice2
    
==Choice1==
Tim` Well, sure. All of the acrobats. Even Jules. I still think of them as one of the acrobats.
+ [That's a nice sentiment.] -> NEXT

==Choice2==
Tim` Oh dear, I couldn't possibly- Well, I suppose some of the customers can be mean sometimes.
+ [(continue)]
    Tim` But all the employees have been so lovely.
+   + [What about Jules? How have you gotten along with them?] -> NEXT

==NEXT==
Tim` I've been worried about them ever since the accident yesterday. 
+ [(continue)]
    Tim` They used to be so happy, but they haven't been so happy since then.
+   + [(continue)]
        Tim` I even offered them flowers once, but I don't think it helped.
+   +   + [(exit)] -> END

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
