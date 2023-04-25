VAR ch2Evidence4 = 0
VAR ch3Evidence1 = 0
-> Intro

==Intro==
Jake` What's up?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Jake` I used to think this sort of place was an escape from the real world.
+ [Wait, I'm confused. How many times have you been here?]
    Jake` I couldn't give you a specific number, but I've come here for years.
+   + [(continue)]
        Jake` Working in a lab is exhausting, especially in my field.
+   +   + [(continue)]
            Jake` I'm supposed to be working on the cutting-edge of medicine, and even when we make something that works, these medical safety people say 'no.'
+   +   +   + [(continue)]
                Jake` And ever time they do, I think about all the people that could die because of their decision.
+   +   +   +   + [(continue)]
                    Jake` When I come here, the last thing I want to think about is death.

~ ch2Evidence4 = 1
+   +   +   +   +   + [(exit)] -> END


==Interrogate==
+ { ch3Evidence1 == 1} [Amanda's key was stolen.] -> EvidenceA
+ [Never Mind]
    You` I have nothing to ask him right now...
+   + [(exit)] -> END

==EvidenceA==
Jake` Oh! That's a real shame. Do you know who did it?
+ [No. Do you?]
    Jake` Nah. I can barely manage handling my own keys. I don't pay attention to anyone else's keys.
+   + [(exit)] -> END