VAR ch1Evidence0 = 0
VAR ch1Evidence8 = 0
-> Intro

==Intro==
Steven` Yes?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
Steven` Hi! What a great day! Is everything going well?
+ [Are you okay? I'ts okay if you're tired, you can be honest with me.]
    Steven` Ugh, I'm so tired.
+   + [I can hardly blame you.]
        Steven` That last few days have been so hard, you know. I barely feel like I know what I'm doing sometimes.
+   +   + [I get that. Do you think you need a break?]
            Steven` No. I just need to work harder.
+   +   +   + [That isn't always the answer, you know.]
                Player` You can't just distract your stress with work. That just creates more stress.
+   +   +   +   + [(continue)]
                    Steven` People always say that, you know?
+   +   +   +   +   + [(continue)]
                        Steven` But I've been doing this job for so long, the fact that I'm feeling stressed now just means that I'm not good enough.
+   +   +   +   +   +   + [That's not what that means. It's not healthy-]
                            Steven` But stress makes a lot of things make sense. I can't even remember how long I've been working here because of how stressed I am.
+   +   +   +   +   +   +   + [You're putting too much on yourself. you should take a break.] -> END

==Interrogate==
+ { ch1Evidence0 == 1} [Reginald was murdered] -> EvidenceA
+ [Never Mind]
    Player` Maybe I need to find some more evidence...
+   + [(exit)] -> END

==EvidenceA==
Steven` Reginald who?
+ [Your boss? The Head Ring Master.]
    Steven` Head Ring Master? That's me.
+   + [How long have you been Head Ring Master?]
        Steven` As long as I can remember. I don't know anyone named Reginald.
~ ch1Evidence8 = 1
+   +   + [(exit)] -> END