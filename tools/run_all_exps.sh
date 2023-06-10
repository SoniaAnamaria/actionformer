#!/bin/bash

python train.py configs/thumos_i3d.yaml --output final 2>&1 | tee ckpt/thumos_log_i3d.txt
python eval.py configs/thumos_i3d.yaml ckpt/thumos_i3d_final/ 2>&1 | tee ckpt/thumos_results_i3d.txt

python train.py configs/thumos_x3d.yaml --output final 2>&1 | tee ckpt/thumos_log_x3d.txt
python eval.py configs/thumos_x3d.yaml ckpt/thumos_x3d_final/ 2>&1 | tee ckpt/thumos_results_x3d.txt

python train.py configs/thumos_r2plus1d.yaml --output final 2>&1 | tee ckpt/thumos_log_r2plus1d.txt
python eval.py configs/thumos_r2plus1d.yaml ckpt/thumos_r2plus1d_final/ 2>&1 | tee ckpt/thumos_results_r2plus1d.txt
