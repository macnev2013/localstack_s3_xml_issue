# LocalstackS3Issue

The following project illustrates a breaking change in LocalStack's S3 XML response.
To reproduce the issue:

1. install elixir in your operating system
2. execute `mix deps.get` from the root directory of this project
3. execute `mix escript.build` -- this will create an executable called `localstack_s3_issue` within the directory that you build
4. start an instance of localstack using the docker-compose.yaml in this directory
5. seed the localstack instance by running `bash seed_localstack.sh`
6. execute `localstack_issue` and the program will crash 
   - Focus on the last line of the crash:  `  (sweet_xml 0.7.3) lib/sweet_xml.ex:296: SweetXml.do_parse/2` ; this error indicates that the XML parser is crashing
7. comment out L14 of docker-compose: ` PROVIDER_OVERRIDE_S3: "asf"` and restart the localstack instance using the modified docker-compose
8. seed the localstack instance by running `bash seed_localstack.sh`
9. execute `localstack_issue` and the program will run successfully

The issue is related the new XML response schema of LocalStack, specifically the outermost container type mismatch
 <ListAllMyBucketsResult> vs  <ListBucketsOutput>

 