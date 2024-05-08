template_file = 'configs/gym_locomotion/ipl_iql.yaml'
output_directory = 'output_configs/'

# Read the template config file
with open(template_file, 'r') as f:
    template_lines = f.readlines()

# Change this line in the template file
line_to_change = 37

env_names = [
    ("halfcheetah-medium-expert-v2", "halfcheetah-medium-expert-v2_49920_20_numTrials=1.npz"),
    ("halfcheetah-medium-replay-v2", "halfcheetah-medium-replay-v2_5000_20_numTrials=1.npz"),
    ("halfcheetah-medium-v2", "halfcheetah-medium-v2_24960_20_numTrials=1.npz"),
    ("hopper-medium-expert-v2", "hopper-medium-expert-v2_48800_20_numTrials=1.npz"),
    ("hopper-medium-replay-v2", "hopper-medium-replay-v2_9000_20_numTrials=1.npz"),
    ("hopper-medium-v2", "hopper-medium-v2_23000_20_numTrials=1.npz"),
    ("walker2d-medium-expert-v2", "walker2d-medium-expert-v2_49600_20_numTrials=1.npz"),
    ("walker2d-medium-replay-v2", "walker2d-medium-replay-v2_7000_20_numTrials=1.npz"),
    ("walker2d-medium-v2", "walker2d-medium-v2_24800_20_numTrials=1.npz"),
]

for env_name, dataset_path in env_names:
    # Copy the template lines
    new_lines = template_lines[:]

    # Modify the line in the copied lines
    new_lines[36] = f'eval_env: {env_name}\n'
    new_lines[42] = f'    name: {env_name}\n'
    new_lines[51] = f'    path: ipl_dataset/{dataset_path}'

    # Write the modified lines to a new file
    output_file = f'{output_directory}config_{env_name}.yaml'
    with open(output_file, 'w') as f:
        f.writelines(new_lines)