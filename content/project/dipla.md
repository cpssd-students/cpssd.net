---
date: "2018-07-21T00:00:00Z"
title: 'Project: Dipla'
---

![Dipla Logo](/img/dipla_logo.png)

[Dipla](https://github.com/cpssd/dipla) is a distributed computing framework for Python built by Cian Ruane, Noah Donnelly, Brandon Ibbotson and Stefan Kennedy.

### Goals

Our original goal and the main guiding principle behind Dipla was to build a framework that was easy to reason about from the outside but still quite clever on the inside. Our hope was that we could create something that allowed people to write distributed Python code that looked almost the same as if it were running locally.

### API

Our approach was to use Python decorators to mark functions that the user wanted to distribute and then have the users apply those functions to inputs or promises returned by previous functions. The results could be surfaced by a call to `Dipla.get()`. The idea was that users would break their work into a number of functions and then use Dipla to chain those together in an efficent, distributed way. An example usecase would be some map/reduce style job where many individual inputs must be transformed and then combined.

### Design

Behind the scenes the code the user wrote would act as the main server and then other computers running generic client code could connect to it and recieve functions to execute and data to operate on. It turned regular functions into RPCs quite transparently. All of the work was done through Python meta-programming, the code objects of the functions themselves would be extracted, serialised and sent over the network to clients. This architecture allowed us to keep the client code the same for any task.

### Features

After the core server and client was developed we fleshed the project out with more features:

 - Automatic benchmarks of clients to inform task scheduling.
 - Server-side verification of client outputs.
 - Automatic multiple runs of the same data to remove rogue or faulty clients.
 - Early exiting for needle/haystack style problems.
 - GUI or JSON based configuration of client.
 - Discovery server for clients to easily find project servers to recieve work from.
 - Statistics reporting through a server dashboard page.
 - Wrappers around distributed programming primitives such as sharding.
 - Authentication when connecting to servers.
 - Multi-core support for clients.

#### Automatic Benchmarks of Clients

When a client is launched it does a self-check that involves running a number of microbenchmarks and combining their results into a single score which it sends to the server as part of its initial connection request. The server uses this data to prioritise clients with good scores when deciding where to allocate work. The benchmark is sensitive to whatever unrelated load is on the CPU when the client is started but overall we found the order of the clients to be in line with our expectations when tested on multiple different computers.

#### Results Verification

Dipla has support for two different styles of output verification. The first style allows a user to attach a "verification function" when marking a function for distribution. This verification function is run on each of the outputs recieved and if it detects an incorrect output it can request that bit of data be rerun. E.g. if you have a function calculating a prime factorisation of a number you can write a verification function that multiplies the output numbers together and checks it equals the input number.

The second style of verification is used to detect misbehaving clients. A user is able to specify a certion fraction of the data to be run multiple times on different clients to ensure that each client returns the same result. If it's the case that different results are recieved the result most frequently seen is declared the canonical result and clients returning something different are marked as untrustworthy. Obviously this feature is only useful in cases where there is an objectively correct output and not something such as the latency to a particular server.

### More info

For more info you can visit the [Dipla GitHub repo](https://github.com/cpssd/dipla) or to see Dipla in action you can check out our [examples directory](https://github.com/cpssd/dipla/tree/master/examples).

