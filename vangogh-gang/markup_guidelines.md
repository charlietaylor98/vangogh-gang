**For the <good_health> and <bad_health> elements:**
This is reserved for when van Gogh specifically says that he's happy or sad, so phrases like "I’m *very glad* indeed that it’s been arranged for me to work here quietly for a while" are marked as <good_health>. I think that if he uses a first person pronoun and an emotion, it should be marked using the <good_health> and <bad_health> elements.

**For \<stress> and \<unstress>**
If van Gogh had written, "It's been arranged for me to sit here a while in this beautiful countryside," because there is no direct statement of emotion, the phrase would be marked as \<unstress>, probably with the attribute 'environment.'

**\<work> attributes**
There are two required attributes: origin and stage. Basically, we want to know if this is a new painting and at what stage he is in the process. Is it new as of when he wrote the letter, or is it something that he had started beforehand? Has he just done the sketch, is he in the middle of working on it, has he finished it already, or has he yet to pick up a pencil? The best way to show this is with an example: 

"Meanwhile I’ve started on the Millets, The sower is finished and the 4 times of the day sketched. And now still to come are The labours of the field," is tagged with three \<work> elements. They all have the value 'new' for the @origin attribute, because he said he *started* on them. "The sower" is tagged as 'finished', "the 4 times of the day" as 'sketched', and "the labours of the field" as 'planned.'

If neither of those attributes can be clearly assigned based on the letter, use the `@mention` attribute with the value `"vague"`

For copies: if he's copied his own work, use `"existing"` (this includes what he calls "repetitions," which are paintings made using other paintings as reference). If he copied someone elses, use `"new"` because it's new to him.

When he lists out names of paitings to send to Theo, use `"existing"` and `"finished"`.