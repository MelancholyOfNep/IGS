VAR ch1Evidence3 = 0
VAR ch3Evidence1 = 0
-> Intro

==Intro==
Jake` What's up?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Jake` Today just isn't a great day for the carnival...
+ [I can see that. The atmosphere got very dark here.]
    You` This is your first time at a carnival, isn't it?
+   + [(continue)]
        Jake` Who told you that?
+   +   + [I must have heard it through the grapevine. So you've been here before?]
            Jake` Many times. The Ring Master and I go way back.
~ ch1Evidence3 = 1
+   +   +   + [(exit)] -> END

==Interrogate==
+ { ch3Evidence1 == 1} [Amanda's key was stolen.] -> EvidenceA
+ [Never Mind]
    You` I don't have anything to ask him about right now.
+   + [(exit)] -> END

==EvidenceA==
Jake` Oh! That's a real shame. Do you know who did it?
+ [No. Do you?]
    Jake` Nah. I can barely manage handling my own keys. I don't pay attention to anyone else's keys.
+   + [(exit)] -> END
