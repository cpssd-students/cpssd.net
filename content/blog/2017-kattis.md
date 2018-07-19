---
date: "2017-04-07T00:00:00Z"
title: Students in CPSSD Provide 72% of Ireland's Total Score on Kattis
---

[Kattis][1] is an online judge for competitive programming
problems, that some CPSSD students have been using to practise for various
competitions. You can read about our success at [2017's HashCode][2],
for example.

The website includes a list of problems, of varying degrees of difficulty.
When a user solves a problem, they get between 1 and 10 points based on how
hard that problem is; the harder the problem, the higher the points. The
website then shows how each user ranks to others on a global scale, and also
others in the same university and country.

However, Kattis also uses the scores of individuals in a university or country
to get a combined score for that group. It then ranks universities against each
other, and countries against each other.

Because of the hard work of several DCU students, including CPSSDs, Dublin City
University has become the [number one university in Ireland][3] on the site, and
just today became the [50th placed university in the world][4].

<blockquote class="twitter-tweet" data-lang="ga"><p lang="en" dir="ltr">Did some work on <a href="https://t.co/9AcbsGqtsK">https://t.co/9AcbsGqtsK</a>; <a href="https://twitter.com/DublinCityUni">@DublinCityUni</a> is now the #50 university in the world there (and best in Ireland by miles) ❤️ <a href="https://t.co/jA2QqKtq7c">pic.twitter.com/jA2QqKtq7c</a></p>&mdash; noah ó ☭onnaile (@iandioch) <a href="https://twitter.com/iandioch/status/850157784851197952">7 Aibreán 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

In fact, DCU is the only Irish university in the top 100, and is the 21st placed
in Europe. Trinity College comes next, at 156th place globally. Out of our
neighbouring universities in Britain and Northern Ireland, only Edinburgh and
Oxford are ranked better than DCU.

Ireland as a whole has also risen up [the rankings][5] recently, and is
currently the 27th placed country in the world, just behind France. It may
soon pass out France too - vive la révolution!

I decided to do some research to measure how much impact CPSSD students had in
raising the reputation of Ireland and of DCU on Kattis. The website is kind
enough to [explain its ranking algorithm in detail][6]. In short, here is what
it does to measure a group's combined score:

- It takes the individual scores of everyone in the group, and sorts them.
- A formula is given to provide the fraction of each member in the group's score
  that should be added to the combined score. The higher you are in the group,
  the more of your score is taken into account in calculating the combined
  score.
- For example, the first placed person in the group adds 20% of their score to
  the combined amount, while the second placed person adds 16% of their score.
- It adds together each individual score multiplied by its above fraction to get
  a final answer.

I wrote [a script][7] to measure how much of Ireland's total score is provided
by CPSSD students. Here are the results:

Irish Rank|Individual Score|% Added|# Added|Cumulative Total|Name
---|---|---|---|---|---
#1|433.8|20.0%|86.76|86.76|Noah Ó Donnaile
#2|307.6|16.0%|49.22|135.98|Cian Ruane
#3|290.4|12.8%|37.17|173.15|Stefan Kennedy
#7|145.9|5.2%|7.65|180.80|Brandon Ibbotson
#29|13.0|0.0%|0.01|180.80|Ross O'Sullivan
#30|9.6|0.0%|0.00|180.80|Cliodhna Harrison
#31|7.2|0.0%|0.00|180.81|Ciaran Murphy
#35|5.8|0.0%|0.00|180.81|Lucas Savva
#39|3.8|0.0%|0.00|180.81|Oskar McDermott


The leftmost number is each person's ranking on the Irish leaderboard. Their
score follows, then the percentage of this score that is added to the combined
Irish score. Following is the actual value of this contribution, and then
Ireland's score so far, consisting of this number and all previous CPSSD's
contributions. Finally is the name of each person. At the end, the total score
provided by CPSSD students is output, followed by Ireland's total score, and
then the percentage of this score that the CPSSD score makes up.

You can see here that right now, CPSSDs provide a total of 180.81 of Ireland's
250.80 points - that is 72% of Ireland's total score!

It is clear that CPSSD has managed to gather some talented students, as I
believe was its aim. However, while individually many of us are undoubtedly
talented, what has struck me is that the competition and collaberation available
when we are together is the real catalyst. This could be summed up in the saying
"the whole is greater than the sum of its parts", but I think the following is
more exciting:

> "Society does not consist of individuals but expresses the sum of
> interrelations" - Karl Marx

Of course, this does not apply just to CPSSD, but also to the wider DCU
community. As such, here is a similar table, but including everyone in the top
50 in Ireland from Dublin City University:

Irish Rank|Individual Score|% Added|# Added|Cumulative Total|Name
---|---|---|---|---|---
#1|433.8|20.0%|86.76|86.76|Noah Ó Donnaile
#2|307.5|16.0%|49.20|135.96|Cian Ruane
#3|290.4|12.8%|37.17|173.13|Stefan Kennedy
#4|263.9|10.2%|27.02|200.15|Ciara Godwin
#5|165.4|8.2%|13.55|213.70|Niall Lyons
#7|145.9|5.2%|7.65|221.35|Brandon Ibbotson
#14|55.0|1.1%|0.60|221.96|Michal Durinik
#18|38.2|0.5%|0.17|222.13|Chris Dowling
#21|33.3|0.2%|0.08|222.21|Tom Doyle
#29|13.0|0.0%|0.01|222.21|Ross O'Sullivan
#30|9.6|0.0%|0.00|222.22|Cliodhna Harrison
#31|7.2|0.0%|0.00|222.22|Ciaran Murphy
#33|6.2|0.0%|0.00|222.22|Han McKenna
#35|5.8|0.0%|0.00|222.22|Lucas Savva
#37|5.5|0.0%|0.00|222.22|Adlan Djimani
#39|3.8|0.0%|0.00|222.22|Oskar McDermott
#41|3.5|0.0%|0.00|222.22|Marin Bivol
#41|3.5|0.0%|0.00|222.22|Tríona Barrow
#46|2.2|0.0%|0.00|222.22|Mark Andrade
#49|1.0|0.0%|0.00|222.22|Daniel Asofiei


DCU makes up almost 90% of Ireland's score on Kattis, at 222.22 of Éire's
250.80 points - I think that's pretty great!

These numbers will get more out of date as time goes on, and as DCU and Ireland
climb the ranks further (fingers crossed). I look forward to making another post
in the future when DCU is a top-10 university :)

Ádh mór leat,

[Noah Ó Donnaile][8]

[1]: https://open.kattis.com
[2]: /blog/2017-hashcode
[3]: https://open.kattis.com/countries/IRL
[4]: https://open.kattis.com/ranklist/universities
[5]: https://open.kattis.com/ranklist/countries
[6]: https://open.kattis.com/help/ranklist
[7]: https://gist.github.com/iandioch/ac633cf2e130b050ee1f6a7a565b6da2
[8]: http://noah.needs.money
