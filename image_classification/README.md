# Reflected Replica Exchange Stochastic Gradient Langevin Dynamics



### Requirement
Please refer to "environment.yml"


<p float="left">
  <img src="output/SGLD.gif" width="270" title="SGLD"/>
  <img src="output/reSGLD_vs_VR_reSGLD.gif" width="500" alt="Made with Angular" title="Angular" /> 
</p>


Please cite our paper if you find it useful in uncertainty estimations

```
@inproceedings{zheng2024r2sgld,
  title={Constrained Exploration via Reflected Replica Exchange Stochastic Gradient Langevin Dynamics},
  author={Zheng, Haoyang and Du, Hengrong and Feng, Qi and Deng, Wei and Lin, Guang},
  booktitle={International Conference on Machine Learning (ICML)},
  year={2024},
  organization={PMLR}
}
```



## Classification: ResNet on CIFAR100

Please run:
```python
$ python bayes_cnn.py -sn 1000 -chains 4 -lr 2e-5 -wdecay 5 -bias_F 1.5e7 -if_domain True -bound 4.0 -batch 2048
```


## References:
This repo is built upon [Replica Exchange Stochastic Gradient MCMC](https://github.com/WayneDW/Variance_Reduced_Replica_Exchange_SGMCMC/tree/main)