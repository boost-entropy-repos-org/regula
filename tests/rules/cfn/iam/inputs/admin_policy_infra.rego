# Copyright 2020-2021 Fugue, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This package was automatically generated from:
#
#     tests/rules/cfn/iam/inputs/admin_policy_infra.cfn
#
# using `generate_test_inputs.sh` and should not be modified
# directly.
#
# It provides three inputs for testing:
# - mock_input: The resource view input as passed to advanced rules
# - mock_resources: The resources present as a convenience for tests
# - mock_plan_input: The original plan input as generated by terraform
package tests.rules.cfn.iam.inputs.admin_policy_infra
import data.fugue.resource_view.resource_view_input
mock_input = ret {
  ret = resource_view_input with input as mock_plan_input
}
mock_resources = mock_input.resources
mock_plan_input = {
  "AWSTemplateFormatVersion": "2010-09-09",
  "Resources": {
    "ValidRole01": {
      "Type": "AWS::IAM::Role",
      "Properties": {
        "AssumeRolePolicyDocument": {
          "Version": "2012-10-17",
          "Statement": [
            {
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ec2.amazonaws.com"
                ]
              },
              "Action": [
                "sts:AssumeRole"
              ]
            }
          ]
        }
      }
    },
    "ValidPolicy01": {
      "Type": "AWS::IAM::Policy",
      "Properties": {
        "Roles": [
          {
            "Ref": "ValidRole01"
          }
        ],
        "PolicyName": "valid_policy_01",
        "PolicyDocument": {
          "Version": "2012-10-17",
          "Statement": {
            "Effect": "Allow",
            "Action": [
              "ec2:StartInstances"
            ],
            "Resource": [
              "*"
            ]
          }
        }
      }
    },
    "ValidPolicy02": {
      "Type": "AWS::IAM::Policy",
      "Properties": {
        "Roles": [
          {
            "Ref": "ValidRole01"
          }
        ],
        "PolicyName": "valid_policy_02",
        "PolicyDocument": {
          "Version": "2012-10-17",
          "Statement": [
            {
              "Effect": "Allow",
              "Action": [
                "ec2:StartInstances"
              ],
              "Resource": [
                "*"
              ]
            },
            {
              "Effect": "Allow",
              "Action": "*",
              "Resource": {
                "Fn::GetAtt": [
                  "ValidRole01",
                  "Arn"
                ]
              }
            }
          ]
        }
      }
    },
    "ValidPolicy03": {
      "Type": "AWS::IAM::Policy",
      "Properties": {
        "Roles": [
          {
            "Ref": "ValidRole01"
          }
        ],
        "PolicyName": "valid_policy_03",
        "PolicyDocument": {
          "Version": "2012-10-17",
          "Statement": {
            "Effect": "Deny",
            "Action": "*",
            "Resource": "*"
          }
        }
      }
    },
    "InvalidRole01": {
      "Type": "AWS::IAM::Role",
      "Properties": {
        "AssumeRolePolicyDocument": {
          "Version": "2012-10-17",
          "Statement": [
            {
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ec2.amazonaws.com"
                ]
              },
              "Action": [
                "sts:AssumeRole"
              ]
            }
          ]
        },
        "Policies": [
          {
            "PolicyName": "invalid_role_01",
            "PolicyDocument": {
              "Version": "2012-10-17",
              "Statement": [
                {
                  "Effect": "Allow",
                  "Action": "*",
                  "Resource": "*"
                }
              ]
            }
          }
        ]
      }
    },
    "InvalidUser01": {
      "Type": "AWS::IAM::User",
      "Properties": {
        "Policies": [
          {
            "PolicyName": "invalid_user_01",
            "PolicyDocument": {
              "Version": "2012-10-17",
              "Statement": [
                {
                  "Effect": "Allow",
                  "Action": "*",
                  "Resource": "*"
                }
              ]
            }
          }
        ]
      }
    },
    "InvalidGroup01": {
      "Type": "AWS::IAM::Group",
      "Properties": {
        "Policies": [
          {
            "PolicyName": "invalid_group_01",
            "PolicyDocument": {
              "Version": "2012-10-17",
              "Statement": [
                {
                  "Effect": "Allow",
                  "Action": "*",
                  "Resource": "*"
                }
              ]
            }
          }
        ]
      }
    },
    "InvalidPolicy01": {
      "Type": "AWS::IAM::Policy",
      "Properties": {
        "Roles": [
          {
            "Ref": "InvalidRole01"
          }
        ],
        "PolicyName": "invalid_policy_01",
        "PolicyDocument": {
          "Version": "2012-10-17",
          "Statement": [
            {
              "Effect": "Allow",
              "Action": "*",
              "Resource": "*"
            }
          ]
        }
      }
    },
    "InvalidPolicy02": {
      "Type": "AWS::IAM::Policy",
      "Properties": {
        "Roles": [
          {
            "Ref": "InvalidRole01"
          }
        ],
        "PolicyName": "invalid_policy_02",
        "PolicyDocument": {
          "Version": "2012-10-17",
          "Statement": [
            {
              "Effect": "Allow",
              "Action": [
                "*",
                "elasticache:DescribeCacheClusters"
              ],
              "Resource": [
                "*"
              ]
            }
          ]
        }
      }
    },
    "InvalidPolicy03": {
      "Type": "AWS::IAM::Policy",
      "Properties": {
        "Roles": [
          {
            "Ref": "InvalidRole01"
          }
        ],
        "PolicyName": "invalid_policy_03",
        "PolicyDocument": {
          "Version": "2012-10-17",
          "Statement": {
            "Effect": "Allow",
            "Action": [
              "*",
              "elasticache:DescribeCacheClusters"
            ],
            "Resource": [
              "*"
            ]
          }
        }
      }
    }
  }
}
