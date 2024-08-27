for seed in 15 25 35
do
# ipl
    # ipl halfcheetah M
    python scripts/train.py --config output_configs/config_halfcheetah-medium-v2.yaml --path "saved/halfcheetah-medium_$seed"

    # ipl halfcheetah MR
    python scripts/train.py --config output_configs/config_halfcheetah-medium-replay-v2.yaml --path "saved/halfcheetah-medium-replay_$seed"

    # ipl halfcheetah ME
    python scripts/train.py --config output_configs/config_halfcheetah-medium-expert-v2.yaml --path "saved/halfcheetah-medium-expert_$seed"
    python scripts/train.py --config output_configs/config_halfcheetah-medium-expert-v2_0.5.yaml --path "saved/halfcheetah-medium-expert_0.5_$seed"
    python scripts/train.py --config output_configs/config_halfcheetah-medium-expert-v2_0.2.yaml --path "saved/halfcheetah-medium-expert_0.2_$seed"
    python scripts/train.py --config output_configs/config_halfcheetah-medium-expert-v2_0.1.yaml --path "saved/halfcheetah-medium-expert_0.1_$seed"

    # ipl hopper M
    python scripts/train.py --config output_configs/config_hopper-medium-v2.yaml --path "saved/hopper-medium_$seed"
done