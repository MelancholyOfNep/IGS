Sam` What?
+ [I'm so sorry... I don't even understand how something like this happens.]
    Sam` I- I don't know what to say.
+   + [Listen, I know it's not my place to give the parent advice on how to parent.]
        Player` But Bethany needs you. She's scared.
+   +   + [(continue)]
            Player` I know you're scared too, but you can let her be scared alone.
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
                                Sam` So I either lie to my child or I accept defeat. I don't know which I should do. -> Choices
==Choices==
+ [You should tell her the truth.] -> Choice1
+ [You should tell her It'll be okay.] -> Choice2
==Choice1==
Sam` Maybe you're right. We're in hell, the least I can do is be honst with her. 
+ [(exit)] -> END
==Choice2==
Sam` And lie? It might make her feel better, at least for a little bit.
+ [Would it make you feel better?]
    Sam` I don't know. But seeing her even a little less scared, even for a little bit, even for a lie... 
+   + [(continue)]
        Sam` Maybe that's for the best.
+   +   + [(exit)] -> END
