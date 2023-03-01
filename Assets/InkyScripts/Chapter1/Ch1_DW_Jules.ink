Jules` I don't know what to do anymore.

-> Choices

==Choices==
+ [Are you unhappy being a clown?]
    Jules` Well, I can't even call myself that anymore.
+   + [(continue)] -> NEXT
+   [Are you unhappy with this place?]
    Jules` Today? Yeah. Yesterday too, I guess. I went from acrobat to clown to...
+   + [To?] -> NEXT

==NEXT==
Jules` I was fired.
+ [What?]
    Jules` Fired. Aex. Let go. Gone.
+   + [By who?]
        Jules` The Ring Master. But he's dead now, so I can't say anything mean about him.
+   +   + [But you want to?]
            Jules` Hell no. I didn't want him dead.
+   +   +   + [Then why are you still here... if you were fired?]
                Jules` I've just been clearing out my dressing room and trying to process everything.
+   +   +   +   + [(continue)]
                    Jules` Everyone else was performing. I was just sitting there, alone.
+   +   +   +   +   + [(continue)]
                        Jules` I was a clown. The lowliest type of performer. And still, I was fired. Isn't that humiliating?

VAR ch1Evidence4 = 1
VAR ch1Evidence5 = 1

+   +   +   +   +   +   + [(exit)]-> END