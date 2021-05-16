mkdir experiments

for epoch in 3
do
    python3 run_lm_finetuning.py \
    --model_name_or_path distilgpt2 \
    --model_type gpt2 \
    --train_data_file TrainingData.txt \
    --output_dir experiments/epochs_$epoch \
    --do_train \
    --overwrite_output_dir \
    --per_gpu_train_batch_size 1 \
    --num_train_epochs $epoch 
done