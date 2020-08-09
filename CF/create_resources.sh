export clustername=$(aws cloudformation describe-stacks --stack-name ecs-demo-setup --query 'Stacks[0].Outputs[?OutputKey==`ClusterName`].OutputValue' --output text)

export target_group_arn=$(aws cloudformation describe-stack-resources --stack-name ecs-demo-alb | jq -r '.[][] | select(.ResourceType=="AWS::ElasticLoadBalancingV2::TargetGroup").PhysicalResourceId')

export vpc=$(aws cloudformation describe-stacks --stack-name ecs-demo-setup --query 'Stacks[0].Outputs[?OutputKey==`VpcId`].OutputValue' --output text)

export ecsTaskExecutionRole=$(aws cloudformation describe-stacks --stack-name ecs-demo-setup --query 'Stacks[0].Outputs[?OutputKey==`ECSTaskExecutionRole`].OutputValue' --output text)

export subnet_1=$(aws cloudformation describe-stacks --stack-name ecs-demo-setup --query 'Stacks[0].Outputs[?OutputKey==`PrivateSubnetOne`].OutputValue' --output text)

export subnet_2=$(aws cloudformation describe-stacks --stack-name ecs-demo-setup --query 'Stacks[0].Outputs[?OutputKey==`PrivateSubnetTwo`].OutputValue' --output text)

export security_group=$(aws cloudformation describe-stacks --stack-name ecs-demo-setup --query 'Stacks[0].Outputs[?OutputKey==`ContainerSecurityGroup`].OutputValue' --output text)
