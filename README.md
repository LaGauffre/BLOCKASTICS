You will find on this page the research publications associated to the BLOCKASTICS project as well as some graduate level course materials.

A blockchain is a distributed ledger maintained by achieving consensus among a number of nodes in a peer-to-peer network. The blockchain technology has attracted a lot of interest after the advent of the bitcoin cryptocurrency in 2008. Since then, the blockchain concept has been used to develop decentralized systems to store and maintain the integrity of time-stamped transaction data across peer-to-peer networks. Besides the creation of a digital currency, blockchain applications include the sharing of IT resources, the registration of authentication certificate or the implementation of smart contracts.

---
Objectives:

The BLOCKASTICS project aims at building mathematical models to analyse the consensus protocols that allow the nodes to agree on a common data history. The consensus protocol must be analysed through three dimensions: (1) efficiency, characterized by the amount of data being processed per time unit, (2) decentralization, measured by the fairness of the decision-making power distribution between network actors and (3) security, assessed by the probability of success of attacks on the blockchain.

---


# Publications

* 2022 H. Albrecher, Dina Finger & **P.O. Goffard**, Blockchain mining in pools: Analyzing the trade-off between profitability and ruin, *Insurance: Mathematics and Economics*, [DOI](https://doi.org/10.1016/j.insmatheco.2022.04.004) [preprint](/Publications/blockchain_pool.pdf).

* 2021 H. Albrecher & **P.O. Goffard**, On the profitability of selfish blockchain mining under consideration of ruin, *Operations Research* , [DOI](https://doi.org/10.1287/opre.2021.2169), [preprint](/Publications/Albrecher_Goffard_Selfish_MineR2.pdf).

* 2019 **P.O. Goffard**, Fraud risk assessment within blockchain transactions, *Advances in Applied Probability*, [DOI](https://doi.org/10.1017/apr.2019.18), [preprint](/Publications/Fraud_Risk_Assessment_Blockchain_APT.pdf).

# Course materials

## Advanced topics in applied probability at UC, Santa Barbara

I taught a graduate class during spring 2022 (ten weeks) in the PSTAT department at UC, Santa Barbara. Here are the [Lecture notes](/lecture_notes/main_lecture_notes.pdf). 

*(Please that it is a work in progress, I am planning to write a more comprehensive account. Many references are missing).*

## BFS summer school

The material of this section is made of 3 45-50 minutes lectures covered during the first Bachelier Finance Society summer school that took place on September 2021

<details>
<summary> 1. Blockchain concepts</summary>
           <p>A blockchain is a distributed data ledger maintained by achieving consensus among a number of nodes in Peer-to-peer network. After providing some preliminary definitions, we introduce the  *proof-of-work* and *proof-of-stake* consensus protocols which are at the core of public and permissionless blochchains (like the bitcoin and ethereum ones). We further define three dimensions according to which a blockchain system may be evaluated including (1) efficiency, (2) decentralization and (3) security.</p>
</details>


* Slides: [Lecture 1](/Slides/BFS/Lecture1/blockastics_lec_1.pdf)  
* Recording: [Lecture 1](https://youtu.be/c_9LQEEwzE0)   
* Python notebooks: 
	- [Build a blockchain](/Python/lecture1_build_blockchain.ipynb)
	- [Blockchain data](/Python/Lecture1_blockchain_data.ipynb)


<details>
<summary>2. Simple models for blockchain performance analysis</summary>
           <p>A review of the mathematical models and tools used so far to assess the performance of blockchain systems is provided. They consist of standard models from the applied probability literature like random walks, Markov chains, urns and queues.</p>
</details>

* Slides: [Lecture 2](/Slides/BFS/Lecture2/blockastics_lec_2.pdf)
* Recording: [Lecture 2](https://youtu.be/QDt_ItxO3u0)      
* Python notebooks: 
	- [Proof of stake and decentralization](/Python/lecture_2_POS_Decentralization.ipynb)
	- [Queueing model and efficiency](/Python/lecture_2_Efficiency.ipynb)


<details>
<summary>3. Risk models and blockchain mining</summary>
           <p>Mining blocks on a blockchain equipped with a proof of work consensus protocol is well-known to be resource-consuming. A miner bears the operational cost, mainly
electricity consumption and IT gear, of mining, and is compensated by a capital gain when a block is discovered. The profitability of mining is studied via stochastic models and tools borrowed from insurance risk theory. We consider the case of solo mining, pool mining and selfish mining.</p>
</details>

* Slides: [Lecture 3](/Slides/BFS/Lecture3/blockastics_lec_3.pdf)
* Recording: [Lecture 3](https://youtu.be/NSB1Zjt8-_0)     
* Python notebooks: 
	- [Solo mining](/Python/Lecture3_solo_mining.ipynb)
	- [Pool mining](/Python/Lecture3_mining_pool.ipynb)
	- [Selfish mining](/Python/Lecture3_selfish_mining.ipynb)  

   
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
