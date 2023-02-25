#name Tim
Please don't come near me.

#name Player
Ok. Are you okay?

#name Tim
I don't know.

#name Player
Yeah, I get that.

-> Choices

==Choices==
+ Do you remember me?
    -> Choice1
    
+ You're the acrobat, right?
    -> Choice2
    
==Choice1==
#name Tim
I-I don't think we've ever met.

#name Player
Right. Well, I promise I won't hurt you. I just want to figure out what's going on.

-> DONE

==Choice2==
#name Tim
Y-yeah. How did you know?

#name Player
Intuition, or something. Something very bad happened.

#name Tim
I know.

-> DONE

==DONE==
#name Tim 
The Ring Master is dead.

#name Player
Dead?

#name Tim 
Murdered.
#name Tim 
His body was found in the Circus Tent after our morning performance.

VAR ch1Evidence1 = 1

#name Player
When?

#name Tim 
I- I don't know. Today just feels cursed.

-> END
