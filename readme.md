2018-1-30
So I have been doing stochastic intermittent fasting for a while, and recently
started doing stochastic cardio.

Coinfasting: flip a coin in the morning. Heads eat, tails fast. Over 7 days the
expected value is 3.5, identical to a scheduled ADF. The randomness makes it
easier to calibrate on the right number of calories.

Coin cardio: 20 minutes cycling every morning. Heads days, an extra 30 minutes
cycling in the afternoon. 140 minutes baseline, which is the minimum suggested
dose, averages to 245 minutes, maximum 350 minutes. 450 minutes is the maximum
suggested dose of cardio beyond which diminishing returns kick in.

Dice Kettlebell: roll 2d6, multiply by a number. Do that many swings. Can attach
it to the above coin results, say tails = 10, heads = 25.

Basically: I am enjoying the hell out of adding all this randomness to my life.
I want to add more, hence this folder.

I want to automate this stuff and make it easy to extend flipism to other parts
of my life.

First things first: automating what I'm already doing. Then, making it
extensible.

Wed Jan 31 20:30:19 EST 2018

Created coinfast and dicebell. All they do is replace actually rolling dice and
flipping a coin.

Todo: let them save their results to a ring buffer of last 7 days. This ring
buffer will contain outputs from these and other scripts.

Todo: dicebell should be able to see the day's coinflip and toggle the
multiplier based on it.

Right now, it duplicates exactly what I've already been doing. I could make a
shell script to just run both at the same time. Maybe I'll just make fish alias
for that for now.

Right now, rng.rkt provides the coinflips and dice rolls. Both coinfast and
dicebell require from it and print for themselves.

Separate the outcomes, say a rolltoday.rkt that saves a flip and a roll to a
buffer file. Then, have coinfast look at the coin outcome, coincardio look at
it, etc.

Ok, so I made coinfast and dicebell provide their print functions.
todayscript.rkt calls them, and the fish function just runs that instead of all
the separate scripts. I can now just add more stuff to todayscript as wanted.

Next: decouple the coin/dice. One module to throw em and log to a file. Have
coinfast and dicebell read from it instead of rolling/flipping for themselves.
The big thing is that I only want to change the file once a day. Once that's
done, then I can swap it out for a ring buffer for the week.
