
# Cache

Pronounced as "CASH"


## What is a cache?


A cache -- pronounced CASH -- is hardware or software that is used to store something, usually data, temporarily in a computing environment.

It is a small amount of faster, more expensive memory used to improve the performance of recently or frequently accessed data. Cached data is stored temporarily in an accessible storage media that's local to the cache client and separate from the main storage. Cache is commonly used by the central processing unit (CPU), applications, web browsers and operating systems.

Cache is used because bulk or main storage can't keep up with the demands of clients. Cache decreases data access times, reduces latency and improves input/output (I/O). Because almost all application workloads depend on I/O operations, the caching process improves application performance.


## How does a cache work?

When a cache client attempts to access data, it first checks the cache. If the data is found there, that is referred to as a cache hit. The percent of attempts that result in a cache hit is called the cache hit rate or ratio.

Requested data that isn't found in the cache -- referred to as a cache miss -- is pulled from main memory and copied into the cache. How this is done, and what data is ejected from the cache to make room for the new data, depends on the caching algorithm, cache protocols and system policies being used.


##What are the benefits of caches?

There are several benefits of caching, including the following:

- Performance. Storing data in a cache allows a computer to run faster. For example, a browser cache that stores files from previous browsing sessions speeds up access to follow up sessions. A database cache speeds up data retrieval that would otherwise take a good bit of time and resources to download.
- Offline work. Caches also let applications function without an internet connection. Application cache provides quick access to data that has been recently accessed or is frequently used. However, cache may not provide access to all application functions.
- Resource efficiency. Besides speed and flexibility, caching helps physical devices conserve resources. For example, fast access to cache conserves battery power.


## What are the drawbacks of caches?

There are issues with caches, including the following:

- Corruption. Caches can be corrupted, making stored data no longer useful. Data corruption can cause applications such as browsers to crash or display data incorrectly.
- Performance. Caches are generally small stores of temporary memory. If they get too large, they can cause performance to degrade. They also can consume memory that other applications might need, negatively impacting application performance.
- Outdated information. Sometimes an app cache displays old or outdated information. This can cause an application glitch or return misleading information. If a website or application gets updated on the internet, using a cached version from a previous session would not reflect the update. This is not a problem for static content but is a problem for dynamic content that changes over sessions or between sessions.


## Cache algorithms

Instructions for cache maintenance are provided by cache algorithms. Some examples of cache algorithms include the following:

- Least Frequently Used keeps track of how often a cache entry is accessed. The item that has the lowest count gets removed first.
- Least Recently Used puts recently accessed items near the top of the cache. When the cache reaches its limit, the least recently accessed items are removed.
- Most Recently Used removes the most recently accessed items first. This approach is best when older items are more likely to be used.
