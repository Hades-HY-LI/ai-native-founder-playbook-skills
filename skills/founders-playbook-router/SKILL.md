---
name: founders-playbook-router
description: Diagnose the current stage of an AI-native startup and route founders to the right stage skill. Use when a founder asks where to start, is unsure whether they are in Idea, MVP, Launch, or Scale, wants a stage assessment, wants a practical founder playbook workflow, or provides company context and asks what to do next.
---

# Founder Playbook Router

## Overview

Use this skill to classify the founder's current company stage, choose the right stage skill, and run a short guided intake when the founder has not provided enough context.

The stage skills are listed below. If the agent supports `$skill` invocation, the names can also be invoked with a `$` prefix.

- `ai-native-idea-stage`: validate a problem, customer, wedge, and AI-native opportunity.
- `ai-native-mvp-stage`: scope, build, evaluate, and harden the first useful product.
- `ai-native-launch-stage`: position, sell, onboard, price, and learn from early customers.
- `ai-native-scale-stage`: turn early traction into repeatable GTM, operating cadence, team, and metrics.

## Router Workflow

1. Read the founder's current context.
2. If the context is thin, run the guided intake below before making a confident recommendation.
3. Classify the stage using the stage rules below.
4. If the stage is clear, invoke or recommend the matching stage skill.
5. If two stages are plausible, choose the earlier stage unless the founder already has evidence that satisfies its exit criteria.
6. Return a concise stage diagnosis, the reason, the next stage skill, and the minimum input checklist.

## Guided Intake

Do not wait for the founder to provide a complete brief. If the request has fewer than three useful facts, ask up to five questions first.

Ask in one compact batch:

```text
1. What are you building or considering?
2. Who is the specific customer or user?
3. What exists today: idea only, prototype, MVP, launched product, or traction?
4. What evidence do you have: interviews, users, revenue, retention, pilots, or none yet?
5. What output would help most right now: diagnosis, validation plan, MVP scope, launch plan, or scale plan?
```

After the user answers, infer the stage and proceed. If one answer is unclear, state the assumption and continue rather than asking another full intake.

## Stage Rules

Choose `Idea` when the founder has a hypothesis but lacks strong customer evidence, a clear wedge, or a validated pain.

Choose `MVP` when the founder has a validated problem and target customer but needs to scope, build, evaluate, or de-risk the first useful product.

Choose `Launch` when a product exists and the founder needs first customers, positioning, onboarding, pricing, sales motion, or feedback loops.

Choose `Scale` when there is early traction and the founder needs repeatability: retention, GTM system, hiring, fundraising, metrics, infrastructure, or operating cadence.

## Minimum Inputs

Use this default checklist when the founder wants to provide a structured brief upfront:

```text
Company/stage:
Target customer:
Problem hypothesis:
Current product status:
Existing users/customers:
Current AI tools:
Biggest constraint:
Desired output:
```

For detailed input guidance, tell the user to use `references/stage-input-guide.md` from the repo.

## Output Format

Return:

```text
Stage diagnosis:
Why:
Use this skill:
Missing inputs:
Recommended output:
Next 3 actions:
```

Keep the diagnosis practical. Do not overfit to tool vendors or require a specific AI provider.
