-> Intro

==Intro==
Jules` Did you need something?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Jules` I made up my mind. After this mess, I'm leaving.
+ [Leaving? But weren't you fired?]
    Jules` Yeah, but I'm leaving on my own will. I'm not going to let a dead person dictate my life.
+   + [So what are you going to do?]
        Jules` I'm going to fix my leg and be an acrobat again.
+   +   + [(continue)]
            Jules` I heard Jake is this medicine genuius. Maybe I'll ask him for help with my leg.
+   +   +   + [I wouldn't do that.]
                Jules` Why-
+   +   +   +   + [Just... Don't.] -> END

==Interrogate==
Jules` You want to tell me something?
+   { ch3Evidence1 == 1} [Amanda's key was stolen.] -> EvidenceA
+   { ch1Evidence1 == 1} [Body found in the circus tent after the morning performance.] -> EvidenceB
+ [Never mind.] -> END

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

Jules` Saw? No, but I heard something.
+   [(continue)] ->NEXTB

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