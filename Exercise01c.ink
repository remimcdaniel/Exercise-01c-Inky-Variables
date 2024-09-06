/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something 
 
 Variable Checking

Equality: "Oliver" == "Oliver"
Not equality: 1 !=2
Greater: >
Less: <
Great or equal: >=
Less or equal: <=

*/

VAR health = 5
VAR sib_name = ""
VAR lanterns = 0

-> memory

== memory ==
Not a single physical alarm was sounding when you woke up and realized the ship you have been working on for the past month is sinking. You should have listened to your sibling when they told you not to take this job. What is your sibling's name?

* [Oliver] 
    ~ sib_name = "Oliver" 
    -> ship
* [Maggie] 
    ~ sib_name = "Maggie" 
    -> ship
* [Chuck] 
    ~ sib_name = "Chuck" 
    -> ship
* [Priscilla] 
    ~ sib_name = "Priscilla" 
    -> ship

== ship ==
You are on a sinking ship. {not lantern_pickup:There is a lantern on the floor.} There are hallways to the east, west, north, and south. 

You made it to the ship's intersection. If only {sib_name} could be with you now. They were always your protector.

You have {lanterns} lanterns

+ [Take the east hallway] -> east_hallway
+ [Take the north hallway] -> north_hallway
+ [Take the south hallway] -> south_hallway
+ [Take the west hallway] -> west_hallway
* [Pick up the lantern] -> lantern_pickup

=== lantern_pickup ===
~ lanterns = lanterns + 1
You pick up what looks to be the captain's lantern. May it light the way.
* [Go Back] -> ship
-> END

== east_hallway ==
You are in the east hallway. A flickering light illuminates the end of the corrider. You can hear the eerie creaking of the flooding ship below you.

{ sib_name == "Oliver": You imagine Oliver standing next to you. You briefly feel a bit of courage. }
+ [Go Back] -> ship
-> END

=== north_hallway ===
You are in the north hallway. It's too dark to see anything. For some reason, your lantern will not hold a flame here. Something cold and wet seeps into your boots. You are freezing.
+ [Go Back] -> ship
-> END

== west_hallway ==
You are in the west hallway. It's too dark to see anything. This is where the exit is, but you can't seem to remember where exactly it's located. A sense of dread washes over you. 
* {lanterns > 0} [Light Lantern] -> west_hallway_lit
+ [Go Back] -> ship
-> END


=== south_hallway ===
You are in the south hallway. An odd smell lingers over this hallway. You try not to think about it.
+ [Go Back] -> ship
-> END

== west_hallway_lit ==
You are filled with regret as soon as the dim light of your lantern floods the corrider in front of you and the stench that once enveloped the south hallway rushes your senses. The water creeps higher, and you know you will not be able run away from what you believe was once your captain, but is now a fleshy mass adorned with contorted limbs that is emerging from the exit door.
-> END


