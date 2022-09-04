---
permalink: /
title: "About Me"
excerpt: "About me"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

I am a doctoral student in the Network Systems Laboratory ([NSLab](https://www.kth.se/blogs/nslab/)) at KTH Royal Institute of Technology and I am doing research under the supervision of Professor [Dejan Kostic](https://people.kth.se/~dejanko/) and Professor [Gerald Q. Maguire Jr.](https://people.kth.se/~maguire/) I have received my B.Sc. in Electrical Engineering (Electronics) from [Sharif University of Technology](http://www.en.sharif.edu/), Tehran, Iran and My M.Sc. in Electrical Engineering (Digital Electronic Systems) from [Amirkabir University of Technology](https://aut.ac.ir/en), Tehran, Iran.

For more information, please check my <img src="https://github.com/FortAwesome/Font-Awesome/blob/6.x/svgs/solid/file-lines.svg" height="1em">[résumé](https://aliireza.github.io/files/AlirezaFarshin_resume.pdf) or full <img src="https://github.com/FortAwesome/Font-Awesome/blob/6.x/svgs/solid/book.svg" height="1em">[CV](https://aliireza.github.io/files/AlirezaFarshin_CV.pdf).


<iframe width="560" height="315" src="https://www.youtube.com/embed/A7A4nEXrm3s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

Research
======
My research interests include computer networks and networked systems. During my doctoral studies, I am trying to improve the performance of Network Function Virtualization (NFV) service chains by using low-level optimization techniques. You can read more in my [licentiate thesis](http://kth.diva-portal.org/smash/record.jsf?pid=diva2%3A1305108&dswid=947).

---

Selected Publications
======

- PacketMill: Toward per-core 100-Gbps Networking ([ASPLOS'21](https://asplos-conference.org/2021))
<br />
(Alireza Farshin, Tom Barbette, Amir Roozbeh, Gerald Q. Maguire Jr., and Dejan Kostic)
<br />
[[Paper]](https://aliireza.github.io/files/packetmill-asplos21.pdf)
[[Extended Abstract]](https://aliireza.github.io/files/packetmill-asplos21-extended_abstract.pdf)
[[Slides]](https://aliireza.github.io/files/packetmill-asplos21-slides.pdf)
[[Video]](https://play.kth.se/media/PacketMillA+Toward+Per-Core+100-Gbps+Networking/0_7rvtusfo)
<br />
<br />
We present [PacketMill](https://packetmill.io/), a system for optimizing software packet processing, which (i) introduces a new model to efficiently manage packet metadata and (ii) employs code-optimization techniques to better utilize commodity hardware. PacketMill grinds the whole packet processing stack, from the high-level network function configuration file to the low-level userspace network (specifically DPDK) drivers, to mitigate inefficiencies and produce a customized binary for a given network function. Our evaluation results show that PacketMill increases throughput (up to 36.4 Gbps - 70%) & reduces latency (up to 101 us - 28%) and enables nontrivial packet processing (e.g., router) at ≈100 Gbps, when new packets arrive >10× faster than main memory access times, while using only one processing core.
<br />

- Reexamining Direct Cache Access to Optimize I/O Intensive Applications for Multi-hundred-gigabit Networks ([ATC'20](https://www.usenix.org/conference/atc20))
<br />
(Alireza Farshin, Amir Roozbeh, Gerald Q. Maguire Jr., and Dejan Kostic)
<br />
[[Paper]](https://aliireza.github.io/files/ddio-atc20.pdf)
[[Slides]](https://aliireza.github.io/files/ddio-atc20-slides.pdf)
[[Poster]](http://www.diva-portal.org/smash/record.jsf?pid=diva2%3A1426845&dswid=5214)
[[Video]](https://people.kth.se/~farshin/documents/ddio-atc20-video.mp4)
<br />
<br />
We study the current implementation of Direct Cache Access (DCA) in Intel processors, called Data Direct I/O (DDIO) technology. Our paper shows that it is important to understand the details of DDIO and to tune/optimize it appropriately for a given Internet service to achieve high-performance, especially with the introduction of multi-hundred-gigabit networks.
<br />

- Make the Most out of Last Level Cache in Intel Processors ([EuroSys'19](https://eurosys2019.org/))
<br />
(Alireza Farshin, Amir Roozbeh, Gerald Q. Maguire Jr., and Dejan Kostic)
<br />
[[Paper]](https://aliireza.github.io/files/slice-aware-eurosys19.pdf)
[[Slides]](https://aliireza.github.io/files/slice-aware-eurosys19-slides.pdf)
[[Poster]](https://aliireza.github.io/files/slice-aware-eurosys19-poster.pdf)
[[Video]](https://se.inf.tu-dresden.de/eurosys2019/Video/26_3/Alireza%20Farshin.mov)
<br />
<br />
We exploited the characteristics of non-uniform cache architecture (NUCA) in recent Intel processors to introduce a new memory management scheme. The results of our work showed that our proposed scheme could reduce the tail latencies in latency-critical Network Function Virtualization (NFV) service chains by 21.5%. Furthermore, our work demonstrated that optimizing the computer systems and taking advantage of nanosecond improvements could have a higher impact on the performance of networking applications.

