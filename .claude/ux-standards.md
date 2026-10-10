# UX Standards — every interface, every project

Adopted 2026-10-10 at Russell's direction: *"every design we build needs to observe the state of the art in UX theory."* It came out of a real miss. In the airspace trainer, the challenge question sat at the top of the screen while Check and Next sat bottom-right, so the user was left wondering what to do. Read this before building or changing any UI, and run the checklist at the bottom before showing it to Russell.

## The one rule

**The user should never be left wondering what to do next.** On entering any mode or state, everything on screen pushes attention toward the right action, especially the first time.

## Core principles

1. **Instruction, control and feedback in one glance.** If the user has to *read* something to know *what to do*, it sits next to where they do it. (Mayer's spatial contiguity; Gestalt proximity, NN/g.)
2. **Show changes where the eye already is.** People miss changes away from their focus (change blindness, NN/g). Make one change at a time, in the region being watched.
3. **One dominant action per state.** Use one filled button; the others are quiet. After an answer, the *same slot* becomes Next. (Hick's law.)
4. **Big targets, close to the current focus.** Touch targets are at least 44×44 pt (Apple HIG, WCAG 2.5.5). Never put a frequent action in a far corner. (Fitts's law.)
5. **Always show state.** Show which mode you're in, progress ("3 of 8"), and how to get out. (Nielsen heuristic #1: visibility of system status.)
6. **Familiar patterns over clever ones.** (Jakob's law.)
7. **Cut anything that doesn't serve the current task.** (Mayer coherence; minimalist design.)
8. **Help at the moment of need ("pull"), not front-loaded tours ("push").** (NN/g onboarding.)

## Entering a mode / first run

- **Put the task statement where the work happens.** That means a task strip right above the controls that answer it, or a callout tethered to the object being manipulated.
- **Mark the mode change unmistakably.** Change the title ("Challenge 1 of 9"), add a tint or outline on the work area, and keep the exit visible.
- **One cue, one interaction, a few words.** On first entry, pulse the single thing to touch, styled clearly as an annotation, never as a fake button. **Fade it after the first success**, and bring it back on a stall (about 8 s idle) or after two misses in a row. Never chain coach marks. (NN/g instructional overlays; worked-example fading.)
- **A disabled action must say why and what to do.**
- **Progressive disclosure, at most two levels.** Advanced options go behind one labelled control.

## Layout on iPad (touch-first)

- **Readouts that *change* as a result of what the hand is doing go above the hand**, so the hand doesn't cover them. This is the house rule "touch at the bottom, words at the top", and the reason is *occlusion*.
- **Instructions are the exception.** The question you read before acting travels *with* its commit button. Proximity beats the house rule.
- Feedback goes in that same strip or on the object, **never in a far-off toast or header**.
- The interface must fit one iPad screen, landscape and portrait, with no scrolling. The working surface must not resize under the user's finger.
- **Re-check grouping in both orientations and at split-screen widths.** Restacking a layout can separate things that belong together.

## Feedback

- **Immediate:** within about 100 ms of the action.
- **Located where the eye is.**
- **Never color alone.** Pair it with an icon and a word.
- **Wrong:** say what's wrong in plain words, then how to fix it, with no blame and a retry in place. Offer "Show me" after the second miss.
- **Right:** confirm, add a one-line *why* (that's where the learning happens), then Next in the same slot.
- **Every state ends with exactly one obvious next step.** The last item says "See results", never a dead end.

## Learning tools (Mayer's multimedia principles, PhET research)

- **Decide the mode before designing it.**
  - **Explore** is open-ended, implicitly scaffolded by what the controls allow, and protects the student's agency.
  - **Challenge** is graded and directive: one task, one primary action, a fading cue.
  - Don't mix the two on one screen.
- **Animation vs interaction.** Animation shows *what changed*. Interaction is for when the learner must *predict or act*. Interactive isn't automatically better (Russell).
- **Signaling:** highlight only what's relevant to the current question.
- **Segmenting:** one question per screen, learner-paced, no auto-advancing timers.
- **Pre-training:** name the parts before testing them.
- **Worked example, then fade:** watch one solved, then finish the last step, then do it all.
- **No split attention:** labels go on the diagram, not in a legend.

## Doctrine additions (research of 2026-10-10)

Full doctrine and evidence: `F:\ClaudeProjects\FlyHedral\design\ux-research\README.md` (rpossum/flyhedral, `design/ux-research/`). Read it before any non-trivial design decision. The essentials:

- **Easy controls, hard content.** Effort belongs in the material, never in the interface. "Felt easy" is good for controls and suspect for study (fluency illusion). Learning is judged by delayed recall, not in-session accuracy.
- **Undo over "Are you sure?".**
  - Reversible actions just happen, with Undo.
  - Rare irreversible actions get a confirmation that names what is lost, with outcome-labelled buttons ("Delete deck" / "Keep deck").
  - Frequent irreversible actions get redesigned to be reversible.
  - Destructive controls are kept spatially apart from frequent ones.
- **Modes are loud.** Show the current mode in words, in the same spot, with two cues. No uncommanded mode changes. A control whose meaning changes visibly relabels.
- **Calm by default.** No badges, confetti, streak guilt or pop-ups for routine states. Loading, empty, offline and all-clear are four visibly different states. A failure is never rendered as zero or empty.
- **Aviation color is reserved.**
  - Red = warning/act now. Amber = caution. Green = normal/complete. Magenta/cyan = nav target/selected value.
  - Never use them as decoration. Users can never re-map them.
  - Trainers use the real avionics colors and motion. Helpful re-coloring is negative transfer.
- **Desk vs cockpit.** Anything used in or near the aircraft (checklists app) follows aviation human factors over consumer UX:
  - targets ≥½ in (≈64–72 pt);
  - no gesture-only actions;
  - no uncommanded overlays;
  - an active-item pointer and an interruption-resume banner;
  - complete ≠ skip;
  - wording verbatim from SOP/AFM.
- **Text and type.**
  - Body 17–20 px; inputs ≥16 px.
  - Contrast 4.5:1 for text and 3:1 for UI.
  - Sentence case; device-neutral verbs ("Select", not "click").
  - No hover-only anything; honor Reduce Motion.
- **Judging a design.**
  - Score the 12 dimensions 0–2 with evidence: goal, mental model, load, discoverability, hierarchy, consistency, feedback, error prevention, efficiency, accessibility, trust, completion.
  - Rate findings for severity 0–4. Ship with no zeros and no open severity-3/4s.
  - AI review is inspection evidence, not user evidence. Russell's OK is a requirement, not a usability verdict.
  - "That's how apps usually do it" must beat two alternatives on the rubric, and its original job must match ours.

## Pre-ship checklist — all must be YES before showing Russell

1. Within 2 seconds of entering any mode, can a first-time user point to the one thing to do next?
2. Is the task text in the same glance as the control that answers it?
3. Is there exactly one visually dominant action in each state?
4. Is the commit action near where the finger just finished, and not in a far corner?
5. After feedback, does Next appear where the eye already is?
6. Does every disabled action say why and what to do?
7. Is feedback shown on the object or in the task strip?
8. Does feedback use an icon or word as well as color?
9. Does a wrong answer say what's wrong, how to fix it, and allow a retry in place?
10. Does a right answer give a one-line why?
11. Do changing readouts stay above the hand, and does the working surface never resize mid-interaction?
12. Is the first-run cue a single short hint, faded after the first success and brought back on a stall?
13. Are the mode, the progress (n of N) and the exit always visible?
14. Are all touch targets at least 44×44 pt, working in portrait, landscape and split view, with no scrolling on iPad?
15. Have I actually *looked* at it (a screenshot at iPad size) as a first-time user would, rather than reasoning about it from code?

If any answer is no, fix it first. If something can't be fixed, tell Russell plainly which item fails and why.

## Sources (fetched 2026-10-10)

NN/g: [10 heuristics](https://www.nngroup.com/articles/ten-usability-heuristics/), [proximity](https://www.nngroup.com/articles/gestalt-proximity/), [change blindness](https://www.nngroup.com/articles/change-blindness-definition/), [onboarding tutorials](https://www.nngroup.com/articles/onboarding-tutorials/), [instructional overlays](https://www.nngroup.com/articles/mobile-instructional-overlay/), [progressive disclosure](https://www.nngroup.com/articles/progressive-disclosure/), [error messages](https://www.nngroup.com/articles/error-message-guidelines/) · [Laws of UX](https://lawsofux.com/) · [Apple HIG accessibility](https://developer.apple.com/design/human-interface-guidelines/accessibility) · [WCAG 2.5.5](https://www.w3.org/WAI/WCAG22/Understanding/target-size-enhanced.html) · [Mayer's principles (Dartmouth)](https://services.dartmouth.edu/TDClient/1806/Portal/KB/PrintArticle?ID=171655) · [PhET implicit scaffolding](https://arxiv.org/abs/1306.6544) · [PhET design process](https://phet.colorado.edu/publications/phet_design_process.pdf) · [A List Apart: how we hold our gadgets](https://alistapart.com/article/how-we-hold-our-gadgets/)

Refresh this file when the field moves. It is meant to track the state of the art, not freeze it.
