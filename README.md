# LTTS---MiniProject
Applying System Development Lifecycle on my Final Year Project

# Abstract
Hardware Trojans embedded in the modern Integrated Chips (ICs) is the most adverse threat due to its stealthy nature and rare triggering occurrence. In this work, we have proposed a novel triggering mechanism of an Hardware Trojan model in the Finite State Machine. In particular, this work illustrates the design and placement of sequential Hardware Trojans, which are rarely activated/ observed during basic testing of a chip. The proposed trojan model, theoretical analysis of effectiveness and simulation results are evaluated to determine the impact of this Trojan in a sequential circuit. It is shown that careful design and placement of the sequential Trojan can evade existing trojan detection approaches. We use the metric FiF-FoF (fan-in-factor and fan-out-factor) to characterise an FSM state with respect to its vulnerability to host a Hardware Trojan (HT). The FiF-FoF defines the mobility among the FSM states by estimating how frequently a state can be reached from other states as well as the frequency of exit from the state. The uniform mobility among the states points to less stealthy place for HT and, therefore, less vulnerable. The explored HT exploits the state codes that are hard-to-reach or hard-to-exit. The HTs can be hidden behind such states to evade the detection schemes. The analysis/experimentation establishes that such HTs are rarely activated and hard to detect. 

# Idea from the PROOF OF CONCEPT
## Requirement 
We are going to design an Automated Malware Analysis System by using the above Trojan Model. The Malware Research Team (MRT) operates as a plug-in step to the Cyber Crime Department(CCD) process of investigating a computer based crime. After collection of raw evidence from affected computers in the form of bit-for-bit copies or disk images, the investigator will search the computer for keywords or other specific evidence. If malware is suspected to have played a role in the crime, the investigator will obviously have an interest in finding out which malware exists on the computer and what the role of that malware is. 

## Defining the System
To aid with this, the MRT is given a brief description of the case and a copy of the disk image (inputs to the system), performs a malware analysis process, and returns a report to the Cyber Crime Department(CCD) to assist them with solving the case.
The MRT has an internal process that is used to examine cases in a predictable, sustainable, and repeatable manner. This process consists of two major phases, which correspond to the primary requirements from the CCD: Detection (what malware exists?), and behavior analysis (what does that malware do?) 
A flow chart detailing the MRT’s interaction with CCD, processing of the case, and reporting of results is shown below
![](Images/1.png)
