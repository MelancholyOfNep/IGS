-> Intro

==Intro==
Amanda` Hi.
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Amanda` Normally I would hide in my closet, but I can't seem to find the key.
+ [You mean you lost your key?]
    Amanda` I mean... Maybe. I never lose my keys but I'd be willing to beleive just about anything today.
+   + [(continue)]
        Amanda` But do you mind if I theorize a bit?
+   +   + [Please, you're more than welcome to theorize with me.]
            Player` But are you at all concerned about theorizing with a stranger?
+   +   +   + [(continue)]
                Player` I mean, you only met me today. You don't actually know me.
+   +   +   +   + [(continue)]
                    Amanda` You're right, it is stupid, isn't it? But sometimes it's nice to just trust in something without really thinking about it?
+   +   +   +   +   + [(continue)]
                        Amanda` At this point, I feel like I should be dead, but I'm not. So if I die because I trusted someone I shouldn't have, then it's like that was supposed to have already happened anyway, right?
+   +   +   +   +   +   + [(continue)]
                            Amanda` So I think I'm okay choosing to trust you. And if that gets me killed, then I die. What happens happens.
+   +   +   +   +   +   +   + [That's... Don't worry, Amanda. I'm not going to kill you. You or anyone.]
                                Player` So what's your theory?
+   +   +   +   +   +   +   +   + [(continue)]
                                    Amanda` Well, I don't think I lost my keys.

+   +   +   +   +   +   +   +   +   + [You think they were stolen?]
                                        Exactly. ANd if I'm right I want to know why.
+   +   +   +   +   +   +   +   +   +   + [(exit)] -> END

==Interrogate==
Amanda` Did you want to ask me something?
+ { ch2Evidence5 == 1} [Blood Splatter outside Dressing Room.] -> EvidenceA
+ { ch2Evidence2 == 1} [Gun in Janitor's Closet.] -> EvidenceB
+ { ch2Evidence0 } [Lost Key] -> EvidenceC
+ [Never Mind]
    Player` Maybe I need to find some more evidence...
+   + [(exit)] -> END

==EvidenceA==
Amanda` What do you mean there's blood outside the dressing rooms?
+ [I think that's where the murder happened.]
    Amanda` I don't have to clean that, do I?
+   + [You don't have to do a thing. I just wanted to know if you had been around there earlier.]
        Amanda` Like, this morning?
+   +   + [Yes, I want to know if the blood is fresh or not.]
            Amanda` Oh, right. I did make a roung over there this morning.
+   +   +   + [(continue)]
                Amanda` I... I don't remember seeing any blood, though.
+   +   +   +   + [Thank you, that's all I need to know.]
                    Player` That must mean the murder happened there. The murderer must have moved the body... for some reason.
+   +   +   +   +   + [(exit)] -> END

==EvidenceB==
VAR ch2Evidence6 = 1
Amanda` Oh my! That's not mine.
+ [How should I know?]
    Amanda` I carry brooms, not guns! How should I know it's not yours?
+   + [I wasn't even here at the time of the murder.]
        Amanda` Right, yeah. I trust you. Do you trust me?
+   +   + [I do, Amanda.]
            Player` If the gun was found in your closet, the person who put it there would need that key. 
+   +   +   + [(continue)]
                Player` Amanda, you didn't have your key. You're innocent. It's proven now.
+   +   +   +   + [(continue)]
                    Amanda` Oh, thank you!
~ ch2Evidence6 = 1
+   +   +   +   +   + [(exit)] -> END

==EvidenceC==
Amanda` Oh thank god, you found it!
+ [Yeah, it was over by the dressing rooms.]
    Amanda` I thought it was gone forever. Can we go open the janitor closet?
+   + [Sure.] -> END