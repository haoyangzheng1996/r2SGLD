# Reflected Replica Exchange Stochastic Gradient Langevin Dynamics

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


## Requirement
Please refer to "env_image_classification.yml"


## ResNet on CIFAR100
For SGDM, please run:
```python
$ python bayes_cnn.py -sn 1000 -chains 1 -lr 2e-5 -T 0 -if_domain False -batch 2048
```

For R-SGDM, please run:
```python
$ python bayes_cnn.py -sn 1000 -chains 1 -lr 2e-5 -T 0 -if_domain True -batch 2048
```

For SGHMC, please run:
```python
$ python bayes_cnn.py -sn 1000 -chains 1 -lr 2e-5 -bias_F 1.5e7 -if_domain False -batch 2048
```

For R-SGHMC, please run:
```python
$ python bayes_cnn.py -sn 1000 -chains 1 -lr 2e-5 -bias_F 1.5e7 -if_domain True -batch 2048
```

For cycSGHMC, please run:
```python
$ python bayes_cnn.py -optimizer csgld -sn 1000 -chains 1 -lr 4e-5 -bias_F 1.5e7 -if_domain False -batch 2048
```

For R-cycSGHMC, please run:
```python
$ python bayes_cnn.py -optimizer csgld -sn 1000 -chains 1 -lr 4e-5 -bias_F 1.5e7 -if_domain True -batch 2048
```

For reSGHMC, please run:
```python
$ python bayes_cnn.py -sn 1000 -chains 4 -lr 2e-5 5 -bias_F 1.5e7 -if_domain False -batch 2048
```

For r2SGHMC, please run:
```python
$ python bayes_cnn.py -sn 1000 -chains 4 -lr 2e-5 5 -bias_F 1.5e7 -if_domain True -batch 2048
```

## Results
![image](https://github.com/haoyangzheng1996/r2SGLD/assets/38525155/94c0f090-f80d-47f8-986a-ecdb0c5fa9aa)

## References:
This repo is built upon [Replica Exchange Stochastic Gradient MCMC](https://github.com/WayneDW/Variance_Reduced_Replica_Exchange_SGMCMC/tree/main)
