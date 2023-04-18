VAR ch3Evidence1 = 0
-> Intro

==Intro==
Jake` What's up?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Jake` I feel like time doesn't even matter anymore.
+ [What do you mean?]
    Jake` We're all just sitting around, just waiting to figure out what's going on. None of us know what to do.
+   + [Yeah, it's hard to process, isn't it?]
        Jake` Not really. He's dead. I'm more than capable of understanding that, even if it's sad.
+   +   + [(continue)]
            Jake` The hardest thing to process is what to do next. All we can do is sit around and wait. But I have to wonder, what are we waiting for? 
+   +   +   + [(exit)] -> END

==Interrogate==
+ { ch3Evidence1 == 1} [Amanda's key was stolen.] -> EvidenceA
+ [Never Mind]
    You` Maybe I need to find some more evidence...
+   + [(exit)] -> END

==EvidenceA==
Jake` Oh! That's a real shame. Do you know who did it?
+ [No. Do you?]
    Jake` Nah. I can barely manage handling my own keys. I don't pay attention to anyone else's keys.
+   + [(exit)] -> END