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
#     tests/rules/cfn/vpc/inputs/ingress_22_infra.cfn
#
# using `generate_test_inputs.sh` and should not be modified
# directly.
#
# It provides three inputs for testing:
# - mock_input: The resource view input as passed to advanced rules
# - mock_resources: The resources present as a convenience for tests
# - mock_plan_input: The original plan input as generated by terraform
package tests.rules.cfn.vpc.inputs.ingress_22_infra
import data.fugue.resource_view.resource_view_input
mock_input = ret {
  ret = resource_view_input with input as mock_plan_input
}
mock_resources = mock_input.resources
mock_plan_input = {
  "Resources": {
    "Vpc01": {
      "Type": "AWS::EC2::VPC",
      "Properties": {
        "CidrBlock": "10.0.0.0/16"
      }
    },
    "ValidSecurityGroup01": {
      "Type": "AWS::EC2::SecurityGroup",
      "Properties": {
        "VpcId": {
          "Ref": "Vpc01"
        },
        "GroupDescription": "Description"
      }
    },
    "ValidSecurityGroup02": {
      "Type": "AWS::EC2::SecurityGroup",
      "Properties": {
        "VpcId": {
          "Ref": "Vpc01"
        },
        "GroupDescription": "Description",
        "SecurityGroupIngress": [
          {
            "CidrIp": "0.0.0.0/0",
            "FromPort": 80,
            "ToPort": 80,
            "IpProtocol": -1
          }
        ]
      }
    },
    "ValidSecurityGroup03": {
      "Type": "AWS::EC2::SecurityGroup",
      "Properties": {
        "VpcId": {
          "Ref": "Vpc01"
        },
        "GroupDescription": "Description",
        "SecurityGroupIngress": [
          {
            "CidrIpv6": "::/0",
            "FromPort": 80,
            "ToPort": 80,
            "IpProtocol": -1
          }
        ]
      }
    },
    "ValidSecurityGroup04": {
      "Type": "AWS::EC2::SecurityGroup",
      "Properties": {
        "VpcId": {
          "Ref": "Vpc01"
        },
        "GroupDescription": "Description"
      }
    },
    "ValidSecurityGroup04Ingress01": {
      "Type": "AWS::EC2::SecurityGroupIngress",
      "Properties": {
        "GroupId": {
          "Ref": "ValidSecurityGroup04"
        },
        "CidrIp": "192.168.1.7/32",
        "FromPort": 22,
        "ToPort": 22,
        "IpProtocol": -1
      }
    },
    "InvalidSecurityGroup01": {
      "Type": "AWS::EC2::SecurityGroup",
      "Properties": {
        "VpcId": {
          "Ref": "Vpc01"
        },
        "GroupDescription": "Description",
        "SecurityGroupIngress": [
          {
            "CidrIp": "0.0.0.0/0",
            "FromPort": 22,
            "ToPort": 22,
            "IpProtocol": -1
          }
        ]
      }
    },
    "InvalidSecurityGroup02": {
      "Type": "AWS::EC2::SecurityGroup",
      "Properties": {
        "VpcId": {
          "Ref": "Vpc01"
        },
        "GroupDescription": "Description",
        "SecurityGroupIngress": [
          {
            "CidrIp": "0.0.0.0/0",
            "FromPort": -1,
            "IpProtocol": -1
          }
        ]
      }
    },
    "InvalidSecurityGroup03": {
      "Type": "AWS::EC2::SecurityGroup",
      "Properties": {
        "VpcId": {
          "Ref": "Vpc01"
        },
        "GroupDescription": "Description",
        "SecurityGroupIngress": [
          {
            "CidrIpv6": "::/0",
            "FromPort": 20,
            "ToPort": 24,
            "IpProtocol": -1
          }
        ]
      }
    },
    "InvalidSecurityGroup04": {
      "Type": "AWS::EC2::SecurityGroup",
      "Properties": {
        "VpcId": {
          "Ref": "Vpc01"
        },
        "GroupDescription": "Description"
      }
    },
    "InvalidSecurityGroup04Ingress01": {
      "Type": "AWS::EC2::SecurityGroupIngress",
      "Properties": {
        "GroupId": {
          "Ref": "ValidSecurityGroup04"
        },
        "CidrIp": "0.0.0.0/0",
        "FromPort": 22,
        "ToPort": 22,
        "IpProtocol": -1
      }
    }
  }
}
