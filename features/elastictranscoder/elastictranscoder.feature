# Copyright 2012-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

# language: en
@elastictranscoder
Feature: Elastic Transcoder

  I want to use Amazon Elastic Transcoder

  @pipelines
  Scenario: Pipeline CRUD
    Given I create a pipeline
    And I list pipelines
    Then the list should contain the pipeline
    And I pause the pipeline
    And I read the pipeline
    Then the pipeline status should be "Paused"
    And I delete the pipeline

  @error
  Scenario: Error handling
    Given I create a pipeline with invalid parameters
    Then the error code should be "ValidationException"
