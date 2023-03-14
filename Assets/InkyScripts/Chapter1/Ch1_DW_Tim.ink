VAR ch1Evidence1 = 0

Tim` Please don't come near me.
+   [Ok. Are you okay?]
    Tim` I don't know.
+   +   [Yeah, I get that.] -> Choices

==Choices==
(What should I ask them?)
+   [Do you remember me?]
    -> Choice1
    
+   [You're the acrobat, right?]
    -> Choice2
    
==Choice1==
Tim` I-I don't think we've ever met.
+   [Right. Well, I promise I won't hurt you. I just want to figure out what's going on.] -> Outro

==Choice2==
Tim` Y-yeah. How did you know?
+   [Intuition, or something. Something very bad happened.]
    Tim` I know.
+   +   [(continue)]-> Outro

==Outro==
Tim` The Ring Master is dead.
+   [Dead?]
    Tim` Murdered.
+   +   [(continue)]
        Tim` His body was found in the Circus Tent after our morning performance.

~ch1Evidence1 = 1
+   +   +   [When?]
            Tim` I- I don't know. Today just feels cursed.
+   +   +   +   [(exit)] -> END
