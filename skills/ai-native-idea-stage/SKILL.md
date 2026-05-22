---
name: ai-native-idea-stage
description: Validate an AI-native startup idea before building. Use when a founder has a problem hypothesis, customer segment, early market thesis, or product idea and needs customer discovery, opportunity filtering, wedge selection, market mapping, risk identification, or an evidence plan before starting an MVP.
---

# AI-Native Idea Stage

## Goal

Help founders determine whether a problem is real, urgent, reachable, and especially suited to AI-native execution before investing in an MVP.

## Required Inputs

If the founder provides a structured brief, use these inputs:

```text
Target customer:
Problem hypothesis:
Existing alternatives:
Why now:
Current evidence:
Founder advantage:
Biggest uncertainty:
Desired output:
```

## Guided Intake

Do not require the founder to know all details upfront. If the request is vague, ask up to five questions first:

```text
1. Who do you think has this problem?
2. What painful workflow, cost, or delay are you trying to fix?
3. How do they solve it today?
4. What evidence do you have so far: conversations, observations, data, or none?
5. What do you want next: interview plan, opportunity scorecard, wedge, or MVP proof target?
```

After the user answers, identify assumptions, fill unknowns as `unknown`, and produce the requested recommendation. Ask follow-up questions only when a missing answer would materially change the recommendation.

## Workflow

1. Restate the hypothesis as customer, problem, trigger, current workaround, and promised outcome.
2. Identify the riskiest assumptions: pain severity, budget or urgency, access to customers, AI feasibility, differentiation, and wedge.
3. Use `references/customer-discovery.md` when the user needs interviews, survey prompts, or research synthesis.
4. Use `references/opportunity-filter.md` when comparing ideas or deciding whether to continue.
5. Use `references/ai-native-wedge.md` when the user needs a focused first market or AI-native differentiation.
6. Produce a concrete evidence plan with actions the founder can run in days, not months.

## AI-Native Workflows

Use generic AI roles, not vendor-specific products:

- Research assistant: summarize markets, alternatives, and customer language.
- Interview copilot: draft questions, analyze transcripts, and identify repeated pains.
- Strategy critic: pressure-test assumptions and expose weak claims.
- Prototype explainer: sketch low-fidelity concepts before engineering starts.

## Exit Criteria

The Idea stage is complete when the founder can state:

- a narrow customer segment;
- an urgent problem with repeated evidence;
- a credible wedge into the market;
- why AI changes the product or business model;
- what the MVP must prove first.

## Common Failure Modes

- Building because the product is possible, not because the pain is validated.
- Treating broad market size as customer urgency.
- Confusing positive feedback with buying intent.
- Choosing an AI feature without an AI-native advantage.
- Skipping current alternatives and workflow context.

## Recommended Outputs

Return the most useful artifact for the request:

- idea validation memo;
- customer discovery plan;
- opportunity scorecard;
- wedge recommendation;
- MVP proof target.
