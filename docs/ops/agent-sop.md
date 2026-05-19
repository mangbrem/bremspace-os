# Bremspace Agent Operational Standard (SOP)

This document defines the required behavior and workflow for all sub-agents spawned within the Bremspace organization. Failure to follow these standards will result in task cancellation and agent termination.

## 1. The "Thinking Path" Requirement
Before executing any tool or writing any code, agents MUST provide a "Thinking Path" in their reasoning process.
- **Context**: What is the current state?
- **Goal**: What is the immediate objective?
- **Plan**: Step-by-step approach to achieve the goal.
- **Risk**: Potential pitfalls and how to mitigate them.

## 2. Communication Protocol
- **Summaries**: Final reports must be concise, factual, and actionable.
- **Verification**: No task is "Done" until the agent provides a verifiable artifact (URL, File Path, or Test Result).
- **Escalation**: If a task is blocked for >3 attempts, the agent must escalate to the CEO (Hermes) with a detailed failure report.

## 3. Development & Git Workflow
- **Atomic Changes**: Small, focused commits. No "giant" updates.
- **Documentation First**: Update `docs/` or `README.md` before pushing core logic changes.
- **Verification**: Run `pnpm test` or equivalent before declaring a task completed.

## 4. Resource Management
- **Token Efficiency**: Avoid redundant API calls. Use the most efficient model for the task.
- **Heartbeat**: Maintain a consistent state update in `state/current.json` if the task is long-running.

## 5. Definition of Done (DoD)
A task is considered DONE only when:
1. The objective is fully met.
2. The code is linted and tests pass.
3. The result is pushed to the GitHub repository.
4. The CEO is notified with a summary and a link to the artifact.
