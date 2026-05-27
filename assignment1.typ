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

== A system to control antilock braking in a car

The most appropriate model is a *waterfall model* with formal specification and verification for the most critical parts.

An antilock braking system is an embedded, real-time, safety-critical control system. It must interact correctly with sensors, actuators, and other vehicle hardware under strict timing constraints. Failure could lead directly to injury or loss of life, so the requirements, design, implementation, and validation have to be carefully documented and reviewed before the system is released.

The waterfall model is suitable because it requires detailed requirements analysis, system and software design, implementation, integration, and system testing as distinct managed stages. Since each phase produces documents that are approved, it ensures that there is suitable oversight before the final product is used in the real world. This is important for safety analysis, traceability, regulatory approval, and evidence that the system behaves correctly. An agile approach would be less suitable as the core braking behaviour cannot safely be discovered through informal experimentation after deployment.

== A virtual reality system to support software maintenance

I am assuming that this system would be some kind of tool which visually represents the components of a software system and interactions between them.

In that case, the most appropriate model is *incremental development*, using prototypes and frequent user feedback.

If this system is a support environment for software engineers and maintainers, its usefulness will depend heavily on human-computer interaction issues, such as whether the visualisations are understandable, whether the VR interactions help rather than slow down maintenance work, and whether the system fits real maintenance tasks. These requirements are unlikely to be completely understood at the start.

Incremental development is suitable because an initial version can be built to explore the main interaction ideas, then improved through feedback from maintainers. Later increments can add requested features. A purely waterfall process would be risky because it could produce a technically complete system that does not actually support maintainers effectively.

== A university accounting system replacing an existing system

The most appropriate model is *integration and configuration*, supported by plan-driven activities for migration and acceptance testing.

A university accounting system is a business information system. Accounting requirements are usually well understood and many standard accounting or enterprise resource planning packages already exist. Because the system replaces an existing system, there will also be existing data, reports, procedures, controls, and interfaces to serve as a reference.

Integration and configuration is suitable because the university should first identify and evaluate existing accounting software, configure it according university policies and reporting needs, and integrate it with other existing Univeristy systems such as student administration, payroll, procurement, banking, and budgeting. I belivieve that this will reduce cost and risk compared with building everything from scratch. However, a controlled plan is still needed for converting existing data, audit requirements, user training, parallel running, and final cut-over from the old system.

== An interactive travel planning system for lowest environmental impact

The most appropriate model is *incremental development*, with reuse of external data services where possible.

This is an interactive application whose requirements are likely to change as users learn what information helps them plan journeys. It also depends on external data such as maps, public transport schedules, fares, route availability, and models used to estimate environmental impact. The user interface and decision-support features will need experimentation because different users may value speed, cost, convenience, accessibility, and environmental impact differently.

Incremental development is suitable because a useful first version could provide basic journey planning and estimated environmental impact. Later increments could add things like user preferences, route comparisons, real-time transport updates, and improved environmental calculations. Reuse and integration would also be important for map, route, and transport data, but the main process should remain incremental because user feedback is useful for making the system effective.
