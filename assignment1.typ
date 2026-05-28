#import "@preview/academic-alt:0.1.0": *

#show: university-assignment.with(
  title: "Assignment 1",
  subtitle: "Advanced Systems Development",
  author: "50052578 Jones GWE",
  details: (
    course: "INF3705",
    due-date: "29 May 2026",
  )
)

= Question 1

*A system to control antilock braking in a car.*

The most appropriate model is a *waterfall model* with formal specification and verification for the most critical parts.

An antilock braking system is an embedded, real-time, safety-critical control system. It must interact correctly with sensors, actuators, and other vehicle hardware under strict timing constraints. Failure could lead directly to injury or loss of life, so the requirements, design, implementation, and validation have to be carefully documented and reviewed before the system is released.

The waterfall model is suitable because it requires detailed requirements analysis, system and software design, implementation, integration, and system testing as distinct managed stages. Since each phase produces documents that are approved, it ensures that there is suitable oversight before the final product is used in the real world. This is important for safety analysis, traceability, regulatory approval, and evidence that the system behaves correctly. An agile approach would be less suitable as the core braking behaviour cannot safely be discovered through informal experimentation after deployment.

*A virtual reality system to support software maintenance.*

I am assuming that this system would be some kind of tool which visually represents the components of a software system and interactions between them.

In that case, the most appropriate model is *incremental development*, using prototypes and frequent user feedback.

If this system is a support environment for software engineers and maintainers, its usefulness will depend heavily on human-computer interaction issues, such as whether the visualisations are understandable, whether the VR interactions help rather than slow down maintenance work, and whether the system fits real maintenance tasks. These requirements are unlikely to be completely understood at the start.

Incremental development is suitable because an initial version can be built to explore the main interaction ideas, then improved through feedback from maintainers. Later increments can add requested features. A purely waterfall process would be risky because it could produce a technically complete system that does not actually support maintainers effectively.

*A university accounting system replacing an existing system.*

The most appropriate model is *integration and configuration*, supported by plan-driven activities for migration and acceptance testing.

A university accounting system is a business information system. Accounting requirements are usually well understood and many standard accounting or enterprise resource planning packages already exist. Because the system replaces an existing system, there will also be existing data, reports, procedures, controls, and interfaces to serve as a reference.

Integration and configuration is suitable because the university should first identify and evaluate existing accounting software, configure it according university policies and reporting needs, and integrate it with other existing Univeristy systems such as student administration, payroll, procurement, banking, and budgeting. I belivieve that this will reduce cost and risk compared with building everything from scratch. However, a controlled plan is still needed for converting existing data, audit requirements, user training, parallel running, and final cut-over from the old system.

*An interactive travel planning system for lowest environmental impact.*

The most appropriate model is *incremental development*, with reuse of external data services where possible.

This is an interactive application whose requirements are likely to change as users learn what information helps them plan journeys. It also depends on external data such as maps, public transport schedules, fares, route availability, and models used to estimate environmental impact. The user interface and decision-support features will need experimentation because different users may value speed, cost, convenience, accessibility, and environmental impact differently.

Incremental development is suitable because a useful first version could provide basic journey planning and estimated environmental impact. Later increments could add things like user preferences, route comparisons, real-time transport updates, and improved environmental calculations. Reuse and integration would also be important for map, route, and transport data, but the main process should remain incremental because user feedback is useful for making the system effective.

= Question 2

I assume that the first sentence means to ask "Explain why software testing should always be an incremental, staged activity" as per question 2.6 in Sommerville.

Software testing should be incremental and staged because different types of defects are found at different levels of the system. A large program should not normally be tested only as a single complete unit at the end of development. If that is done, failures are harder to diagnose because the fault may be in an individual component (module), an interface between modules, an interaction between modules, or in the original understanding of the requirements.

Thus testing should proceed in stages. First, individual units or components are tested to check that they perform their specified functions correctly. Next, integrated components are tested together to reveal interface errors and unexpected interactions. After that, the system as a whole is tested to check whether it satisfies its requirements. Finally, customer or user testing is needed because real users, real data, and the operational environment may reveal defects in the actual requirements, usability problems, or performance issues that development tests could not reveal.

The process is also incremental because defects found at a later stage may require debugging and retesting of earlier parts of the system. When software is developed in increments, each increment should be tested as it is produced, and previous tests should be rerun to "lock-in" in previous changes, ensuring that new changes have not broken existing functionality.

Programmers the best people to carry out early component or unit testing because they understand the code, know its internal structure, and can quickly debug faults that are found. However, they are not the best people to be solely responsible for all testing. A programmer may unconsciously test according to the assumptions used when writing the code, and may therefore miss errors caused by misunderstood requirements, unusual user behaviour, integration problems, or missing functionality. For system, release, and acceptance testing, independent testers and users are usually better because they bring a different perspective and can test whether the software meets established requirements rather than only whether the code behaves as the programmer expected.

= Question 3

I will assume that by "wide range of skills and abilities" you mean that some team members are skilled and others are less so.

