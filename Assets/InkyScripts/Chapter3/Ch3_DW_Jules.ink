VAR ch3Evidence1 = 0
VAR ch1Evidence1 = 0
VAR ch1Evidence6 = 0
-> Intro

==Intro==
Jules` Did you need something?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Jules` Honestly, right now I really just want to go home.
+ [I don't think anyone should go home right now.]
    Jules` I know! I'm a clown, not an idiot.
+   + [(continue)]
        I just want to be able to take a nap.
+   +   + [Yeah, I don't blame you.]
            Jules` I mean, normally i'd already be gone. But now I have to sit around thinking about death and murder.
+   +   +   + [I'm sorry that death makes the work day longer. You're justified in your frustation.] -> END

==Interrogate==
Jules` You want to tell me something?
+   { ch3Evidence1 == 1} [Amanda's key was stolen.] -> EvidenceA
+   { ch1Evidence1 == 1} [Body found in the circus tent after the morning performance.] -> EvidenceB
+ [Never Mind]
    You` Maybe I need to find some more evidence...
+   + [(exit)] -> END

==EvidenceA==
Jules` Stolen!? You mean someone took it?
+   [That is what 'stolen' means. Do you know who did it?]
        Jules` I don't, but it wasn't me!
+   +   [(continue)]
        Jules` The only thing I've stolen here are some kids' balloons, but only if they're being annoying.
+   +   +   [(continue)]
            Jules` Well, I've also stolen some snacks from the vendors here, and maybe a few stuffed animals.
+   +   +   +   [(continue)]
                Jules` But I would never steal from a coworker. They have too much to deal with anyway.
+   +   +   +   +   [(exit)] -> END

==EvidenceB==
Jules` I get it. Becasue if the body was found right after the performance, it makes sense that they were murdered during the performance. While everyone else was performing.
+   [Right, everyone except you. You were in the dressing rooms alone, weren't you?]
        Jules` Are you accusing me of murder?

-> ChoicesB

==ChoicesB==
+ [I was wondering if you saw anything that night.]
    -> ChoiceB1
    
+ [Yes.]
    -> ChoiceB2
    
==ChoiceB1==

Jules` Saw? No, but I heard something. ->NEXTB

==ChoiceB2==
Jules` You're kidding.
+   [You aren't going to murder me for saying that, are you?]
    Jules` I'm just a rejected clown and I could tell better jokes than you.
+   +   [(continue)]
        Jules` I didn't murder anyone, but I heard something.

-> NEXTB

==NEXTB==
+   You heard something? What did you hear?
    Jules` The sound of a gunshot, right outside my dressing room.

~ch1Evidence6 = 1

+   +   [(exit)]-> END