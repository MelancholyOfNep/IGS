VAR ch1Evidence6 = 0
VAR ch1Evidence4 = 0
-> Intro

==Intro==
Jules` Did you need something?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Player` So, would you rather be a clown or be fired?
+   [(continue)]
    Jules` That's your leading question?
+   +   [Right, sorry. That's inappropriate of me. What I mean to ask is have you considered leaving if you have to be a clown?]
        Jules` Hmph... No.
+   +   +   [Why not?]
            Jules` Because as long as I'm still here my leg can heal. Maybe I can be an acrobat again.
+   +   +   +   [Did you and Tim ever have a chance to perform together?]
                Jules` How do you think I broke my leg? They dropped me.
+   +   +   +   +   [They DROPPED you?]
                    Jules` No, not really. That's just a joke. See? I can be funny, too.
+   +   +   +   +   +   [Like a clown?]
                        Jules` Is that your idea of a joke?
+   +   +   +   +   +   +   [I guess I'm not very funny. (exit)] -> END

==Interrogate==
+ { ch1Evidence6 == 1} [Jules heard a gunshot outside the dressing room.] -> EvidenceA
+ { ch1Evidence4 == 1} [Jules was alone in the dressing room during the morning performance.] -> EvidenceB
+ [Never Mind]
    Player` I wonder where they were at the time of the murder...
+   + [(exit)] -> END

==EvidenceA==
Jules` This is a gun-free zone. If I heard a gunshot I would be out of here in a blink.
+ [(exit)] -> END

==EvidenceB==
Jules` You serious? I was in the show this morning. Could you imagine firing a nobody clown like me?
+ [(exit)] -> END
