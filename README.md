In 2008, Blockchain was introduced to the world as the underlying technology of the Bitcoin electronic cash system. After more than a decade of development, various blockchain systems have been proposed with application going beyond the creation of a cryptocurrency. This course is organized around four 45-minute lectures on the theme of stochastic models in relation to the analysis of blockchain systems. See the [syllabus](/Syllabus/BLOCKASTICS_syllabus.pdf).

## Part 1: Blockchain concepts
A blockchain is a distributed data ledger maintained by achieving consensus among a number of nodes in Peer-to-peer network. After providing some preliminary definitions, we introduce the \textit{proof-of-work} and \textit{proof-of-stake} consensus protocols which are at the core of public and permissionless blochchains (like the bitcoin and ethereum ones). We further define three dimensions according to which a blockchain system may be evaluated including (1) efficiency, (2) decentralization and (3) security.

* Slides: [Lecture 1](/Slides/Lecture1/blockastics_lec_1.pdf)     
* Python notebooks: 
	- [Build a blockchain](/Python/lecture1_build_blockchain.ipynb)
	- [Blockchain data](/Python/Lecture1_blockchain_data.ipynb)


## Part 2: Simple models for blockchain performance analysis
A review of the mathematical models and tools used so far to assess the performance of blockchain systems is provided. They consist of standard models from the applied probability literature like random walks, Markov chains, urns and queues.

* Slides: [Lecture 2](/Slides/Lecture2/blockastics_lec_2.pdf)     
* Python notebooks: 
	- [Proof of stake and decentralization](/Python/lecture_2_POS_Decentralization.ipynb)
	- [Queueing model and efficiency](/Python/lecture_2_Efficiency.ipynb)


## Part 3: Risk models and blockchain mining
Mining blocks on a blockchain equipped with a proof of work consensus protocol is well-known to be resource-consuming. A miner bears the operational cost, mainly
electricity consumption and IT gear, of mining, and is compensated by a capital gain when a block is discovered. The profitability of mining is studied via stochastic models and tools borrowed from insurance risk theory. We consider the case of solo mining, pool mining and selfish mining.  

* Slides: [Lecture 3](/Slides/Lecture3/blockastics_lec_3.pdf)     
* Python notebooks: 
	- [Solo mining](/Python/Lecture3_solo_mining.ipynb)
	- [Pool mining](/Python/Lecture3_mining_pool.ipynb)
	- [Selfish mining](/Python/Lecture3_selfish_mining.ipynb)  


## Part 4: Decentralized finance and cryptoasset pricing
Blockchain creates an environment where multiple parties can interact directly and transparently. It is therefore immediately relevant to banks and financial institutions which incur huge middlemen costs in settlements and other back office operations. Decentralized finance (DeFi) offers a new financial architecture that is non-custodial, permissionless, openly auditable, pseudo-anonymous and with potential new capital efficiencies. An overview of the existing cryptoassets is given before discussing some pricing models for this new class of financial assets.

* Slides: [Lecture 4](/Slides/Lecture4/blockastics_lec_4.pdf)     

