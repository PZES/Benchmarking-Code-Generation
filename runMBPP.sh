#!/bin/bash
MODEL=$1
IP=$2

python -m lm_eval \
  --model local-chat-completions \
  --model_args "model=$MODEL,base_url=http://$IP:1234/v1/chat/completions,num_concurrent=3,tokenized_requests=False,max_length=4096" \
  --tasks mbpp \
  --apply_chat_template \
  --output_path results/${MODEL}_mbpp \
  --confirm_run_unsafe_code