VAR ch1Evidence3 = 0

-> Intro

==Intro==
Jake` Today just isn't a great day for the carnival...
+ [I can see that. The atmosphere got very dark here.]
    Player` This is your first time at a carnival, isn't it?
+   + [(continue)]
        Jake` Who told you that?
+   +   + [I must have heard it through the grapevine. So you've been here before?]
            Many times. The Ring Master and I go way back.
~ ch1Evidence3 = 1
+   +   +   + [(exit)] -> END
