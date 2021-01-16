# Architecture Decision Records

adr-tools - simply add and supercede ADRs as markdown documents from cli: <https://github.com/npryce/adr-tools>

## Install adr-tools (Arch linux, Manjaro)

```bash
pamac build adr-tools
```

## Init ADR log

```bash
adr init decisions # creates: decisions/0001-record-architecture-decisions.md
```
```markdown
# 1. Record architecture decisions

Date: 2021-01-16

## Status

Accepted

## Context

We need to record the architectural decisions made on this project.

## Decision

We will use Architecture Decision Records, as [described by Michael Nygard](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions).

## Consequences

See Michael Nygard's article, linked above. For a lightweight ADR toolset, see Nat Pryce's [adr-tools](https://github.com/npryce/adr-tools).
```

## Add decision

```bash
adr new Implement as Unix shell scripts # creates: decisions/0002-implement-as-unix-shell-scripts.md
```
```markdown
# 2. Implement as Unix shell scripts

Date: 2021-01-16

## Status

Accepted

## Context

The issue motivating this decision, and any context that influences or constrains the decision.

## Decision

The change that we're proposing or have agreed to implement.

## Consequences

What becomes easier or more difficult to do and any risks introduced by the change that will need to be mitigated.
```

## Supercede previous decision

```bash
adr new -s 1 Stop recording architecture decisions # creates: decisions/0003-stop-recording-architecture-decisions.md, updates: decisions/0001...
```
```markdown
# 3. Stop recording architecture decisions

Date: 2021-01-16

## Status

Accepted

Supercedes [1. Record architecture decisions](0001-record-architecture-decisions.md)

## Context

The issue motivating this decision, and any context that influences or constrains the decision.

## Decision

The change that we're proposing or have agreed to implement.

## Consequences

What becomes easier or more difficult to do and any risks introduced by the change that will need to be mitigated.
```

## List decisions

```bash
adr list
decisions/0001-record-architecture-decisions.md
decisions/0002-implement-as-unix-shell-scripts.md
decisions/0003-stop-recording-architecture-decisions.md
```