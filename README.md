![Mayocat Logo](http://i.imgur.com/2TxYItk.png "Say Hello To The Mayo Cat")

Mayocat Shop is an attempt at building a modern e-commerce and marketplace management platform on the JVM.

Roadmap
-------

While young, Mayocat Shop is under active development. An initial end-to-end 1.0 version is planned for the end of April 2013.

The road to there comprise several milestones :

- M0 Basic infrastructure (Storage, multitenancy, authentication, configurability, etc.) (done)
- M1 Full catalog management with collections and variants (in progress)
- M2 View system (handlebars)
- M3 Payment gateway interface & orders
- M4 Pages (light CMS)

Architecture
------------

The high level philosophy behind Mayocat Shop architecture is described in [this article](http://velociter.fr/journal/my-idea-of-a-modern-web-app-on-the-jvm). Specifically, Mayocat Shop is built on a lightweight stack and spirit :

- Its foundation support library is the fantastic [Dropwizard framework](http://dropwizard.codahale.com/), so this mean Jetty + JAX-RS/Jersey + Jackson
- Dependency injection is realized using the [XWiki Component Manager](http://extensions.xwiki.org/xwiki/bin/view/Extension/Component+Module).
- The default persistency layer implementation targets RDBMS, using [JDBI](http://jdbi.org/). The officially supported RDBMS is PostgreSQL.

One corollary of building on this stack is the fact the back-end service can be viewed as just a RESTful HTTP API. The user-facing back-office consumes this API and is built with [AngularJS](http://angularjs.org).

REST Principles
---------------

Mayocat API RESTful URL design follows the principle of "pragmatic" REST.

- Mostly inspired by this talk by, Les Hazlewood : [REST+JSON API Design - Best Practices for Developers](http://www.youtube.com/watch?v=hdSrT4yjS1g)
- Also interesting are [the WhiteHouse API standards](https://github.com/WhiteHouse/api-standards)

Namely:
- By default JSON only. Exceptions on a per case basis
- POST for partial updates (not idempotent operations)
- Return 201 Created with location header on resource creation
- "href" property in resources for linking (canonical URL)
- "Resource expansion"
- ...


---

Copyright 2012-2013 Jérôme Velociter and contributors
