####Not so much a question as a brief overview of what AWS services you've used in the past, how they fitted together, their strengths and weaknesses and which ones you liked/hated the most.

- S3 Buckets
  1. I designed a service responsible for centrilize photos retrieved from _facebook API_, _gmail API_ or from our systems and store them on S3 buckets.
  1. Also use S3 to host landing pages 

- IAM 
  1. in some situations we need to give access to developers to upload landing_pages, these users should have different access level accoring to their roles.

- EC2
  1. During a crise our _CI/CD_ stopped working and but our squad needs to keep working, the problem was that we couldn't merge nothing before run the tests _(It was impossible to run them in our local machines, it would take ages)_, so we configured a ec2 instance for running our tests with docker as provisory solution meanwhile devops team deal with our servers.
  1. In Another situation we had to use our dedicated server to run tests because they were working only in local environment but weren't working on CI/CD environment, so we needed to try different approaches in an environment similar to our CI/CD environment. 