Agile methods may not work well in organizations with teams that have a wide range of skills and abilities because agile methods rely heavily on the competence, judgement, communication, and self-discipline of the team. Agile methods were originally developed for small co-located teams, where informal communication could replace much of the documentation and process control used in plan-driven development (Section 3.4). Also, agile methods seem to work best when team members have a relatively high skill level (Section 3.4.4).

This is a problem in a mixed-ability organization. Skilled developers may be able to work effectively from user stories, make good design decisions incrementally, refactor safely, write useful automated tests, and communicate design knowledge informally. Less experienced or less skilled developers may need more explicit guidance, more detailed designs, clearer documentation, and closer technical supervision. If these supports are removed too quickly, the team may produce inconsistent code, miss important requirements, make poor design decisions, or fail to maintain the discipline needed for practices such as continuous integration, test-first development, and refactoring.

Agile methods may also conflict with well-established organizational processes. Large organizations often have quality procedures and standards, requirements management tools, change management procedures, and testing standards that all projects are expected to follow (Section 3.4.4).

For example, agile refactoring assumes that developers may improve code continuously as part of normal development. This can conflict with formal change management procedures oftern established in large organizations, where all changes must be reviewed and approved before implementation. Similarly, agile's preference for informal requirements and minimal documentation may not fit an organization that needs signed-off requirements and design records.

Figure 3.11 in Somerville also indicates that agile principles can be hard to follow in practice. Customer involvement assumes that suitable customer representatives are available and can represent all stakeholders. Embracing change becomes difficult when many stakeholders assign different priorities to changes. Incremental delivery may not fit longer-term business or marketing planning cycles. The principle of "people, not process" may fail when some team members are not comfortable with the required levels of interaction expected in agile teams.

Thus agile methods may fail in such organizations, not because agile is inherently flawed, but because its assumptions do not match the organization. Agile assumes skilled, collaborative, self-organizing teams, rapid feedback, flexible planning, and relatively lightweight procedures.

= Question 4

Agile methods are intended to produce useful software quickly in environments where requirements change rapidly (Section 3.4). There are three common characteristics of agile methods, which are interleaved:

1. specification
2. design
3. implementation

The system is developed as a series of increments. Tools are used to support activities such as testing, configuration management, and integration. These characteristics are supported by the agile principles listed in Figure 3.2.

*Customer involvement* accelerates development because customers help define and prioritise requirements throughout the project. Instead of waiting for a complete requirements document to be agreed before implementation starts, the team can implement the most valuable requirements first and get immediate feedback. This reduces wasted work because misunderstandings and missing requirements are discovered while the system is still being developed.

*Embracing change* also speeds up delivery. In a plan-driven process, a changed requirement may force changes to the requirements specification, design, implementation, and test plans. Agile methods assume that change is normal, so new or changed requirements can be added to later increments. This allows development to continue while the system adapts to changing business needs.

*Incremental delivery* is the most obvious reason for faster deployment. Agile methods develop small increments and often make new releases available to customers every two or three weeks (Section 3.1). A complete final system does not have to be finished before users receive something usable. The first release can contain a minimal useful set of features, and later releases can add further functionality. This makes operational deployment possible much earlier than in a process where delivery happens only at the end.

*Maintaining simplicity* reduces the amount of work that has to be done before release. Agile teams try to build only what is needed for the current requirements and avoid unnecessary complexity. In Extreme Programming, for example, Sommerville describes simple design and refactoring as practices that keep the software understandable and easier to change (Section 3.2 and Figure 3.4). Simpler software is faster to implement, test, modify, and deploy.

*People, not process* accelerates development by reducing unnecessary bureaucracy and hand-offs. Skilled team members are trusted to organize their own work and communicate directly rather than relying only on detailed documents and formal meetings. This allows for fast decision-making, especially in small co-located teams where informal communication is more effective.

Agile development practices support these principles. Small releases provide frequent deployment opportunities. Test-first development and automated tests reduce delays in testing. Continuous integration finds integration problems early. Refactoring prevents the code structure from degrading as changes are made. These principles and practices reduce wasted overhead, shorten feedback cycles, focus effort on the highest-priority work, and allow useful software to be delivered and deployed in smaller time increments.

= Question 5

We first separate functional and non-functional requirements. Non-functional requirements are further classified into product, organizational, and external requirements (Section 4.1 and Figure 4.3). Therefore, the four types of requirements are:

1. *Functional requirements:* These describe the services or functions that the system must provide. They define what the system should do, how it should respond to particular inputs, and how it should behave in particular situations. For example, a university registration system may be required to allow a student to register for available modules.

2. *Product requirements:* These are non-functional requirements that specify or constrain the runtime behaviour of the software product itself. They include requirements for performance, reliability, availability, usability, security, memory use, and response time. For example, a system may be required to respond to a user query within two seconds.

3. *Organizational requirements:* These are non-functional requirements derived from the policies, procedures, and standards of the customer or developer organization. They may specify the development process, programming language, operating environment, authentication procedure, or organizational standards that must be followed.

