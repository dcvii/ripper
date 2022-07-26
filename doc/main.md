## Teva Parallel Test

The idea behind this test is to understand the performance dynamics of automatically replacing a failed database node in a small cluster. In our case study we have encountered severe performance problems on a 4 node 4 shard eon cluster. When a node is replaced with a new one and added back into the cluster, it has been showed that the newly integrated node is almost never the initiator for new queries. This bogs down other nodes and defeats some aspects of load balancing. 

## Four Shard Crash Plan

Abstract This test is to determine the number of queries that are processed by the cluster in a way that is appropriately balanced. Our aim is to load up a vertica cluster with real and fake users that will be running typical queries. We will then monitor how those queries are being processed and

Test Preparation
1. Get a set of sample queries from PROD


###alphabetical order problem
We speculate that differences in the order that nodes are assigned IP addresses causes complications with backup and restore processes. 

###bug confirmed
A bug has been documented and the problem replicated. VER-82290 is the ticket in Jira. At this point we should consider the viability of this tack towards proving the performance problem theory.  

### first workaround
Despite the bug, we found that a 