# Technical Architecture

Use this reference when planning the MVP implementation, especially with coding agents.

## Architecture Principles

- Keep the first system boring where possible.
- Isolate AI calls behind clear interfaces.
- Store inputs, outputs, prompts, model settings, and human corrections where appropriate.
- Add human review for high-impact actions.
- Treat generated code as untrusted until reviewed, tested, and understood.
- Prefer simple data models that support learning from usage.

## Coding-Agent Guardrails

Before delegating code:

```text
Task:
Files or module owned:
Expected behavior:
Out of scope:
Tests to add or update:
Manual verification:
```

Require coding agents to:

- make small patches;
- explain changed files;
- avoid unrelated refactors;
- add tests for risky behavior;
- surface assumptions and missing context.

## Security Checklist

Check:

- user data boundaries;
- prompt injection and untrusted content;
- secrets handling;
- authorization and access control;
- logging of sensitive data;
- destructive actions and approval gates;
- fallback behavior when AI fails.

## Output Format

```text
Architecture:
AI boundaries:
Data flow:
Human review gates:
Security risks:
Coding-agent task breakdown:
Test plan:
```
