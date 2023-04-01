-> Intro

==Intro==
Jules` Did you need something?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Jules` Part of me just wants to know why the Ring Master decided to fire me.
+ [(Well, you couldn't really perform anymore, could you?)]
    Jules` Sure, but he was the one who made me a clown in the first place. 
+   + [(continue)]
        Jules` You can't just make someone a clown then fire them for for being a clown.
+   +   + [(continue)]
            Jules` I just keep wondering if it's me. Was I the problem?
+   +   +   + [(Why would you be the problem?)]
                Jules` That's what I want to know! It's not like we didn't get along.
+   +   +   +   + [(continue)]
                    Jules` And sure, I was upset when he made me a clown, but I don't blame him. It's not like I could do anything else. He was still giving me a chance.
+   +   +   +   +   + [(continue)]
                        Jules` But firing me? That's the first time I've actualy been mad at him. And that happened no the day he was murdered.
+   +   +   +   +   +   + [(continue)]
                            Jules` It makes me feel sick. Sure I was mad at him, but someone was mad enough to kill him?
+   +   +   +   +   +   +   + [(continue)]
                                Jake` Somehow I feel like a murderer just for being mad at him while he died.
+   +   +   +   +   +   +   +   + [(...)]
                                    Jake` That's not a confession!
+   +   +   +   +   +   +   +   +   + [(No, of course not. I understand.)] -> END

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