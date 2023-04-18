VAR ch1Evidence3 = 0
-> Intro

==Intro==
Jake` What's up?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Jake` Ugh, I'm thinking about heading out soon.
+ [Had a good day?]
    Jake` Yeah, long day. It's felt like two, honestly.
+   + [I get that. Have you done anything fun today?]
        Jake` Not really.
+   +   + [Oh.]
            Jake` I mean yes! Today was fun. Lots of cool game. The show was neat as well.
+   +   +   + [(continue)]
                Jake` I just didn't do much outside of that.
+   +   +   +   + [I see. So, do you have any fun plans tomorrow.]
                    Jake` Yeah, back to the lab.
+   +   +   +   +   + [Right, your "cutting edge of medicine?"]
                        Jake` What do you mean?
+   +   +   +   +   +   + [Your medicine, you talked to me about it.]
                            Jake` Yeah, but I don't remember talking to you about that.
+   +   +   +   +   +   +   + [Sorry, I must have heard from Steven or one of the others.] -> END

==Interrogate==
+ { ch1Evidence3 == 1} [Jake's memory of attending the carnival was erased.] -> EvidenceA
+ [Never Mind]
    You` Maybe I need to find some more evidence...
+   + [(exit)] -> END

==EvidenceA==
Jake` What's that supposed to mean? I think I'd remember coming here.
+ [(exit)] -> END