---
title: Agile metaphors
excerpt: 
comments: true

categories: teaching, programming,
- 

layout: iem-post
---

The biggest weakness in my pedagogical tool kit is assessment.  I use standards
based grading, which means that I view every assessment as an update on the
knowledge and skill of my students, and I give myself and the students many
chances to update me again and again.  What that means in practice is that I
give a quiz just about every day, keyed to particular skills and concepts.  I
grade them on a mastery scale (1-4) and return them to the students with an
admonition to try to re-assess any skills they didn't nail as soon as possible.

I think it's great.  Most of the students think it's great.  We all know a lot more than we did before about what precisely we're struggling with.  My gradebook lights up like a Christmas tree -- lots of green means we're all doing well, lots of red and yellow mean there's more work to be done, either with particular students or the whole class.

But how do I create many different tasks that fairly assess the same skill/concept?  How do I manage my test bank so I can produce the right question at the right time for the right student?

Right now, unfortunately, not so well.  I write tough conceptual questions that require thought, but then for the retakes I end up creating mechanical variations on the theme, so the diligent students still figure out how to memorize a procedure, ace the re-assessment, and then quickly dump it in the weekly memory purge.  Performance on my final exams, or on surprise re-assessments (when I put on old skill on a new quiz) doesn't match the prior (past performance is no indication of future success).

I could make it a little bit better by using a more complicated grading scheme than the "master once" method -- something like a power-law decay to reflect the "freshness" of an assessment attempt, which would force students to keep coming back.  Long-term retention would be better.  But that still wouldn't get them past the procedural learning and onto real understanding.

So I'm chewing on a new metaphor, seeing how it tastes:  Assessments are the educational equivalent of a unit testing framework.  As the teacher, I need to write the unit tests first -- these define what it means for the "software" to be "correct".  They are part of the "contract".  Every time we add a new "function" or capability, we need to "run the tests" on that function, but we also need to re-run the tests on everything else -- to make sure we haven't broken anything that used to work.  But I need a different kind of unit test, one whose answer can't be memorized.

And then the metaphor goes crazy: Making the progressions from novice to apprentice to journeyman to master is akin to refactoring.  A skill that began as a sequence of concrete steps applied to one particular problem is abstracted into a function.  Functions that seemed to apply to only one kind of situation are recast in a generalized form.  Concepts that were memorized by rote become instantiations of general classes, no longer needing memorization.  Isolated duplicates of procedures and concepts are combined.  If this were software, we would make one small change because the code "smells bad" -- a particular process is too complicated, too hard to explain, improperly documented, etc.  and then we would run the suite of unit tests again, to make sure we haven't broken the contract with our improvements.  But this kind of mind refactoring doesn't just clean up smelly code -- it also generates new capabilities, new generality, new clarity, new understanding -- all of which must also be tested.

What I really need, then, is a scaffold of increasingly complex unit tests, each of which comes in many parallel versions, all of which can be trotted out at will to: test and retest, keep giving the student many chances to demonstrate and develop mastery, prevent ossification of overly concrete procedures, and push abstraction, generality, and clarity.

And of course, that's where the metaphor fails -- because test driven design works in software because there is essentially no cost to running all the tests as many times as you want.  But in the classroom, every time a new test is run, many many minutes of life are used up.  And every one of those needs to be graded, records recorded, conversations had, etc., etc, etc.  If we follow the MOOC model, what Seymour Papert called "using the computer to program the child", we could get close to the idea of a testing suite, but only because we've stripped away all the abstraction and complex thought that was supposed to be the whole point.    

So I guess the question, if this metaphor is useful at all, is how to create a
suite of unit tests that can be run cheaply while covering both low-level and
high-level skills and concepts.  Something like a big set of questions and
tasks in a database; a semi-automated system that recommends which ones will
give the most information on a given day, given the current state of knowledge
about student knowledge; and a very streamlined workflow for the instructor to
read, mark, and give feedback on the results.



