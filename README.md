# Project 4: Algorithm implementation and evaluation: Collaborative Filtering

### [Project Description](doc/project4_desc.md)

Term: Spring 2020

+ Team # group 8
+ Projec title: Collaborative Filtering Algorithm Implementation and Evaluation
+ Team members
	+ Shuxin Chen (sc4599)
	+ Jia Li (jl5520)
	+ Wenfeng Lyu (wl2733)
	+ Daniel Schmidle (dps2150)
	+ Yuyao Wang (yw3395)
+ Project summary: In this project, the datasets that we are going to use describe 5-star ratings from a movie recommendation service. We implemented two methods for collaborative filtering from scratch, namely Gradient Descent with Probabilistic Assumptions (A2) and Alternating Least Squares (A3). Then we have used SVD with Kernel Ridge Regression (P3) for post-processing to improve prediction accuracy. In the end, we compared and summarized the performance of these two methods given the same post-processing method (SVD with KRR).
	
**Contribution statement**:  
+ Shuxin Chen: Contributed to the A3/P3 with Yuyao: Write the A3 post-processing part, helped Yuyao Wang completed the A3 (Alternating Least Squares) code and contributed to complete the final report.
+ Jia Li: Brain storm. Try to help with A2 (Gradient Descent with Probabilistic Assumptions), A2 post-processing parts and with complete the final report, but make little contribution.
+ Wenfeng Lyu: Write the main.rmd and final report, summarise and organise other's work, prepare the presentation slides and record, organise the github.
+ Daniel Schmidle:  Write the entire A2 and A2 post-processing parts by myself without help of other team member, and contributed to complete the final report. 
+ Yuyao Wang: Contributed to the A3/P3 with Shuxin: Write the A3 (Alternating Least Squares) part, and helped Shuxin Chen completed the A3 post-processing code, and contributed to complete the final report.

All team members approve our work presented in this GitHub repository including this contributions statement.

Following [suggestions](http://nicercode.github.io/blog/2013-04-05-projects/) by [RICH FITZJOHN](http://nicercode.github.io/about/#Team) (@richfitz). This folder is orgarnized as follows.

```
proj/
├── lib/
├── data/
├── doc/
├── figs/
└── output/
```

Please see each subfolder for a README file.
