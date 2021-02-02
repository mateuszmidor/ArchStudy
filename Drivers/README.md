# Architectural Drivers. Simon Brown & DNA

## Functional requirements

- what the system can do for you

## Non-functional requirements (Quality Attributes)

- maintainability - usually the biggest problem for companies, most important by default
- scalability - ability to deal with more users, requests, data, messages etc
  - vertical - better CPU, more RAM
  - horizontal - more machines serving the requests
  - autoscaling to serve given traffic amount
- testability 
  - how long it takes to run all tests
  - what % of business cases is covered
- project goal
  - is it a one-shoot BlackFriday app that will be used once and thrown away? Need little quality attributes
  - is it a flagship product that will live long? Need great deal of quality attributes
- performance 
- response time (request-response time)
- latency (time for message to travel  in system from point A to B)
- availability - system uptime, eg system is operational 99.99% of time
- security - authorization, authentication, data confidentiality in transit and storage. OWASP
- privacy - related to security, RODO/GDPR
- disaster recovery - what happens if you lost disk/server/datacenter?
- accessibility - can be used by people with disabilities
- monitoring - Java’s JMX, NewRelic, alerts to SNMP
- management - change how the system works in runtime, eg feature toggle
- audit - log of events (audit log)
- flexibility - eg. ability for non-technical people to change business rules in the system
- extensibility - ability to add new functionalities through API and plugins
- legal, regulatory and compliance - eg anti-money laundering, card payment regulations
- internationalisation (i18n) - display text right to left
- localisation (l10n) - display numbers, currencies, dates

## Constraints imposed upon you:

- budget and time
- technology constraints
  - approved technology list
  - existing systems and interoperability - integration methods and technologies
  - target deployment platform - what technologies the platform supports
  - technology maturity - can we risk new, not yet verified technology?
  - open source - some companies dont like using open source (licenses, support)
  - vendor “relationships” - company may like using software from known vendor more
  - past failures - if the company failed to use some technology once, it will be reluctant
  - “not invented here” - companies tend to prefer their own solutions over 3rd party
- people constraints
  - how large is the team?
  - what technologies they know?
  - how fast you can scale the team?
  - can you procure additional training, consulting and specialists?
- organisational constraints 
  - the organisation politics can stop you from building the solution that you want to build
- constraints can be negotiated - “we will deliver in 2 months instead in 3 months but we will use technology that is not on your approved list to accelerate the work”

## Principles that you want to adopt to introduce standard approaches

- coding standards (formatting), conventions
- automated unit testing
- static analysis tooling
- architecture principles
  - layering strategy - eg ui, business, data access layers
  - placement of business logic - eg. all business should be processed on server side
  - SOLID
  - stateless components for scaling
  - stored procedures - do it/dont do it
  - domain model - reach/anemic; depends on system’s depth
  - use HTTP session for storing data between requests - yes/no
  - always consistent vs eventually consistent state - what are the business needs?

## Feature prioritization 

- ask “In case we can only do one in time, what do you need more, A or B?”

## Architecture risks to mitigate

- Data formats from third-party systems change unexpectedly.
- External systems become unavailable.
- Components run too slowly
- Components don’t scale.
- Key components crash.
- Single points of failure.
- Data becomes corrupted.
- Infrastructure fails.
- Disks fill up.
- New technology doesn’t work as expected.
- New technology is too complex to work with.
- The team lacks experience of the technology
- Off-the-shelf products and frameworks don’t work as advertised

## Things to think about beyond the code

- Cross-cutting concerns; including logging, exception handling, etc
- Security; including authentication, authorisation and confidentiality of sensitive data.
- Performance, scalability, availability and other quality attributes.
- Audit and other regulatory requirements.
- Real-world constraints of the environment.
- Interoperability/integration with other software systems.
- Operational, support and maintenance requirements.
- Structural consistency and integrity.
- Consistency of approaches to solving problems and implementing features across the codebase.
- Evaluating that the foundations you’re building will allow you to deliver what you set out to deliver.
- Keeping an eye on the future, and changes in the environment.
