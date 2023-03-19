Player` Ok, I have a lead.
+ [(continue)]
    Amanda` You do?
+   + [I do. You were right that your keys were stolen.]
        Amanda` Oh my god. How do you know?
+   +   + [Because you never lose your keys.]
            Amanda` I know. But is that enough basis for an accusation? -> NEXT
+   +   + [Intuition]
            Amanda` I trust your intuition, but is it enough to make an accusation? -> NEXT
==NEXT==
+ [No, of course not. But the full answer is much more complicated than that.]
    Player` Can you think of anyone who could have taken your keys from you?
+   + [(continue)]
        Amanda` I- I don't know. It wasn't that coaster kid becasue, well... She's a literal coaster kid now.
+   +   + [(continue)]
            Amanda` I don't think it was her parent, either. They've been sitting away from me most of the day until the murder happened.
+   +   +   + [Any other thoughts?]
                Amanda` Sorry, I really just don't know.
+   +   +   +   + [(exit)] -> END