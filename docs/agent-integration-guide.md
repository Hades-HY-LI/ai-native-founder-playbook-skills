# Agent Integration Guide

These skills are plain Markdown instruction packs. They are designed to work with any AI agent that can read files, accept pasted instructions, or load project context.

## Skill Folder Contract

Each skill folder contains:

- `SKILL.md`: the main instructions the agent should follow;
- `references/`: optional deeper guidance loaded only when the task needs it;
- `agents/`: optional UI metadata for loaders that understand it.

The operational content is in `SKILL.md` and `references/`. Agents that do not understand the metadata files can ignore them.

## Use With Any File-Aware Agent

Point the agent at the skill file:

```text
Use the instructions in skills/founders-playbook-router/SKILL.md.
Interview me, diagnose my startup stage, and recommend the right next skill.
When the skill references another file, read only the relevant reference file.
```

Then answer the intake questions. The skill should collect missing context before making recommendations.

## Platform Notes

Codex and Claude Code can use the folders under `skills/` directly as skill folders. Copy the folders into the tool's user-level or project-level skills directory.

Gemini CLI uses custom commands. This repo includes command wrappers under `.gemini/commands/founder-playbook/`:

```text
/founder-playbook:router
/founder-playbook:idea
/founder-playbook:mvp
/founder-playbook:launch
/founder-playbook:scale
```

Run Gemini from the repo root so those commands can read the `skills/` files they reference. If you install the commands globally, keep a copy of this repo's `skills/` directory in the project where Gemini runs.

## Use By Pasting Instructions

If the agent cannot read local files, paste:

1. the relevant `SKILL.md`;
2. any reference file the skill says is relevant;
3. your founder context or a request for guided intake.

Start with the router unless you already know the stage.

## Invocation Style

Use plain skill names for maximum portability:

```text
Use the ai-native-mvp-stage skill to interview me and scope the first useful MVP.
```

If your agent supports `$skill` syntax, this is also fine:

```text
Use $ai-native-mvp-stage to interview me and scope the first useful MVP.
```

## Recommended Agent Behavior

The agent should:

- ask up to five high-impact intake questions when context is thin;
- infer safe defaults and mark unknowns explicitly;
- load stage references only when needed;
- avoid requiring any specific model provider;
- return practical artifacts such as plans, scripts, scorecards, dashboards, and decision memos.
