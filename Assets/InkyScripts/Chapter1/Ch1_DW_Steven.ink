VAR ch1Evidence0 = 0
VAR ch3Evidence1 = 0
VAR ch2Evidence1 = 0
-> Intro

==Intro==
Steven` Yes?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Player` Steven! What's going on?
+   [(continue)]
    Steven` Do I know you?
+   +   [Yeah, I'm-]
        Steven` The police?
+   +   +   [... Yes. What's going on? Do you not remember me?]
            Steven` Are you the one I talked to on the phone?
+   +   +   +   [I mean... we talked on the phone a while ago, I think.]
                Steven` Yeah, we've been waiting for you for hours.
+   +   +   +   +   [Hours? What's going on?]
                    Steven` The Ring Master-
+   +   +   +   +   +   [(continue)]
                        Steven` I don't want to talk about it.
+   +   +   +   +   +   +   [Aren't you the Ring Master?]
                            Steven` Junior Ring Master. Reginald was the Head Ring Master, but he was... He's gone now.
~ch1Evidence0 = 1
+   +   +   +   +   +   +   +   [There was another Ring Master? I don't remember a Reginald. (exit)] -> END

==Interrogate==
+ { ch3Evidence1 == 1} [Amanda's key was stolen.] -> EvidenceA
+ { ch2Evidence1 == 1} [There's a missing knife at the game booths.] -> EvidenceB
+ [Never Mind]
    Player` I don't think I have anything to ask him about right now...
+   + [(exit)] -> END

==EvidenceA==
Steven` Oh, that's a shame. I don't have a spare...
+ [(exit)] -> END

==EvidenceB==
Steven` Yes, I know.
+ [What do you mean?]
    Steven` The knife is in my pocket right now.
+   + [Oh! Uh, great...]
        Steven` Don't worry, it's not the murder weapon.
+   +   + [How do you know?]
            Steven` Because I stole it after the murder happened.
+   +   +   + [(continue)]
                Steven` Well, I guess I didn't steal it since I own the place now.
+   +   +   +   + [(continue)]
                    Steven` But someone murdered my boss, a little bit of self-protection seemed justified.
+   +   +   +   +   + [(exit)] -> END
