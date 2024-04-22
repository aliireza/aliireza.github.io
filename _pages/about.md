---
permalink: /
title: "About Me"
excerpt: "About me"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---
I am a distributed systems researcher at NVIDIA. Before joining NVIDIA, I was a senior researcher in the network intelligence unit at RISE. I completed my doctoral studies in the Network Systems Laboratory ([NSLab](https://www.kth.se/blogs/nslab/)) at KTH Royal Institute of Technology under the supervision of Professor [Dejan Kostic](https://dejankosticgithub.github.io/index.html) and Professor [Gerald Q. Maguire Jr.](https://people.kth.se/~maguire/) I have received my B.Sc. in Electrical Engineering (Electronics) from [Sharif University of Technology](http://www.en.sharif.edu/), Tehran, Iran and my M.Sc. in Electrical Engineering (Digital Electronic Systems) from [Amirkabir University of Technology](https://aut.ac.ir/en), Tehran, Iran.


For more information, please check my [résumé](https://aliireza.github.io/files/AlirezaFarshin_resume.pdf) or full [CV](https://aliireza.github.io/files/AlirezaFarshin_CV.pdf).

I have received a [Google Ph.D. Fellowship 2021](https://research.google/outreach/phd-fellowship/recipients/?category=2021) award in Systems and Networking, check [my interview](https://intra.kth.se/en/eecs/aktuellt-pa-eecs/nyheter/vinnare-av-google-phd-fellowship-2021-1.1104113) with KTH EECS.


<iframe width="560" height="315" src="https://www.youtube.com/embed/A7A4nEXrm3s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

Research
======
My research interests include computer networks and networked systems. During my doctoral studies, I improved the performance of Network Functions Virtualization (NFV) service chains running at 100/200 Gbps by using low-level optimization techniques. You can read more in my [licentiate thesis](http://kth.diva-portal.org/smash/record.jsf?pid=diva2%3A1305108&dswid=947) and [doctoral dissertation](http://urn.kb.se/resolve?urn=urn:nbn:se:kth:diva-323599). To read the highlight of my research in Swedish, please check the [Framtidens Forskning](https://framtidensforskning.se/2022/06/17/optimerar-cacheminnet-for-snabbare-internettjanster/)'s article called "Optimerar cacheminnet för snabbare internettjänster".

---

Publications
======

- **Deploying Stateful Network Functions Efficiently using Large Language Models ([EuroMLSys'24](https://euromlsys.eu/))**
<br />
Hamid Ghasemirahni, **Alireza Farshin**, Mariano Scazzariello, Marco Chiesa, Dejan Kostić
<br />
[[Paper]](https://aliireza.github.io/files/flowmage-euromlsys24.pdf)
[[Slides]](https://aliireza.github.io/files/flowmage-euromlsys24-slides.pdf)
<br />
<br />
We use large language models (LLMs) to extract useful information from stateful network functions and find the optimal RSS configuration to minmize shared memory accesses.
<br />

- **Overcoming the IOTLB wall for multi-100-Gbps Linux-based networking ([PeerJ CS](https://peerj.com/computer-science/))**
<br />
**Alireza Farshin**, Luigi Rizzo, Khaled Elmeleegy, Dejan Kostić
<br />
[[Paper]](https://aliireza.github.io/files/iotlb-peerj23.pdf)
[[Reviews]](https://peerj.com/articles/cs-1385/reviews/)
<br />
<br />
We (i) characterize the performance of IOMMU & IOTLB on recent Intel Xeon Scalable & AMD EPYC processors at 200 Gbps and (ii) explore the possible opportunities to mitigate its performance overheads in the Linux kernel. Our evaluation shows that using hugepage-backed buffers can completely recover up-to-20-percent throughput drop introduced by IOMMU. 
<br />

- **Packet Order Matters! Improving Application Performance by Deliberately Delaying Packets ([NSDI'22](https://www.usenix.org/conference/nsdi22))**
<br />
Hamid Ghasemirahni, Tom Barbette, Georgios Katsikas, **Alireza Farshin**, Massimo Girondi, Amir Roozbeh, Marco Chiesa, Gerald Q. Maguire Jr., Dejan Kostić
<br />
(Acceptance Rate Spring: 28/104 ≈ 26.9%)
<br />
**[🏅Community Award Winner!]**
<br />
[[Paper]](https://aliireza.github.io/files/ordermatters-nsdi22.pdf)
[[Slides]](https://www.usenix.org/system/files/nsdi22_slides_ghasemirahni.pdf)
[[Video]](https://www.usenix.org/conference/nsdi22/presentation/ghasemirahni)
<br />
<br />
We systematically study the impact of temporal and spatial traffic locality on the performance of commodity servers equipped with high-speed network interfaces. Our results show that (i) the performance of a variety of widely deployed applications degrade substantially with even the slightest lack of traffic locality, and (ii) a traffic trace from our organization reveals poor traffic locality as networking protocols, drivers, and the underlying switching/routing fabric spread packets out in time (reducing locality). To address these issues, we built Reframer, a software solution that deliberately delays packets and reorders them to increase traffic locality. Despite introducing µs-scale delays of some packets, we show that Reframer increases the throughput of a network service chain by up to 84% and reduces the flow completion time of a web server by 11% while improving its throughput by 20%. This work has been featured in [Ericsson Blog](https://www.ericsson.com/en/blog/2022/8/packet-reordering-effects-on-packet-processing) and [KTH news](https://www.kth.se/en/om/nyheter/lokala-nyheter/kth-researchers-behind-breakthrough-set-to-halve-data-centre-energy-consumption-1.1176662).
<br />

- **PacketMill: Toward per-core 100-Gbps Networking ([ASPLOS'21](https://asplos-conference.org/2021))**
<br />
**Alireza Farshin**, Tom Barbette, Amir Roozbeh, Gerald Q. Maguire Jr., and Dejan Kostic
<br />
(Acceptance Rate: 75/398 ≈ 18.8%)
<br />
[[Paper]](https://aliireza.github.io/files/packetmill-asplos21.pdf)
[[Extended Abstract]](https://aliireza.github.io/files/packetmill-asplos21-extended_abstract.pdf)
[[Slides]](https://aliireza.github.io/files/packetmill-asplos21-slides.pdf)
[[Video]](https://play.kth.se/media/PacketMillA+Toward+Per-Core+100-Gbps+Networking/0_7rvtusfo)
[[Webpage]](https://packetmill.github.io/)
[[FOSDEM'21]](https://archive.fosdem.org/2021/schedule/event/sdn_fastclick/)
<br />
<br />
We present [PacketMill](https://packetmill.github.io/), a system for optimizing software packet processing, which (i) introduces a new model to efficiently manage packet metadata and (ii) employs code-optimization techniques to better utilize commodity hardware. PacketMill grinds the whole packet processing stack, from the high-level network function configuration file to the low-level userspace network (specifically DPDK) drivers, to mitigate inefficiencies and produce a customized binary for a given network function. Our evaluation results show that PacketMill increases throughput (up to 36.4 Gbps - 70%) & reduces latency (up to 101 us - 28%) and enables nontrivial packet processing (e.g., router) at ≈100 Gbps, when new packets arrive >10× faster than main memory access times, while using only one processing core. This work has been featured in the [Ericsson Blog](https://www.ericsson.com/en/blog/2021/4/multi-hundred-gigabit-networking-commodity-hardware) and on [Twitter](https://twitter.com/ahmad_saeed/status/1398272965414952965?s=20&t=Kc04IQgUz6fdcqKCxMgqoQ).
<br />

- **Reexamining Direct Cache Access to Optimize I/O Intensive Applications for Multi-hundred-gigabit Networks ([ATC'20](https://www.usenix.org/conference/atc20))**
<br />
**Alireza Farshin**, Amir Roozbeh, Gerald Q. Maguire Jr., and Dejan Kostic
<br />
(Acceptance Rate: 65/348 ≈ 18.6%)
<br />
[[Paper]](https://aliireza.github.io/files/ddio-atc20.pdf)
[[Slides]](https://aliireza.github.io/files/ddio-atc20-slides.pdf)
[[Poster]](http://www.diva-portal.org/smash/record.jsf?pid=diva2%3A1426845&dswid=5214)
[[Video]](https://www.usenix.org/conference/atc20/presentation/farshin)
<br />
<br />
We study the current implementation of Direct Cache Access (DCA) in Intel processors, called Data Direct I/O (DDIO) technology. Our paper shows that it is important to understand the details of DDIO and to tune/optimize it appropriately for a given Internet service to achieve high-performance, especially with the introduction of multi-hundred-gigabit networks. A preliminary version of this paper has been presented in the [EuroSys'20](https://www.eurosys2020.org/) poster session.
<br />

- **Make the Most out of Last Level Cache in Intel Processors ([EuroSys'19](https://eurosys2019.org/))**
<br />
**Alireza Farshin**, Amir Roozbeh, Gerald Q. Maguire Jr., and Dejan Kostic
<br />
(Acceptance Rate: 45/207 ≈ 21.7%)
<br />
[[Paper]](https://aliireza.github.io/files/slice-aware-eurosys19.pdf)
[[Slides]](https://aliireza.github.io/files/slice-aware-eurosys19-slides.pdf)
[[Poster]](https://aliireza.github.io/files/slice-aware-eurosys19-poster.pdf)
[[Video]](https://se.inf.tu-dresden.de/eurosys2019/Video/26_3/Alireza%20Farshin.mov)
<br />
<br />
We exploited the characteristics of non-uniform cache architecture (NUCA) in recent Intel processors to introduce a new memory management scheme. The results of our work showed that our proposed scheme could reduce the tail latencies in latency-critical Network Function Virtualization (NFV) service chains by 21.5%. Furthermore, our work demonstrated that optimizing the computer systems and taking advantage of nanosecond improvements could have a higher impact on the performance of networking applications. This work has been featured in the [Ericsson Blog](https://www.ericsson.com/en/blog/2019/3/maximizing-cots-hardware-performance-with-cpu-memory-management), [Tech Xplore](https://techxplore.com/news/2019-07-cache-intel-processors-packet.html), [AlphaGalileo](https://www.alphagalileo.org/en-gb/Item-Display/ItemId/180749?returnurl=https://www.alphagalileo.org/en-gb/Item-Display/ItemId/180749), [Twitter](https://twitter.com/matt_dz/status/1101137210152288257), [KTH main page](https://www.kth.se/en/aktuellt/nyheter/forskare-pa-g-1.890770), and [KTH EECS news](https://www.kth.se/en/eecs/nyheter/a-positive-side-effect-of-cache-monitoring-doing-good-rather-than-evil-1.912507).


---

Personal
======

In my free time, I play piano and bass guitar. I am also trying to teach myself to compose minimal music, check my [SoundCloud playlist](https://soundcloud.com/alireza-farshin/sets/stockholm-stories).
