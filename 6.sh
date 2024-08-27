for seed in 15 25 35
do
# ipl
    # ipl hopper MR
    python scripts/train.py --config output_configs/config_hopper-medium-replay-v2.yaml --path "saved/hopper-medium-replay_$seed"
    python scripts/train.py --config output_configs/config_hopper-medium-replay-v2_0.5.yaml --path "saved/hopper-medium-replay_0.5_$seed"
    python scripts/train.py --config output_configs/config_hopper-medium-replay-v2_0.2.yaml --path "saved/hopper-medium-replay_0.2_$seed"
    python scripts/train.py --config output_configs/config_hopper-medium-replay-v2_0.1.yaml --path "saved/hopper-medium-replay_0.1_$seed"

    # ipl hopper ME
    python scripts/train.py --config output_configs/config_hopper-medium-expert-v2.yaml --path "saved/hopper-medium-expert_$seed"

    # ipl walker M
    python scripts/train.py --config output_configs/config_walker2d-medium-v2.yaml --path "saved/walker2d-medium_$seed"

    # ipl walker MR
    python scripts/train.py --config output_configs/config_walker2d-medium-replay-v2.yaml --path "saved/walker2d-medium-replay_$seed"

    # ipl walker ME
    python scripts/train.py --config output_configs/config_walker2d-medium-expert-v2.yaml --path "saved/walker2d-medium-expert_$seed"
done