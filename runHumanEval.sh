#!/bin/bash

MODEL=$1
IP=$2

python -m lm_eval \
  --model local-completions \
  --model_args "model=$MODEL,base_url=http://$IP:1234/v1/completions,num_concurrent=1,tokenized_requests=False,tokenizer=Qwen/Qwen2.5-Coder-7B-Instruct,max_length=4096" \
  --tasks humaneval \
  --output_path results/${MODEL}_humaneval \
  --confirm_run_unsafe_code \
  --gen_kwargs "temperature=0.0"