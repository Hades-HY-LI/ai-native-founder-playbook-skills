---
name: ai-native-mvp-stage
description: Scope and plan an AI-native MVP after the problem and customer are credible. Use when a founder needs MVP scope, product architecture, coding-agent workflow, evaluation loops, technical debt control, security review, build milestones, or a practical plan for shipping the first useful version.
---

# AI-Native MVP Stage

## Goal

Help founders ship the smallest product that proves the core customer outcome while keeping AI-generated work testable, secure, and maintainable.

## Required Inputs

If the founder provides a structured brief, use these inputs:

```text
Validated customer/problem:
MVP outcome to prove:
Current product status:
Technical stack:
Data/security constraints:
Available builders/tools:
Deadline:
Desired output:
```

## Guided Intake

Do not require the founder to know all implementation details upfront. If the request is thin, ask up to five questions first:

```text
1. What customer problem and user outcome has already been validated?
2. What is the smallest workflow the MVP must prove?
3. What exists today: mockup, prototype, manual workflow, or no product?
4. What technical or data constraints matter most?
5. What do you want next: MVP scope, architecture, coding-agent task plan, eval plan, or milestones?
```

After the user answers, infer reasonable defaults, mark unknowns explicitly, and produce a build recommendation. Do not block on stack details unless the requested output is technical architecture.

## Workflow

1. Define the MVP proof target: the user outcome that must become measurably easier, faster, cheaper, or better.
2. Cut scope to the smallest workflow that proves that target.
3. Use `references/mvp-scope.md` to separate must-have proof from distracting surface area.
4. Use `references/technical-architecture.md` for architecture, coding-agent guardrails, security, and technical debt prevention.
5. Use `references/evals-and-feedback.md` to define evaluation, telemetry, bug intake, and customer feedback loops.
6. Return a build plan with milestones, risks, evals, and acceptance criteria.

## AI-Native Workflows

Use generic AI roles:

- Coding agent: implement bounded tasks with tests and explicit file ownership.
- Architecture critic: review data flow, security, and maintainability.
- Evaluation assistant: create test cases, golden examples, and failure taxonomies.
- User-research assistant: convert feedback into product decisions.

## Exit Criteria

The MVP stage is complete when:

- the core workflow works for real users;
- the product has enough instrumentation to learn;
- the team can distinguish product issues from AI quality issues;
- critical data and security risks are controlled;
- the next launch audience is clear.

## Common Failure Modes

- Building a broad product instead of proving one workflow.
- Letting coding agents create unreviewed architecture.
- Shipping AI behavior without evals or regression checks.
- Ignoring data permissions, privacy, and failure recovery.
- Treating demo quality as customer value.

## Recommended Outputs

Return the most useful artifact for the request:

- MVP scope brief;
- technical architecture review;
- coding-agent task plan;
- eval and feedback plan;
- milestone roadmap.
