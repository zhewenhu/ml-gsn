CUDA_VISIBLE_DEVICES=0,1 python3.8 train_gsn.py \
--base_config 'configs/models/gsn_new_config.yaml' \
--log_dir 'logs' \
--resume_from_path 'logs/checkpoints/last.ckpt' \
data_config.dataset='new' \
data_config.data_dir='data/new'