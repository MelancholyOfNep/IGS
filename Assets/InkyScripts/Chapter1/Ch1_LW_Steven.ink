VAR ch1Evidence8 = 0
VAR ch1Evidence0 = 0
-> Intro

==Intro==
Steven` Yes?
+ [(talk)] -> Talk
+ [(interrogate)] -> Interrogate

==Talk==
You` So how does it feel to be Ring Master of such a popular carnival?
+   [(continue)]
    Steven` Is this off-book?
+   +   [It can be, absolutely.]
        Steven` Well then, it's stressful. I barely even feel like a Ring Master these days.
+   +   +   [Do you regret accepting the job?]
            Steven` Honestly, I don't even remember accepting the job.
+   +   +   +   [Are you sure you did?]
                Steven` Well of course I-
+   +   +   +   +   [(continue)]
                    Steven` ...I don't quite remember, actually. How strange.
+   +   +   +   +   +   [(continue)]
                        Steven` I seem to be forgetting things quite a bit these days.
+   +   +   +   +   +   +   [Maybe it's the stress.]
                            Steven` Yeah, maybe...
~ch1Evidence8 = 1
+   +   +   +   +   +   +   +   [(exit)] -> END

==Interrogate==
+ { ch1Evidence0 == 1} [Reginald was murdered.] -> EvidenceA
+ [Never Mind] -> END

==EvidenceA==
Steven` Reginald who?
+ [Your boss? The Head Ring Master.]
    Steven` Head Ring Master? That's me.
+   + [How long have you been Head Ring Master?]
        Steven` As long as I can remember. I don't know anyone named Reginald.
~ ch1Evidence8 = 1
+   +   + [(exit)] -> END
