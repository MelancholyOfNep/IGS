VAR ch1Evidence0 = 0
Player` Steven! What's going on?
+   [(continue)]
    Steven` Do I know you?
+   +   [Yeah, I'm-]
        Steven` The police?
+   +   +   [... Yes. What's going on? Do you not remember me?]
            Steven` Are you the one I talked to on the phone?
+   +   +   +   [I mean... we talked on the phone a while ago, I think.]
                Steven` Yeah, we've been waiting for you for hours.
+   +   +   +   +   [Hours? What's going on?]
                    Steven` The Ring Master-
+   +   +   +   +   +   [(continue)]
                        Steven` I don't want to talk about it.
+   +   +   +   +   +   +   [Aren't you the Ring Master?]
                            Steven` Junior Ring Master. Reginald was the Head Ring Master, but he was... He's gone now.
~ch1Evidence0 = 1
+   +   +   +   +   +   +   +   [There was another Ring Master? I don't remember a Reginald. (exit)] -> END