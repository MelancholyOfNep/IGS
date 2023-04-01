-> Intro

==Intro==
Amanda` Hi.
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Amanda` You know what?
+ [What?]
    Amanda` I think today is a pretty good day.
+   + [That's the best kind of day. What makes it so good?]
        Amanda` Well, the sun's out, and so are the clouds. It's warm but it's not hot.
+   +   + [(continue)]
            Amanda` There's people here but it's not too crowded, so there aren't too many messes.
+   +   +   + [(continue)]
                Amanda` That Bethany kid thought my magic trick was fun... I think. She sort of ran off to the roller coaster right after.
+   +   +   +   + [(continue)]
                    Amanda` But all the guests have been nice to me, too. And they seem to be having a nice time.
+   +   +   +   +   + [(continue)]
                        Amanda` Maybe my pay isn't great, maybe my boss seems tired nowadays, maybe this job isn't sustainable.
+   +   +   +   +   +   + [(continue)]
                            Amanda` But right now I feel good just ignoring those things and enjoying where I'm at.
+   +   +   +   +   +   +   + [I'm happy to hear that... Was that for the news article?]
                                Amanda` No. Well, sure, you can use it. But it was for you.
+   +   +   +   +   +   +   +   + [Me?]
                                    Amanda` Yes, you. You've been looking more tired since this morning. And I know that work can be stressful sometimes, but I want you to know that it's okay to stop and breath.
+   +   +   +   +   +   +   +   +   + [(continue)]
                                        Amanda` Just enjoy where you are, take in the atmosphere. It's nice here, isn't it?
+   +   +   +   +   +   +   +   +   +   + [Yeah, sure. But I don't know how much I can enjoy it. Things have been weird here.]
                                            Amanda` How so?
+   +   +   +   +   +   +   +   +   +   +   + [It's... Complicated.] -> Choices
==Choices==
+ [There was a murder here.] -> Choice1
+ [I've just been feeling a little sick.] -> Choice2
==Choice1==
Amanda` What? Where?
+ [Here, just in a different universe, I think. It feels like the whole world split in two.]
    Player` Everyone here is happy, but you're all grieving on the other side.
+   + [(continue)]
        Amanda` That's a whole lot to take in. I tend not to believe in the paranormal, but it's still awfully scary. -> END
==Choice2==
Amanda` Oh no, stomach ache?
+ [Uh, yeah, I guess.]
    Amanda` Yeah, that happens when people eat the prezels.
+   + [(continue)]
        Amanda` Just try not to puke. -> END

==Interrogate==
Amanda` Did you want to ask me something?
+ { ch2Evidence5 == 1} [Blood Splatter outside Dressing Room.] -> EvidenceA
+ { ch2Evidence2 == 1} [Gun in Janitor's Closet.] -> EvidenceB
+ { ch2Evidence0 } [Lost Key] -> EvidenceC

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
VAR ch3Evidence1 = 1
Amanda` What is that?
+ [I found this key, is it yours?]
    Amanda` No, my key is in my pocket.
+   + [Oh, well maybe this is a duplicate.]
        Amanda` Impossible. I've never made a duplicate.
+   +   + [Maybe the Ring Master-]
            Amanda` Also impossible. I replaced the lock myself. There's no reason for him to be in there looking through my stuff.
+   +   +   + [I see. But are you sure this isn't your key?]
                Amanda` Well, it does look similar. Very similar. That's odd.
+   +   +   +   + [(continue)]
                    Amanda` Wait!? This is the same key! But, how?
+   +   +   +   +   + [This day is full of surprises, isn't it?]
                        Amanda` She never lost her key before the murder happened. It only makes sense, the murderer stole her key.
~ ch3Evidence1 = 1
+   +   +   +   +   +   + [(exit)] -> END

