VAR ch1Evidence1 = 0
VAR ch1Evidence4 = 0
VAR ch1Evidence5 = 0
VAR ch3Evidence1 = 0
VAR ch1Evidence6 = 0

-> Intro

==Intro==
Jules` Did you need something?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Jules` I don't know what to do anymore.
+ [Are you unhappy being a clown?]
    Jules` Well, I can't even call myself that anymore.
+   + [(continue)] -> NEXT
+   [Are you unhappy with this place?]
    Jules` Today? Yeah. Yesterday too, I guess. I went from acrobat to clown to...
+   + [To?] -> NEXT

==NEXT==
Jules` I was fired.
+ [What?]
    Jules` Fired. Aex. Let go. Gone.
+   + [By who?]
        Jules` The Ring Master. But he's dead now, so I can't say anything mean about him.
+   +   + [But you want to?]
            Jules` Hell no. I didn't want him dead.
+   +   +   + [Then why are you still here... if you were fired?]
                Jules` I've just been clearing out my dressing room and trying to process everything.
+   +   +   +   + [(continue)]
                    Jules` Everyone else was performing. I was just sitting there, alone.
+   +   +   +   +   + [(continue)]
                        Jules` I was a clown. The lowliest type of performer. And still, I was fired. Isn't that humiliating?
~ch1Evidence4 = 1
~ch1Evidence5 = 1

+   +   +   +   +   +   + [(exit)]-> END

==Interrogate==
Jules` You want to tell me something?
+   { ch3Evidence1 == 1} [Amanda's key was stolen.] -> EvidenceA
+   { ch1Evidence1 == 1} [Body found in the circus tent after the morning performance.] -> EvidenceB
+ [Never Mind]
    Player` Maybe I need to find some more evidence...
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