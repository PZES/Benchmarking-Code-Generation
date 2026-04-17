# Benchmarking-Code-Generation

How to run
First Download the models from HuggingFace and open LMStudio
Run the models and allow api connection
run setup.sh which sets env variable to allow code execution and sets HumanEval to run pass@5
then run
bash run_humaneval.sh qwen2.5-coder-7b-instruct 172.27.128.1
or 
bash run_mbpp.sh qwen2.5-coder-7b-instruct 172.27.128.1
