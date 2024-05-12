# Multi-modal Simulation


# Prerequisites
Please refer to "env_dynamic_multimodal.yml" 

# Usage
For SGLD, please run:
```
python3 python sample_with_bound.py --optimizer 'sgld' --lr 5e-4 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type flower --if_include_domain True --radius 2
```

For cycSGLD, please run:
```
python3 python sample_with_bound.py --optimizer 'cyclic_sgld' --lr 1e-3 --M 5 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type flower --if_include_domain True --radius 2
```

For SGLD, please run:
```
python3 python sample_with_bound.py --optimizer 'resgld' --lr 5e-4 --lr_gap 3.0 --hat_var 9.5 --num_points 1000 --save_after 10 --n_epoch 500000 --domain_type flower --if_include_domain True --radius 2
```

You can also run:
```
source main_sample.sh
```

## Results
![image](https://github.com/haoyangzheng1996/r2SGLD/assets/38525155/ae2cd676-136b-4a30-a0dc-0250f83c0b2b)

# Kullback–Leibler Divergence
To plot KL divergence, please run:
```
python3 python run_flower.py --num_points 100 --M 5 --warm_up 1000 --plot_after 500 --n_epoch 200000
```

## Results
![sgld_flower_20240511](https://github.com/haoyangzheng1996/r2SGLD/assets/38525155/9b89d6e0-081a-4c64-9795-e443afd756f5)

