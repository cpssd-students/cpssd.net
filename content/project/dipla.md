---
date: "2018-07-21T00:00:00Z"
title: 'Project: Dipla'
---

![Dipla Logo](/img/dipla_logo.png)

[Dipla](https://github.com/cpssd/dipla) is a distributed computing framework for Python built by Cian Ruane, Noah Donnelly, Brandon Ibbotson and Stefan Kennedy.

Our original goal and the main guiding principle behind Dipla was to build a framework that was easy to reason about from the outside but still quite clever on the inside. Our hope was that we could create something that allowed people to write distributed Python code that looked almost the same as if it were running locally.

Our approach was to use Python decorators to mark functions that the user wanted to distribute and then have the users apply those functions to inputs or promises returned by previous functions. The results could be surfaced by a call to `Dipla.get()`. More advanced configuration options were supported but not required, it all worked with very minimal setup. The code the user wrote would act as the main server and then other computers running generic client code could connect to it and recieve functions to execute and data to operate on.

After the core server and client was developed we fleshed the project out with more features:

 - Scheduling based on automatic benchmarks of clients.
 - Server-side verification of client outputs.
 - Automatic multiple runs of the same data to remove rogue or faulty clients.
 - Early exiting for needle/haystack style problems.
 - GUI and JSON based configuration of client.
 - Discovery server for clients to easily find servers.
 - Statistics reporting through a server dashboard page.
 - Wrapers around distributed programming primitives such as sharding.
 - Authentication when connecting to servers.
 - Multi-core support for clients.

For more info you can visit the [Dipla GitHub repo](https://github.com/cpssd/dipla) or to see Dipla in action you can check out our [examples directory](https://github.com/cpssd/dipla/tree/master/examples).

