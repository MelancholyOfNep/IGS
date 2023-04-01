-> Intro

==Intro==
Sam` How's it going?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Sam` I could really go for a nap right now.
+ [Did you ever worry about your kid, riding that roller coater all day?]
    Sam` Not at all. She enjoys it, and it gives me a bit of a rest, too.
+   + [(continue)]
        Sam` But I mean, she loves that roller coaster so much she would probably love to become a roller coaster herself.
+   +   + [That's not funny.]
            Sam` I think I stopped being funny when I became a parent. -> END
            
==Interrogate==
+ { ch1Evidence2 } [Bethany amalgamized with a roller coaster.] -> EvidenceB
+ [Never Mind]
    Player` Maybe I need to find some more evidence...
+   + [(exit)] -> END

==EvidenceB==
Sam` Well, she does love riding that roller coaster.
+ [(exit)] -> END
