#!/usr/bin/env bash

USERS_COUNT=${1};
TIME=${2};

TEST_CASE="test-plans/pet-store-test-plan.jmx";
TEST_CASE_DATA_SET="test-plans/pet-store-test-data-set.csv";
TEST_CASE_RESULT="pet-store-test-report/pet-store-test-results.log";
RESULT_FOLDER="pet-store-test-report/pet-store-test-html-report/";
TEST_CASE_REPORT="pet-store-test-report/pet-store-test-report.xml";

echo "-Jusers_count=$USERS_COUNT \n
      -Jpool_size=$POOL_SIZE \n
      -Jconnection_wait=$CONNECTION_WAIT \n
      -Time=$TIME \n
      -Test_Case=$TEST_CASE \n
      -Test_Case_Data_Set=$TEST_CASE_DATA_SET \n
      -Test_Case_Result=$TEST_CASE_RESULT \n
      -Test_Report=$TEST_CASE_REPORT \n
      -Jresult_folder=$RESULT_FOLDER"

java -jar ./jmeter/bin/ApacheJMeter.jar \
-Jusers_count="$USERS_COUNT" \
-Jtime="$TIME" \
-Jdata_set="$TEST_CASE_DATA_SET" \
-Jtest_case_report="$TEST_CASE_REPORT" \
-n -f -t "$TEST_CASE" -l "$TEST_CASE_RESULT" -e -o "$RESULT_FOLDER"
