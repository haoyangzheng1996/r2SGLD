# Reflected replica exchange Langevin Monte Carlo

```
@article{zheng2024constrained,
  title={Constrained Exploration via Reflected Replica Exchange Stochastic Gradient Langevin Dynamics},
  author={Zheng, Haoyang and Du, Hengrong and Feng, Qi and Deng, Wei and Lin, Guang},
  journal={arXiv preprint arXiv:2405.07839},
  year={2024}
}
```

# Introduction
Replica exchange stochastic gradient Langevin dynamics (reSGLD) is an effective sampler for non-convex learning in large-scale datasets. However, the simulation may encounter stagnation issues when the high-temperature chain delves too deeply into the distribution tails. To tackle this issue, we propose reflected reSGLD (r2SGLD): an algorithm tailored for constrained non-convex exploration by utilizing reflection steps within a bounded domain. Theoretically, we observe that reducing the diameter of the domain enhances mixing rates, exhibiting a **quadratic** behavior. Empirically, we test its performance through extensive experiments, including identifying dynamical systems with physical constraints, simulations of constrained multi-modal distributions, and image classification tasks. The theoretical and empirical findings highlight the crucial role of constrained exploration in improving the simulation efficiency.

![image](https://github.com/haoyangzheng1996/r2SGLD/assets/38525155/761a8e6f-f4dc-4502-8ac9-7785486d5274)


# Prerequisites
For dynamic system identification and multi-modal simulation, please refer to "**env_dynamic_multimodal.yml**";

For image classification, please refer to "**env_image_classification.yml**".

# Dynamic System Identification
See 
```
./dynamic_system
```

![image](https://github.com/haoyangzheng1996/r2SGLD/assets/38525155/786c2e29-ff1f-4625-b8b6-dc9d0ea8e169)

# Multi-modal Simulation
See 
```
./multimodal_simulation
```

![sgld_flower_20240511](https://github.com/haoyangzheng1996/r2SGLD/assets/38525155/9b89d6e0-081a-4c64-9795-e443afd756f5)

# Image Classification
See 
```
./image_classification
```

![image](https://github.com/haoyangzheng1996/r2SGLD/assets/38525155/1fbe8629-5d59-4912-8516-e853c9d6167f)


## Contact
Haoyang Zheng, Ph.D. candidate at the School of Mechanical Engineering, Purdue University

Email: zheng+528 at purdue dot edu

[More Aboue Me](https://haoyangzheng.github.io/)
