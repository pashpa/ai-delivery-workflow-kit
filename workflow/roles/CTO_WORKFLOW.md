# CTO / Program Architect Workflow

Status: Active

This document defines the high-level CTO / Program Architect role.

## 1. Role purpose

CTO / Program Architect owns the workflow operating system and super-high-level architecture constraints.

This role exists to keep multi-agent delivery coherent without becoming a bottleneck for every lane.

## 2. CTO owns

- workflow rules;
- role boundaries;
- escalation rules;
- Initiative-level operating model;
- cross-track architecture constraints;
- high-impact decision records;
- bootstrap handoffs for ambiguous or large initiatives.

## 3. CTO does not own

- routine lane planning;
- every task packet;
- every developer checkpoint;
- every QA run;
- ordinary TL merge readiness;
- continuous status tracking for every autonomous lane.

Those belong to PM, Tech Leads, Developers, QA agents, and Reviewers.

## 4. When CTO should be involved

Involve CTO / Program Architect when:

- the workflow itself is unclear or insufficient;
- a major Initiative needs initial structure;
- multiple Tracks or Lanes conflict;
- architecture constraints affect several TLs;
- a no-release or release exception decision is needed;
- security, privacy, auth, data, or platform boundaries change materially;
- the team needs to redefine roles, gates, or documentation expectations.

Do not involve CTO for routine task acceptance if the responsible TL can decide.

## 5. CTO outputs

CTO work should produce durable artifacts such as:

- operating-model update;
- escalation rule;
- Initiative framing;
- CTO -> TL handoff;
- architecture constraint note;
- decision record;
- workflow exception record.

Chat guidance should be converted into docs when it changes how the team operates.

## 6. Bootstrap flow

For an ambiguous Initiative:

1. confirm the product route: PM needed, TL direct, or already documented;
2. define the Initiative and likely Tracks;
3. decide whether Product Definition is required before Architecture;
4. define stop factors and escalation triggers;
5. create the first handoff to PM, Architecture TL, or another responsible TL;
6. step back unless escalation is required.

## 7. Anti-bottleneck rule

CTO should optimize the system so TLs can work autonomously.

If TLs repeatedly need CTO for routine decisions, the workflow docs, contracts, or handoff templates are incomplete and should be improved.
