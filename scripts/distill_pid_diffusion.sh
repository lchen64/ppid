#########################################################################
# PID on CIFAR10
#########################################################################


OPENAI_LOGDIR=./experiment/pid_cifar10 mpirun -np 8 python cm_train.py \
    --training_mode one_shot_pinn_edm_edm \
    --target_ema_mode fixed \
    --start_ema 0.5 \
    --scale_mode fixed \
    --start_scales 250 \
    --total_training_steps 500 \
    --loss_norm lpips \
    --lr_anneal_steps 0 \
    --teacher_model_path model_zoo/edm-cifar10-32x32-uncond-vp.ckpt \
    --attention_resolutions "2" \
    --class_cond False \
    --use_scale_shift_norm True \
    --dropout 0.0 \
    --teacher_dropout 0.0 \
    --ema_rate 0.999,0.9999,0.99995 \
    --global_batch_size 64 \
    --microbatch -1 \
    --image_size 32 \
    --lr 0.0002 \
    --num_channels 128 \
    --num_res_blocks 4 \
    --resblock_updown True \
    --schedule_sampler uniform \
    --use_fp16 False \
    --weight_decay 0.0 \
    --weight_schedule uniform \
    --optimizer radam

#########################################################################



