CUDA_VISIBLE_DEVICES=0,1 python train_gsn.py \
--base_config 'configs/models/gsn_new_config.yaml' \
--log_dir 'logs' \
data_config.dataset='new' \
data_config.data_dir='data/new'