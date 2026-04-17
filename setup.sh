echo "repeats: 10" >> $(find / -name "*.yaml" -path "*/humaneval/*" | head -1)
export HF_ALLOW_CODE_EVAL=1