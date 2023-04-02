VAR ch1Evidence3 = 0
-> Intro

==Intro==
Jake` What's up?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Player` So, have you had a chance to ride that roller coaster yet?
+ [(continue)]
    Jake` I think I might be more of a coward than I thought.
+   + [Me too. This place can be scary at times... Do you go to many other carnivals?]
        Jake` I'm not much of a carnival goer, no. But it's nice here. Maybe I'll come back sometime.
+   +   + [Right, and you're sure you've never been before?]
            Jake` I think I would remember being here, wouldn't I?
+   +   +   + [(exit)] -> END

==Interrogate==
+ { ch1Evidence3 == 1} [Jake's memory of attending the carnival was erased.] -> EvidenceA
+ [Never Mind]
    Player` Maybe I need to find some more evidence...
+   + [(exit)] -> END

==EvidenceA==
Jake` What's that supposed to mean? I think I'd remember coming here.
+ [(exit)] -> END
