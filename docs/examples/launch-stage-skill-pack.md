# Example: Launching This Skill Pack

This example shows how a founder can use `founders-playbook-router` when they have a working product but need a launch checklist and GitHub publishing plan.

## User Prompt

```text
Use the founders-playbook-router skill to interview me, diagnose the current project stage, and recommend what to do next.
```

## Guided Intake Answers

```text
1. Who is the first target user for this skill pack?
   AI-native company founders.

2. What counts as a successful first launch?
   Feedback from 5 founders and GitHub stars.

3. Have you personally installed and used the skills in a fresh session yet?
   Yes, I am using it now.

4. What is your biggest current uncertainty?
   Skill quality, install friction, and whether first users can get value quickly.

5. What output do you want next?
   Launch checklist and GitHub publishing plan.
```

## Stage Diagnosis

```text
Stage diagnosis: Launch

Why:
- The product exists: the skill pack is implemented, installable, and already usable.
- The founder is personally using it, so this is beyond MVP-only validation.
- The success criteria are launch signals: feedback from 5 AI-native founders and GitHub stars.
- The main uncertainties are launch-stage risks: skill quality, install friction, README clarity, and first-user value.

Use this skill:
ai-native-launch-stage

Recommended output:
Launch checklist + GitHub publishing plan + first-user feedback loop.
```

## Launch Checklist

Before publishing:

- Confirm `README.md` explains the value in the first 5 lines.
- Confirm `install.sh` is executable.
- Confirm private drafts are ignored.
- Confirm the repo does not include local artifacts.
- Run final validation:

```bash
for d in skills/*; do PYTHONPATH=/private/tmp/founder_skill_pydeps python3 /Users/hadesli/.codex/skills/.system/skill-creator/scripts/quick_validate.py "$d" || exit 1; done
git diff --check
git status --short --ignored
```

GitHub setup:

- Commit everything except ignored drafts.
- Create a public GitHub repo.
- Push the main branch.
- Add repo topics:

```text
ai-agents
ai-startups
founder-tools
skills
codex
claude-code
gemini-cli
startup-playbook
```

Repo description:

```text
Provider-neutral AI agent skills for AI-native startup founders across Idea, MVP, Launch, and Scale.
```

## First-User Feedback Loop

Ask 5 AI-native founders to do one task:

```text
Install the skill pack, run the router, and use one stage skill for your actual company.
```

Collect feedback:

```text
1. What agent did you use: Codex, Claude Code, Gemini, other?
2. Did installation work on the first try?
3. Which skill did you use?
4. Was the guided intake clear?
5. Was the recommendation useful?
6. What felt generic, wrong, or missing?
7. Would you use it again?
8. What should be improved before wider launch?
```

## GitHub Publishing Plan

```bash
git status --short --ignored
git add .gitignore LICENSE README.md install.sh .gemini assets docs references skills
git status --short
git commit -m "Create AI-native founder playbook skill pack"
git branch -M main
git remote add origin <YOUR_GITHUB_REPO_URL>
git push -u origin main
```

## Next Actions

1. Commit and push the repo.
2. Send the GitHub link to 5 AI-native founders with the feedback questions.
3. Use the feedback to fix install friction and improve the router and stage skill outputs before broader launch.
