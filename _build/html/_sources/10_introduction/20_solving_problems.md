# Idea 1: Solving Problems

Given the focus of data science coursework on the math, statistics, and programming that is required to use data science tools, one would be forgiven for thinking that understanding these tools is the ultimate goal of data science.

At the end of the day, however, your success as a data scientist will not be evaluated by whether you write good code or whether your classification model's AUC score is high. No, your success as a data scientist will always be evaluated based on a much simpler criterion: **did you make your stakeholder's life better by solving a problem they faced?**

```{sidebar}
Your success as a data scientist will *always* be evaluated by one simple criterion: **did you make your stakeholder's life better by solving a problem they faced?**
```

On the last page, I said that that one of the key goals of this book is to help young data scientist's understand the broader context of their work. There is perhaps no better way to do that then to always keep this one fact front of mind. The things you practice in class exercises — writing good code and finding a classification model with a high AUC — are things that may *help* you achieve the goal of solving your stakeholder's problem, but they are never sufficient in and of themselves. Indeed, it is hard to overstate how common it is to see talented young data scientists write brilliant, performant code and fit extremely accurate models that predict the wrong property, solve a problem that isn't actually core to the stakeholder's needs, require data not available in deployment, or work in training but won't generalize to the stakeholder's deployment context. The data scientists on these projects often deployed the skills they learned in technical classes magnificently, but this execution was not well-directed in service of the stakeholder — the classic "not seeing the forest for the trees" mistake.

```{note}
Throughout this book, I will frequently use the term "stakeholder" to refer to the person whose problem that you, the data scientist, is seeking to address. I use this term because, as a young data scientist, you will often be in the position of having to use your data science skills to help someone else. Thus your stakeholder may be your manager, your CEO, or someone at another company you are advising.

However, if you're lucky enough to *not* be directly answerable to someone else, either because you work for yourself or because you're in a field that gives you substantial autonomy like academia, you can simply think of your "stakeholder" as yourself.

If you're interested in developing a consumer-facing product (e.g., you're an independing developer whose thinking of creating a new data-science-based web app), you may also find it useful to think of your customer of the stakeholder, since very few products are successful if they don't solve a problem customers face. 
```

## Specifying The Problem

How, then, can we be sure our hard work as data scientists serves the interests of our stakeholder?

The first step in solving any problem is *always* to carefully specify the problem. While this may seem obvious, properly articulating the core problem one seeks to address can be remarkably difficult. Moreover, because everything you will do *after* articulating your problem is premised on having correctly specified your objective, it is *the* greatest determinant of the success of your project. The most sophisticated, efficiently executed, high precision, high recall model in the world isn't worth a lick of good if the results it generates don't solve the problem you or your stakeholder need solved.

Specifying your problem not only ensures that your subsequent efforts are properly directed, but it can also radically simplify your task. Many times problems only *appear* difficult because of how they are presented. As Charles Kettering, Head of Research at General Motors from 1920 to 1947 once said, "A problem well stated is a problem half solved."

How do you know if you've "clearly articulated the problem," and how should you go about refining your problem statement with your stakeholder? Those are topics we will discuss in detail in the coming chapters, as well as strategies for using data to help inform this process through iterative refinement of your understanding of the contours of the problem space.

## Stakeholder Management and Domain Expertise

Application is, in many ways, what sets data science apart from the disciplines of mathematics, computer science, and statistics. And to apply the tools of data science tools effectively, by definition, requires an understanding of the domain to which your tools are being deployed. This fact makes many data scientists uncomfortable — after all, many young data scientists do not even know the industry in which they will be employed when the graduate, never mind feel they can lay claim to being a "domain expert" in any specific substantive field.

A consequence of this discomfort is that "domain expertise" is that the term "domain expertise" is often invoked as a way of abdicating responsibility for part of an analysis as "somebody else's problem" (a dangerously powerful construction, as detailed below).

But it would be a mistake to view domain expertise as beyond the responsibility of the data scientist for two reasons. First, engaging with the details of a substantive domain to tailor the application of data science methods to solve a specific problem isn't ancillary to the job of a data scientists — it's a data scientist's comparative advantage. Data scientists (generally) are not the most technically skilled mathematicians, statisticians, or programmers — we are professionals who specialize in taking the best insights from all three of these skills sets an adapting them to fit the specific needs of a specific problem. So embrace the role of "domain knowledge!"

The second reason is that while you are unlikely to be a "domain expert" yourself, learning to solicit important information about a domain from true domain experts is a skill unto itself. As we will detail in our readings on "stakeholder management," stakeholders may be experts in their particular substantive domain, but because they (usually) won't understand data science, they are unlikely to ever provide you with the domain knowledge you need to do your job successfully (and you can't get away with just saying "yes, this project failed, but it was because you didn't tell me X!" See the discussion above of the single criterion used to evaluate data scientists). So learning to *partner* with your stakeholder and domain experts to understand a problem is a key part of understanding it properly, and thus eventually solving it.

### The SEP field and *Life, The Universe, and Everything*