4. *External requirements:* These are requirements imposed by factors outside the system and the organization developing it. They include legal, regulatory, ethical, accounting, safety, and privacy requirements. For example, a health system may have to comply with legislation governing the privacy of patient information.

= Question 6

#figure(
  image("assets/atm-use-case.svg", height: 16cm),
  caption: [ATM use case diagram],
)

#pagebreak()

== Display balance

#table(
  columns: (28%, 72%),
  inset: 5pt,
  stroke: 0.5pt,
  [*Actors*], [Customer, ATM, Accounting system],
  [*Inputs*], [Customer's card, PIN, account selection, display balance request.],
  [*Outputs*], [Displayed balance, customer card, optional printed receipt if the ATM offers this choice.],
  [*Normal operation*], [The customer inserts the card and enters the PIN. The ATM validates the card and PIN with the accounting system. The customer selects "Display balance" and chooses the account if more than one account is linked to the card. The ATM requests the current balance from the accounting system. The balance is displayed on screen. The customer may choose another transaction or end the session, after which the card is returned.],
  [*Exceptions*], [Invalid card: the card is retained and the customer is advised to contact the bank. Incorrect PIN: the customer may retry; after three failed attempts the card is retained. Accounting system unavailable: the transaction is cancelled and the card is returned. Account unavailable or closed: the transaction is cancelled and an explanatory message is displayed.],
)

== Print statement

#table(
  columns: (28%, 72%),
  inset: 5pt,
  stroke: 0.5pt,
  [*Actors*], [Customer, ATM, Accounting system],
  [*Inputs*], [Customer's card, PIN, account selection, print statement request.],
  [*Outputs*], [Customer's card, printed mini-statement or statement receipt, account transaction details.],
  [*Normal operation*], [The customer inserts the card and enters the PIN. The ATM validates the customer. The customer selects "Print statement" and chooses the required account. The ATM requests recent transaction details from the accounting system. The statement is printed, showing recent transactions and the current balance. The customer may choose another transaction or end the session, after which the card is returned.],
  [*Exceptions*], [Invalid card: the card is retained. Incorrect PIN: the customer may retry; after three failed attempts the card is retained. Printer unavailable, jammed, or out of paper: the transaction is cancelled, the customer is informed, and the card is returned. Accounting system unavailable: the transaction is cancelled and the card is returned. No statement data available: the ATM displays a message and returns to the transaction menu.],
)

== Change PIN

#table(
  columns: (28%, 72%),
  inset: 5pt,
  stroke: 0.5pt,
  [*Actors*], [Customer, ATM, Accounting system],
  [*Inputs*], [Customer's card, current PIN, new PIN, repeated new PIN for confirmation.],
  [*Outputs*], [Confirmation that the PIN has been changed, customer's card, optional printed confirmation receipt.],
  [*Normal operation*], [The customer inserts the card and enters the current PIN. The ATM validates the card and PIN with the accounting system. The customer selects "Change PIN". The ATM asks for a new PIN and then asks the customer to re-enter it. If both entries match and the new PIN satisfies the bank's rules, the ATM sends the change request to the accounting system. The accounting system updates the PIN and confirms success. The ATM displays confirmation and returns the card when the customer ends the session.],
  [*Exceptions*], [Invalid card: the card is retained. Incorrect current PIN: the customer may retry; after three failed attempts the card is retained. New PIN entries do not match: the customer is asked to enter the new PIN again. New PIN violates bank rules: the customer is asked to choose another PIN. Accounting system update fails: the PIN is not changed, an error is displayed, and the card is returned.],
)

== Deposit cash

#table(
  columns: (28%, 72%),
  inset: 5pt,
  stroke: 0.5pt,
  [*Actors*], [Customer, ATM, Accounting system],
  [*Inputs*], [Customer's card, PIN, account selection, cash inserted into the deposit slot, confirmation of counted amount.],
  [*Outputs*], [Customer's card, receipt, updated account balance or pending deposit record.],
  [*Normal operation*], [The customer inserts the card and enters the PIN. The ATM validates the customer. The customer selects "Deposit cash" and chooses the account to be credited. The ATM opens the deposit slot and asks the customer to insert cash. The ATM counts the notes and displays the counted amount. The customer confirms the amount. The ATM accepts and stores the cash, sends the deposit details to the accounting system, and receives confirmation that the account has been credited or that the deposit has been recorded as pending. The ATM prints a receipt and returns the card.],
  [*Exceptions*], [Invalid card: the card is retained. Incorrect PIN: the customer may retry; after three failed attempts the card is retained. Cash cannot be read or includes rejected notes: the ATM rejects the affected notes or asks the customer to remove them. Customer cancels before confirmation: the cash is returned and the transaction is cancelled. Cash jam or hardware failure after cash has been accepted: the ATM records the fault, prints or displays a reference if possible, and notifies the accounting system for reconciliation. Accounting system unavailable: the ATM either cancels before accepting cash or records a pending deposit if cash has already been accepted.],
)
