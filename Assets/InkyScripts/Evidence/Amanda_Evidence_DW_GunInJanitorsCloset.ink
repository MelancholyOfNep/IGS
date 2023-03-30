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
VAR ch2Evidence6 = 1
+   +   +   +   +   + [(exit)] -> END
