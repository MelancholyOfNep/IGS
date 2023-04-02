VAR ch3Evidence1 = 0
VAR ch2Evidence1 = 0
-> Intro

==Intro==
Steven` Yes?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Player` Hey, so how are you doing?
+ [(continue)]
    Steven` Not good.
+   + [(Yeah, I'd imagine.)]
        Steven` But I can't just keep being sad. Or confused.
+   +   + [(It's okay to be sad sometimes. You know that, right?)]
            Steven` Being sad isn't productive, though. I keep crying like my life is over, but it isn't over.
+   +   +   + [(continue)]
                Steven` I'm alive, so I might as well make the most of being alive.
+   +   +   +   + [(continue)]
                    Steven` I never wanted this to happen, but I always wanted a chance to lead. So now I can step up and help us through this.
+   +   +   +   +   + [(I think you might be going too fast...)]
                        Steven` If the other option is wasting time, then I'd rather be fast.

+   +   +   +   +   +   + [(Steven, you need to give yourself time to mourn.)]
                            Steven` I know, and I did. But I keep thinking about what affects me and not what affects the carnival. I'm done being selfish. -> Choices

==Choices==
+ [(It's not selfish to be sad.)] -> Choice1
+ [(Everyone else needs time to mourn, too.)] -> Choice2
    
==Choice1==
Steven` Maybe not. But I can still be productive. People deserve a happy carnival.
+ [(Sure, but is that what they need? Being happy isn't a choice. They can be happy again with time.)] -> NEXT

==Choice2==
Steven` People come here to be happy, not sad. I can help make them happy again.
+[(You can't control people's happiness.)] -> NEXT

==NEXT==
Steven` Yeah, but-
+ [(I get it. Thinking about what to do next can make the present less scary and sad.)]
Player` It gets your mind off things, and you think you feel better. But that feeling is temporary and you only end up hiding your sadness.
+   + [(Just let yourself be sad.)] -> END

==Interrogate==
+ { ch3Evidence1 == 1} [Amanda's key was stolen.] -> EvidenceA
+ { ch2Evidence1 == 1} [There's a missing knife at the game booths.] -> EvidenceB
+ [Never Mind]
    Player` Maybe I need to find some more evidence...
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