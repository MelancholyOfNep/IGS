VAR ch1Evidence6 = 0
VAR ch1Evidence4 = 0
-> Intro

==Intro==
Jules` Did you need something?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Jules` This is the most excited I've ever been to go home for the night.
+ [Why's that?]
    Jules` Because wearing this stupid clown costume is humiliating. 
+   + [(continue)]
        Jules` Sure I had some bad days as an acrobat, but at least I looked cool.
+   +   + [Nah, you still look cool.]
            Jules` You're either blind or stupid, kid.
+   +   +   + [I'm pretty sure I'm older than you.] -> END

==Interrogate==
+ { ch1Evidence6 == 1} [Jules heard a gunshot outside the dressing room.] -> EvidenceA
+ { ch1Evidence4 == 1} [Jules was alone in the dressing room during the morning performance.] -> EvidenceB
+ [Never Mind]
    Player` Maybe I need to find some more evidence...
+   + [(exit)] -> END

==EvidenceA==
Jules` This is a gun-free zone. If I heard a gunshot I would be out of here in a blink.
+ [(exit)] -> END

==EvidenceB==
Jules` You serious? I was in the show this morning. Could you imagine firing a nobody clown like me?
+ [(exit)] -> END