Nowhere is the power of the "somebody else's problem" construction as well documented as in Douglas Adams' [Life, The Universe, and Everything](https://www.amazon.com/Universe-Everything-Hitchhikers-Guide-Galaxy/dp/0345391829) (book three of his famous five book science fiction trilogy) in a scene involving Ford Prefect (an intergalactic traveler) and Arthur Dent (Ford's very human and very overwhelmed traveling companion) few things are as powerful at distracting attention as labeling them "somebody else's problem":

> "Something's on your mind, isn't it?" said Arthur.
>
> "I think," said Ford in a tone of voice that Arthur by now recognized as one that presaged something utterly unintelligible, "that there's an S.E.P. over there."
>
> He pointed. Curiously enough, the direction he pointed in was not the one in which he was looking. > Arthur looked in the one direction, which was toward the sight screens, and in the other, which was at > the field of play. He nodded, he shrugged. He shrugged again.
>
> "A what?" he said.
>
> "An S.E.P."
>
> "An S...?"
>
> "...E.P."
>
> "And what's that?"
>
> "Somebody Else's Problem," said Ford.
>
> "Ah, good," said Arthur, and relaxed. He had no idea what all that was about, but at least it seemed to be over. It wasn't.
>
> "Over there," said Ford, again pointing at the sight screens and looking at the pitch.
>
> "Where?" said Arthur.
>
> "There!" said Ford.
>
> "I see," said Arthur, who didn't.
>
> "You do?" said Ford.
>
> "What?" said Arthur.
>
> "Can you see," said Ford patiently, "the S.E.P.?"
>
> "I thought you said that was someone else's problem."
>
> "That's right."
>
> Arthur nodded slowly, carefully and with an air of immense stupidity.
>
> "And I want to know," said Ford, "if you can see it."
>
> "You do?"
>
> "Yes!"
>
> "What," said Arthur, "does it look like?"
>
> "Well, how should I know, you fool," shouted Ford. "If you can see it, you tell me." Arthur experienced that dull throbbing sensation just behind the temples that was a hallmark of so many of his conversations with Ford. His brain lurked like a frightened puppy in its kennel. Ford took him by the arm.
>
> "An S.E.P.," he said, "is something that we can't see, or don't see, or our brain doesn't let us see, because we think that it's somebody else's problem. That's what S.E.P. means. Somebody Else's Problem. The brain just edits it out; it's like a blind spot. If you look at it directly you won't see it unless you know precisely what it is. Your only hope is to catch it by surprise out of the corner of your eye."
>
> "Ah," said Arthur, "then that's why.."
>
> "Yes," said Ford, who knew what Arthur was going to say.
>
> "...you've been jumping up and..."
>
> "Yes."
>
> "...down, and blinking..."
>
> "Yes."
>
> "..and.."
>
> "I think you've got the message."
>
> "I can see it," said Arthur, "it's a spaceship."
>
> [...]
>
> They could now clearly see the ship for what it was simply because they knew it was there. It was quite apparent, however, that nobody else could. This wasn't because it was actually invisible or anything hyperimpossible like that. The technology involved in making anything invisible is so infinitely complex that nine hundred and ninety-nine billion, nine hundred and ninety-nine million, nine hundred and ninety-nine thousand, nine hundred and ninety-nine times out of a trillion it is much simpler and more effective just to take the thing away and do without it. The ultrafamous sciento-magician Effrafax of Wug once bet his life that, given a year, he could render the great megamountain Magramal entirely invisible.
>
> Having spent most of the year jiggling around with immense Lux-O-Valves and Refracto-Nullifiers and Spectrum-By-Pass-O-Matics, he realized, with nine hours to go, that he wasn't going to make it. So, he and his friends, and his friends' friends, and his friends' friends' friends, and his friends' friends' friends' friends, and some rather less good friends of theirs who happened to own a major stellar trucking company, put in what is now widely recognized as being the hardest night's work in history and, sure enough, on the following day, Magramal was no longer visible. Effrafax lost his bet-and therefore his life simply because some pedantic adjudicating official noticed (a) that when walking around the area where Magramal ought to be he didn't trip over or break his nose on anything, and (b) a suspicious-looking extra moon.
>
> The Somebody Else's Problem field is much simpler and more effective, and what is more can be run for over a hundred years on a single flashlight battery. This is because it relies on people's natural predisposition not to see anything they don't want to, weren't expecting or can't explain. If Effrafax had painted the mountain pink and erected a cheap and simple Somebody Else's Problem field on it, then people would have walked past the mountain, around it, even over it, and simply never have noticed that the thing was there.
>
> And this is precisely what was happening with Slartibartfast's ship. It wasn't pink, but if it had been, that would have been the least of its visual problems and people were simply ignoring it like anything.
>
> The most extraordinary thing about it was that it looked only partly like a spaceship with guidance fins, rocket engines and escape hatches and so on, and a great deal like a small, upended Italian bistro.
>
> Ford and Arthur gazed up at it with wonderment and deeply offended sensibilities.
