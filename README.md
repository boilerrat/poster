```
██████╗ ██████╗████████████████████████████╗      ██████╗██████╗ █████╗███╗   █████████████████╗
██╔══████╔═══████╔════╚══██╔══██╔════██╔══██╗    ██╔════╝██╔══████╔══██████╗  ██╚══██╔══██╔════╝
██████╔██║   █████████╗  ██║  █████╗ ██████╔╝    ██║  █████████╔█████████╔██╗ ██║  ██║  ███████╗
██╔═══╝██║   ██╚════██║  ██║  ██╔══╝ ██╔══██╗    ██║   ████╔══████╔══████║╚██╗██║  ██║  ╚════██║
██║    ╚██████╔███████║  ██║  █████████║  ██║    ╚██████╔██║  ████║  ████║ ╚████║  ██║  ███████║
╚═╝     ╚═════╝╚══════╝  ╚═╝  ╚══════╚═╝  ╚═╝     ╚═════╝╚═╝  ╚═╚═╝  ╚═╚═╝  ╚═══╝  ╚═╝  ╚══════╝
                                                                                           
```

A ridiculously simple general purpose Grant Application Poster smart contract.
It takes two strings (content and tag) as parameters and emits those strings, along with msg.sender, as an event. That's it.

It is intended to be deployed on L2 Ethereum networks, or any EVM compatible network where gas is cheap/free.

---

Original Poster contract `Made with ❤️ by Auryn.eth`
Forked by boilerrat.eth

Original contract simlply posted a string onchain. The simplicity is beustiful however for to add justa slight bit more, but not much,to also add the ability to read from the contract, to make it easier for people to call back  posted strins for use in other applications.
