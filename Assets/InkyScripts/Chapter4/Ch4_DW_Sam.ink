VAR ch3Evidence1 = 0
VAR ch1Evidence2 = 0
-> Intro

==Intro==
Sam` How's it going?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Sam` I think I'm getting over myself.
+ [How do you mean?]
    Sam` I mean I'm done feeling bad about Bethany. I need to be there for her.
+   + [(continue)]
        Sam` Sure, "kid turning into roller coaster" isn't in the parenting books, but I never liked those books anyway.
+   +   + [(continue)]
        Sam` I'll just have to figure it out for myself.
+   +   +   + [I'm so sorry I can't fix things.]
            Sam` You can't do everything. It's okay.
+   +   +   +   + [(exit)] -> END

==Interrogate==
+ { ch3Evidence1 == 1} [Amanda's key was stolen.] -> EvidenceA
+ { ch1Evidence2 == 1} [Bethany amalgamized with a roller coaster.] -> EvidenceB
+ [Never Mind]
    You` I think I know everything I need to know. I just need a find a way out...
+   + [(exit)] -> END

==EvidenceA==
Sam` And you think I stole them?
+ [(exit)] -> END

==EvidenceB==
Sam` What?
+ [I'm so sorry... I don't even understand how something like this happens.]
    Sam` I- I don't know what to say.
+   + [Listen, I know it's not my place to give the parent advice on how to parent.]
        You` But Bethany needs you. She's scared.
+   +   + [(continue)]
            You` I know you're scared too, but you can let her be scared alone.
+   +   +   + [(continue)] -> SamMonologue
==SamMonologue==
Sam` But what am I supposed to say?
+ [(continue)]
    Sam` I could lie and tell her that everything is fine, or that this is normal.
+   + [(continue)]
        Sam` But a murder? A kid becoming a roller coaster? Crying out for me- That's not normal.
+   +   + [(continue)]
            Sam` It's so not normal I almost feel silly.
+   +   +   + [(continue)]
                Sam` This whole thing would be so funny if I couldn't hear her screaming for me.
+   +   +   +   + [(continue)]
                    Sam` But of course, I could also tell her the truth. That I'm scared, too, and that there's nothing we can do.
+   +   +   +   +   + [(continue)]
                        Sam` That we're completely helpless, and I don't know how to save her.
+   +   +   +   +   +   + [(continue)]
                            Sam` That would go against everything I told myself to do as a parent. No parent should have to look upon their screaming kid and admit that they're scared and helpless too. 
+   +   +   +   +   +   +   + [(continue)]
                                Sam` So I either lie to my child or I accept defeat. I don't know which I should do. -> EChoices
==EChoices==
+ [You should tell her the truth.] -> EChoice1
+ [You should tell her It'll be okay.] -> EChoice2
==EChoice1==
Sam` Maybe you're right. We're in hell, the least I can do is be honst with her. 
+ [(exit)] -> END
==EChoice2==
Sam` And lie? It might make her feel better, at least for a little bit.
+ [Would it make you feel better?]
    Sam` I don't know. But seeing her even a little less scared, even for a little bit, even for a lie... 
+   + [(continue)]
        Sam` Maybe that's for the best.
+   +   + [(exit)] -> END