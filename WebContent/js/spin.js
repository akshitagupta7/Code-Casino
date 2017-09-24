       var padding = {top:20, right:40, bottom:0, left:0},
            w = 500 - padding.left - padding.right,
            h = 500 - padding.top  - padding.bottom,
            r = Math.min(w, h)/2,
            rotation = 0,
            oldrotation = 0,
            picked = 100000,
            oldpick = [],
            color = d3.scale.category20();//category20c()
            //randomNumbers = getRandomNumbers();

        //http://osric.com/bingo-card-generator/?title=HTML+and+CSS+BINGO!&words=padding%2Cfont-family%2Ccolor%2Cfont-weight%2Cfont-size%2Cbackground-color%2Cnesting%2Cbottom%2Csans-serif%2Cperiod%2Cpound+sign%2C%EF%B9%A4body%EF%B9%A5%2C%EF%B9%A4ul%EF%B9%A5%2C%EF%B9%A4h1%EF%B9%A5%2Cmargin%2C%3C++%3E%2C{+}%2C%EF%B9%A4p%EF%B9%A5%2C%EF%B9%A4!DOCTYPE+html%EF%B9%A5%2C%EF%B9%A4head%EF%B9%A5%2Ccolon%2C%EF%B9%A4style%EF%B9%A5%2C.html%2CHTML%2CCSS%2CJavaScript%2Cborder&freespace=true&freespaceValue=Web+Design+Master&freespaceRandom=false&width=5&height=5&number=35#results

       var data = [//Operating systems
                   {"label":"Question 1",  "value":1,  "question":" A shared variable x, initialized to zero, is operated on by four concurrent processes W, X, Y, Z as follows. Each of the processes W and X reads x from memory, increments by one, stores it to memory, and then terminates. Each of the processes Y and Z reads x from memory, decrements by two, stores it to memory, and then terminates. Each process before reading x invokes the P operation (i.e., wait) on a counting semaphore S and invokes the V operation (i.e., signal) on the semaphore S after storing x to memory. Semaphore S is initialized to two. What is the maximum possible value of x after all processes complete execution?"},//2
				   
                     {"label":"Question 2",  "value":2,  "question":" A computer uses 46–bit virtual address, 32–bit physical address, and a three–level paged page table organization. The page table base register stores the base address of the first–level table (T1), which occupies exactly one page. Each entry of T1 stores the base address of a page of the second–level table (T2). Each entry of T2 stores the base address of a page of the third–level table (T3). Each entry of T3 stores a page table entry (PTE). The PTE is 32 bits in size. The processor used in the computer has a 1 MB 16 way set associative virtually indexed physically tagged cache. The cache block size is 64 bytes. What is the size of a page in KB in this computer?(Only write the numeric value)"}, //8
					 
                     {"label":"Question 3",  "value":3,  "question":" Consider a machine with 64 MB physical memory and a 32-bit virtual address space. If the page size is 4KB, what is the approximate size of the page table?(Answer Format:__MB OR __GB OR __TB OR __KB)"}, //2MB
					 
                     {"label":"Question 4",  "value":4,  "question":" Consider a hard disk with 16 recording surfaces (0-15) having 16384 cylinders (0-16383) and each cylinder contains 64 sectors (0-63). Data storage capacity in each sector is 512 bytes. Data are organized cylinder-wise and the addressing format is <cylinder no., surface no., sector no.> . A file of size 42797 KB is stored in the disk and the starting disk location of the file is <1200, 9, 40>. What is the cylinder number of the last sector of the file, if it is stored in a contiguous manner?"}, //1284
					 
                     {"label":"Question 5",  "value":5,  "question":" A system contains three programs and each requires three tape units for its operation. The minimum number of tape units which the system must have such that deadlocks never arise is _____."}, //7
					 
                     {"label":"Question 6",  "value":6,  "question":" Suppose the time to service a page fault is on the average 10 milliseconds, while a memory access takes 1 microsecond. Then a 99.99% hit ratio results in average memory access time of  ______ microseconds.(accurate upto 4 decimal digits)"}, //1.9999
					 
                     {"label":"Question 7",  "value":7,  "question":" Consider three processes, all arriving at time zero, with total execution time of 10, 20 and 30 units, respectively. Each process spends the first 20% of execution time doing I/O, the next 70% of time doing computation, and the last 10% of time doing I/O again. The operating system uses a shortest remaining compute time first scheduling algorithm and schedules a new process either when the running process gets blocked on I/O or when the running process finishes its compute burst. Assume that all I/O operations can be overlapped as much as possible. For what percentage of time does the CPU remain idle?(Answer format: __%)."}, //10.6
					 
                     {"label":"Question 8",  "value":8,  "question":" Consider three CPU-intensive processes, which require 10, 20 and 30 time units and arrive at times 0, 2 and 6, respectively. How many context switches are needed if the operating system implements a shortest remaining time first scheduling algorithm? Do not count the context switches at time zero and at the end."}, //2
					 
                     {"label":"Question 9",  "value":9,  "question":" A process executes the code:fork ();fork ();fork (); .The total number of child processes created is __?"}, //7
					 
                     {"label":"Question 10", "value":10, "question":" A file system with 300 GByte uses a file descriptor with 8 direct block address. 1 indirect block address and 1 doubly indirect block address. The size of each disk block is 128 Bytes and the size of each disk block address is 8 Bytes. The maximum possible file size in this file system is __Kbytes"}, //35
					 
                     {"label":"Question 11", "value":11, "question":" Let the page fault service time be 10ms in a computer with average memory access time being 20ns. If one page fault is generated for every 10^6 memory accesses,the effective access time for the memory is __ns"}, //30
					 
                     {"label":"Question 12", "value":12, "question":" An application loads 100 libraries at startup. Loading each library requires exactly one disk access. The seek time of the disk to a random location is given as 10ms. Rotational speed of disk is 6000rpm. If all 100 libraries are loaded from random locations on the disk, how long does it take to load all libraries? (The time to transfer data from the disk block once the head has been positioned at the start of the block may be neglected) ____s"}, //1.50
					 
                     {"label":"Question 13", "value":13, "question":" A system uses FIFO policy for page replacement. It has 4 page frames with no pages loaded to begin with. The system first accesses 100 distinct pages in some order and then accesses the same 100 pages but now in the reverse order. How many page faults will occur?"}, //196
					 
                     {"label":"Question 14", "value":14, "question":" A computer uses 46–bit virtual address, 32–bit physical address, and a three–level paged page table organization. The page table base register stores the base address of the first–level table (T1), which occupies exactly one page. Each entry of T1 stores the base address of a page of the second–level table (T2). Each entry of T2 stores the base address of a page of the third–level table (T3). Each entry of T3 stores a page table entry (PTE). The PTE is 32 bits in size. The processor used in the computer has a 1 MB 16 way set associative virtually indexed physically tagged cache. The cache block size is 64 bytes.What is the minimum number of page colours needed to guarantee that no two synonyms map to different sets in the processor cache of this computer?"}, // 8 //Computer Networks now
					 
                     {"label":"Question 15", "value":15, "question":" Consider a source computer(S) transmitting a file of size 106 bits to a destination computer(D)over a network of two routers (R1 and R2) and three links(L1, L2, and L3). L1connects S to R1; L2 connects R1 to R2; and L3 connects R2 to D.Let each link be of length 100 km. Assume signals travel over each link at a speed of 108 meters per second.Assume that the link bandwidth on each link is 1Mbps. Let the file be broken down into 1000 packets each of size 1000 bits. The total sum of transmission and propagation delays in transmitting the file from S to D is ___ms."}, //1005
					 
                     {"label":"Question 16", "value":16, "question":" Consider an instruction pipeline with five stages without any branch prediction: Fetch Instruction (FI), Decode Instruction (DI), Fetch Operand (FO), Execute Instruction (EI) and Write Operand (WO). The stage delays for FI, DI, FO, EI and WO are 5 ns, 7 ns, 10 ns, 8 ns and 6 ns, respectively. There are intermediate storage buffers after each stage and the delay of each buffer is 1 ns. A program consisting of 12 instructions I1, I2, I3, …, I12 is executed in this pipelined processor. Instruction I4 is the only branch instruction and its branch target is I9. If the branch is taken during the execution of this program, the time (in ns) needed to complete the program is?"}, //165
					 
                     {"label":"Question 17", "value":17, "question":" A computer has a 256 KByte, 4-way set associative, write back data cache with block size of 32 Bytes. The processor sends 32 bit addresses to the cache controller. Each cache tag directory entry contains, in addition to address tag, 2 valid bits, 1 modified bit and 1 replacement bit. The number of bits in the tag field of an address is?"}, //16
					 
                     {"label":"Question 18", "value":18, "question":" The message 11001001 is to be transmitted using the CRC polynomial x^3 + 1 to protect it from errors. The message that should be transmitted is ____.(Avoid extra spaces in answers)"}, //11001001011
					 
                    {"label":"Question 19", "value":19, "question":" Frames of 1000 bits are sent over a 10^6 bps duplex link between two hosts. The propagation time is 25ms. Frames are to be transmitted into this link to maximally pack them in transit (within the link). What is the minimum number of bits that will be required to represent the sequence numbers distinctly? Assume that no time gap needs to be given between transmission of two frames."}, //5
					
                    {"label":"Question 20", "value":20, "question":" Consider a token ring network with a length of 2 km having 10 stations including a monitoring station. The propagation speed of the signal is 2 × 108 m/s and the token transmission time is ignored. If each station is allowed to hold the token for 2 μsec, the minimum time for which the monitoring station should wait (in μsec)before assuming that the token is lost is ___(Answer format: __to__)."}, //28to30
					
                   
					
                    {"label":"Question 22", "value":21, "question":" Frames of 1000 bits are sent over a 10^6 bps duplex link between two hosts. The propagation time is 25ms. Frames are to be transmitted into this link to maximally pack them in transit (within the link).Suppose that the sliding window protocol is used with the sender window size of 2^i where is the number of bits identified in the previous question and acknowledgments are always piggybacked. After sending 2^i frames, what is the minimum time the sender will have to wait before starting transmission of the next frame? (Identify the closest choice ignoring the frame processing time.)"}, //18 
					
					 {"label":"Question 21", "value":22, "question":" A RAM chip has a capacity of 1024 words of 8 bits each (1K × 8). The number of 2 × 4 decoders with enable line needed to construct a 16K × 16 RAM from 1K × 8 RAM is ?"}, //5 //DS now
					
                    {"label":"Question 23", "value":23, "question":" A Young tableau is a 2D array of integers increasing from left to right and from top to bottom. Any unfilled entries are marked with ∞, and hence there cannot be any entry to the right of, or below a ∞. Consider a Young tableau consisting of unique entries. When an element is removed from a Young tableau, other elements should be moved into its place so that the resulting table is still a Young tableau (unfilled entries may be filled in with a ∞). The minimum number of entries (other than 1) to be shifted, to remove 1 from the given Young tableau is _______."}, // 5
					
                    {"label":"Question 24", "value":24, "question":" The order of a leaf node in a tree B+ tree is the maximum number of (value, data record pointer) pairs it can hold. Given that the block size is 1K bytes, data record pointer is 7 bytes long, the value field is 9 bytes long and a block pointer is 6 bytes long, what is the order of the leaf node?"}, //63
					
                    {"label":"Question 25", "value":25, "question":" A single array A[1..MAXSIZE] is used to implement two stacks. The two stacks grow from opposite ends of the array. Variables top1 and top2 (topl< top 2) point to the location of the topmost element in each of the stacks. If the space is to be used efficiently, the condition for “stack full” is (Avoid spaces and write in capitals)"}, //TOP1=TOP2-1
					
                    {"label":"Question 26", "value":26, "question":" The usual Θ(n^2) implementation of Insertion Sort to sort an array uses linear search to identify the position where an element is to be inserted into the already sorted part of the array. If, instead, we use binary search to identify the position, the worst case running time will be O(__)(Answer in capitals)"}, //N^2
					
                    {"label":"Question 27", "value":27, "question":" A B+ -tree index is to be built on the Name attribute of the relation STUDENT. Assume that all student names are of length 8 bytes, disk block are size 512 bytes, and index pointers are of size 4 bytes. Given this scenario, what would be the best choice of the degree (i.e. the number of pointers per node) of the B+ -tree."}, // 43
					
                    {"label":"Question 28", "value":28, "question":" A scheme for storing binary trees in an array X is as follows. Indexing of X starts at 1 instead of 0. the root is stored at X[1]. For a node stored at X[i], the left child, if any, is stored in X[2i] and the right child, if any, in X[2i+1]. To be able to store any binary tree on n vertices the minimum size of X should be __.(Write in capitals)"},//2^N-1
					
                    {"label":"Question 29", "value":29, "question":" Suppose we are sorting an array of eight integers using heapsort, and we have just finished some heapify (either maxheapify or minheapify) operations. The array now looks like this: 16 14 15 10 12 27 28.How many heapify operations have been performed on root of heap? "}, // 2
					
                    {"label":"Question 30", "value":30, "question":" Consider a weighted complete graph G on the vertex set {v1, v2, ..vn} such that the weight of the edge (vi, vj) is 2|i-j|. The weight of a minimum spanning tree of G is ___?(Write in capitals)."}, //2N-2
					
                    {"label":"Question 31", "value":31, "question":" A complete binary min-heap is made by including each integer in [1, 1023] exactly once. The depth of a node in the heap is the length of the path from the root of the heap to that node. Thus, the root is at depth 0. The maximum depth at which integer 9 can appear is _____?"},// 8
					
                    {"label":"Question 32", "value":32, "question":" Consider a hash function that distributes keys uniformly. The hash table size is 20. After hashing of how many keys will the probability that any new key hashed collides with an existing one exceed 0.5 ?"}, // 10
					
                    {"label":"Question 33", "value":33, "question":" A 3-ary max heap is like a binary max heap, but instead of 2 children, nodes have 3 children. A 3-ary heap can be represented by an array as follows: The root is stored in the first location, a[0], nodes in the next level, from left to right, is stored from a[1] to a[3]. The nodes from the second level of the tree from left to right are stored from a[4] location onward. An item x can be inserted into a 3-ary heap containing n items by placing x in the location a[n] and pushing it up the tree to satisfy the heap property. What is a valid sequence of elements in an array representing 3-ary max heap?.(Separate elements with single spaces)"},//9 5 6 8 3 1
					
                    {"label":"Question 34", "value":34, "question":" Let S be a stack of size N >= 1. Starting with the empty stack, suppose we push the first N natural numbers in sequence, and then perform N pop operations. Assume that Push and Pop operation take X seconds each, and Y seconds elapse between the end of one such stack operation and the start of the next operation. For M >= 1, define the stack-life of M as the time elapsed from the end of Push(M) to the start of the pop operation that removes M from S. The average stack-life of an element of this stack is __?(Answer in capitals without unnecessary spaces)"}, //N(X+Y)-X
					
                    {"label":"Question 35", "value":35, "question":" Consider N elements that are equally distributed in K stacks. In each stack, elements of it are arranged in ascending order (min is at the top in each of the stack and then increasing downwards). Given a queue of size N in which we have to put all N elements in increasing order. What will be the time complexity of the best known algorithm?(Answer format: O(__))."},//O(NlogK)
					
                    {"label":"Question 36", "value":36, "question":" Which data structure in a compiler is used for managing information about variables and their attributes?(Answer in capitals)"}, //SYMBOL TABLE
					
                    {"label":"Question 37", "value":37, "question":" Consider a situation where a client receives packets from a server. There may be differences in speed of the client and the server. Which data structure is best suited for synchronization?(Answer in capitals)"}, //QUEUE
					
                    {"label":"Question 38", "value":38, "question":" Which data structure is most efficient to find the top 10 largest items out of 1 million items stored in file?(Answer in capitals) "},//MIN HEAP
					
                    {"label":"Question 39", "value":39, "question":" BONUS QUESTION !! YOU JUST RECEIVED BONUS MARKS FOR LANDING ON THIS QUESTION !! CONGRATULATIONS !! NOW SPIN AGAIN."},
					
                    {"label":"Question 40", "value":40, "question":" BONUS QUESTION !! YOU JUST RECEIVED BONUS MARKS FOR LANDING ON THIS QUESTION !! CONGRATULATIONS !! NOW SPIN AGAIN."}, //reasoning and security
					
                    {"label":"Question 41", "value":41, "question":" Given a hash table T with 25 slots that stores 2000 elements, the load factor α for T is __."}, //80
					
                    {"label":"Question 42", "value":42, "question":" There is no electricity in your home. You have to wear socks. You trace the drawer and find out there are four socks in your drawer. The socks can be either black or white. You take out two of the socks from the drawer. Now the probability that the two socks are black is 1/2. Can you calculate the probability of taking out a pair of white socks from the drawer?"}, //0
					
                    {"label":"Question 43", "value":43, "question":" Between PCs and MACs, the ____ is the platform of choice for graphic design and animation.(Answer in capitals)"}, // MAC
					
                    {"label":"Question 44", "value":44, "question":" Process known as ____ is used by large retailers to study trends.(Answer in capitals)"}, //DATA MINING
					
                    {"label":"Question 45", "value":45, "question":" Let A = 1111 1010 arid B = 0000 1010 be two 8-bit 2's complement numbers. Their product in 2's complement is?(Avoid unnecessary spaces)."}, //11000100
					
                    {"label":"Question 46", "value":46, "question":" You are in a game of Russian Roulette with a revolver that has 3 bullets placed in three consecutive chambers. The cylinder of the gun will be spun once at the beginning of the game. Then, the gun will be passed between two players until it fires. Would you prefer to go FIRST or SECOND?(Answer in capitals)"}, //SECOND
                    
            ];       
        var hint = [
                     {"label":"Question 1",  "value":1,  "question":" Process W executes S=1, x=1 but it doesn't update the x variable."},
					 
                     {"label":"Question 2",  "value":2,  "question":" Size of T1 = 2 ^ x bytes(This is because T1 occupies exactly one page)."}, 
					 
                     {"label":"Question 3",  "value":3,  "question":" Number of entries in page table=(Virtual address space size/(page size)."},
					 
                     {"label":"Question 4",  "value":4,  "question":" 42797KB will take 85512 sectors (42797*1024 bytes / 512 bytes)."},
					 
                     {"label":"Question 5",  "value":5,  "question":" If 6 resources are there then it may be possible that all three process have 2 resources and waiting for 1 more resource."}, 
					 
                     {"label":"Question 6",  "value":6,  "question":" To calculate the average memory access time the formula requires time to service page fault, percantage of page hit and miss and the memory access time divided by 100."}, 
					 
                     {"label":"Question 7",  "value":7,  "question":" Let the three processes be p0, p1 and p2. p0 spends first 2 time units in I/O, 7 units of CPU time and finally 1 unit in I/O."},
					 
                     {"label":"Question 8",  "value":8,  "question":" Let three process be P0, P1 and P2 with arrival times 0, 2 and 6 respectively and CPU burst times 10, 20 and 30 respectively. At time 0, P0 is the only available process so it runs."},
					 
                     {"label":"Question 9",  "value":9,  "question":" There will be 1 child process created by the first line."}, 
					 
                     {"label":"Question 10", "value":10, "question":" Total number of possible addresses stored in a disk block = 128/8 = 16.Maximum number of addressable bytes due to direct address block = ?"},
					 
                     {"label":"Question 11", "value":11, "question":" Let P be the page fault rate.Effective Memory Access Time = p * (page fault service time) + some other terms as well."},
					 
                     {"label":"Question 12", "value":12, "question":" Since transfer time can be neglected, the average access time is sum of average seek time and average rotational latency."},
					 
                     {"label":"Question 13", "value":13, "question":" Access to 100 pages will cause 100 page faults."},
					 
                     {"label":"Question 14", "value":14, "question":" 1 MB 16-way set associative virtually indexed physically tagged cache(VIPT). The cache block size is 64 bytes. No of blocks is 2^20/2^6 = 2^14.      No of sets is 2^14/2^4 = 2^10."},
					 
                     {"label":"Question 15", "value":15, "question":" No hint"},
					 
                     {"label":"Question 16", "value":16, "question":" Pipeline will have to be stalled till Ei stage of l4 completes, as Ei stage will tell whether to take branch or not."},
					 
                     {"label":"Question 17", "value":17, "question":" No hint"}, 
					 
                     {"label":"Question 18", "value":18, "question":" No hint"}, 
					 
                     {"label":"Question 19", "value":19, "question":" Transmission delay for 1 frame = 1000/(10^6) = 1 ms and Propagation time = 25 ms."}, 
					 
                     {"label":"Question 20", "value":20, "question":"Length = 2 km.Propagation Speed v = 2*10^8 m/s. Token Holding Time = 2 micro sec"}, 
					 
					 
                     {"label":"Question 22", "value":21, "question":" Size of sliding window = 2^5 = 32 Transmission time for a frame = 1ms. Total time taken for 32 frames = 32ms."},
					 
					 {"label":"Question 21", "value":22, "question":" RAM chip size = 1k ×8[1024 words of 8 bits each].RAM to construct =16k ×16. Number of chips required = (16k x 16)/ ( 1k x 8)= (16k x 2)."},
					 
                     {"label":"Question 23", "value":23, "question":" No hint"},
					 
                     {"label":"Question 24", "value":24, "question":" Let order of leaf be m. A leaf node in B+ tree contains at most m record pointers, at most m values, and one disk block pointer."},
					 
                     {"label":"Question 25", "value":25, "question":" No hint"},
					 
                     {"label":"Question 26", "value":26, "question":" If we use binary search then there will be Log2(n!) comparisons in the worst case, which is Θ(nlog n)."},
					 
                     {"label":"Question 27", "value":27, "question":" Size of 1 record = 8 + 4 = 12. Let the order be N.No. of index values per block = N - 1."}, 
					 
                     {"label":"Question 28", "value":28, "question":" In a right skewed binary tree, node ‘A’ will be stored at index 1, ‘B’ at index 3, ‘C’ at index 7 and ‘D’ at index 15."},
					 
                     {"label":"Question 29", "value":29, "question":" In Heapsort, we first build a heap, then we do operations till the heap size becomes 1. "},
					 
                     {"label":"Question 30", "value":30, "question":" Weight of the minimum spanning tree= 2|2 – 1| + 2|3 – 2| + 2|4 – 3| + 2|5 – 4| …. "}, 
					 
                     {"label":"Question 31", "value":31, "question":" Here node with integer 1 has to be at root only. Now for maximum depth of the tree the following arrangement can be taken. Take root as level 1. make node 2 at level 2 as a child node of node 1 and so on for nodes 4,5,6,7 .. "},
					 
                     {"label":"Question 32", "value":32, "question":" As possible total spaces =20, and an entry will go into only 1 place."},
					 
                     {"label":"Question 33", "value":33, "question":" No hint"},
					 
                     {"label":"Question 34", "value":34, "question":" No hint"},
					 
                     {"label":"Question 35", "value":35, "question":" After extracting the min , add the next element from the stack from which we have got our 1st minimum. Time Complexity = O(K) (For Creating Heap of size K) "},
					 
                     {"label":"Question 36", "value":36, "question":" No hint"},
					 
                     {"label":"Question 37", "value":37, "question":" No hint"},
					 
                     {"label":"Question 38", "value":38, "question":" No hint"},
					 
                     {"label":"Question 39", "value":39, "question":" Hint for Bonus?"},
					 
                     {"label":"Question 40", "value":40, "question":" Hint For Bonus?"},
					 
                     {"label":"Question 41", "value":41, "question":" No hint"},
					 
                     {"label":"Question 42", "value":42, "question":" No hint"},
					 
                     {"label":"Question 43", "value":43, "question":" No hint"},
					 
                     {"label":"Question 44", "value":44, "question":" No hint"},
					 
                     {"label":"Question 45", "value":45, "question":" No hint"},
					 
                     {"label":"Question 46", "value":46, "question":" Russian Roulette is the practice of loading a bullet into one chamber of a revolver, spinning the cylinder, and then pulling the trigger while pointing the gun at one's own head"},
                     
             ];

        var svg = d3.select('#chart')
            .append("svg")
            .data([data])
            .attr("width",  w + padding.left + padding.right)
            .attr("height", h + padding.top + padding.bottom);

        var container = svg.append("g")
            .attr("class", "chartholder")
            .attr("transform", "translate(" + (w/2 + padding.left) + "," + (h/2 + padding.top) + ")");

        var vis = container
            .append("g");
            
        var pie = d3.layout.pie().sort(null).value(function(d){return 1;});

        // declare an arc generator function
        var arc = d3.svg.arc().outerRadius(r);

        // select paths, use arc generator to draw
        var arcs = vis.selectAll("g.slice")
            .data(pie)
            .enter()
            .append("g")
            .attr("class", "slice");
            

        arcs.append("path")
            .attr("fill", function(d, i){ return color(i); })
            .attr("d", function (d) { return arc(d); });

        // add the text
        arcs.append("text").attr("transform", function(d){
                d.innerRadius = 0;
                d.outerRadius = r;
                d.angle = (d.startAngle + d.endAngle)/2;
                return "rotate(" + (d.angle * 180 / Math.PI - 90) + ")translate(" + (d.outerRadius -10) +")";
            })
            .attr("text-anchor", "end")
            .text( function(d, i) {
                return data[i].label;
            });

        container.on("click", spin);


        function spin(d){
            
            container.on("click", null);
            
            //all slices have been seen, all done
            console.log("OldPick: " + oldpick.length, "Data length: " + data.length);
            if(oldpick.length == data.length){
                console.log("done");
                container.on("click", null);
                return;
            }

            var  ps       = 360/data.length,
                 pieslice = Math.round(1440/data.length),
                 rng      = Math.floor((Math.random() * 1440) + 360);
                
            rotation = (Math.round(rng / ps) * ps);
            
            picked = Math.round(data.length - (rotation % 360)/ps);
            picked = picked >= data.length ? (picked % data.length) : picked;
            if(oldpick.indexOf(picked) !== -1){
                d3.select(this).call(spin);
                return;
            } else {
                oldpick.push(picked);
            }

            rotation += 90 - Math.round(ps/2);

            vis.transition()
                .duration(3000)
                .attrTween("transform", rotTween)
                .each("end", function(){

                    //mark question as seen
                    d3.select(".slice:nth-child(" + (picked + 1) + ") path")
                        .attr("fill", "#111");

                    //populate question
                    d3.select("#question h1")
                        .text(data[picked].question);
                    document.getElementById("pick").value=data[picked]["value"];
                    document.getElementById("demo").value=hint[picked]["question"];
                    oldrotation = rotation;
                
                    container.on("click", spin);
                });
        }

        //make arrow
        svg.append("g")
            .attr("transform", "translate(" + (w + padding.left + padding.right) + "," + ((h/2)+padding.top) + ")")
            .append("path")
            .attr("d", "M-" + (r*.15) + ",0L0," + (r*.05) + "L0,-" + (r*.05) + "Z")
            .style({"fill":"white"});

        //draw spin circle
        container.append("circle")
            .attr("cx", 0)
            .attr("cy", 0)
            .attr("r", 60)
            .style({"fill":"white","cursor":"pointer"});

        //spin text
        container.append("text")
            .attr("x", 0)
            .attr("y", 15)
            .attr("text-anchor", "middle")
            .text("SPIN")
            .style({"font-weight":"bold", "font-size":"30px"});
        
        
        function rotTween(to) {
          var i = d3.interpolate(oldrotation % 360, rotation);
          return function(t) {
            return "rotate(" + i(t) + ")";
          };
        }
        
        
        function getRandomNumbers(){
            var array = new Uint16Array(1000);
            var scale = d3.scale.linear().range([360, 1440]).domain([0, 100000]);

            if(window.hasOwnProperty("crypto") && typeof window.crypto.getRandomValues === "function"){
                window.crypto.getRandomValues(array);
                console.log("works");
            } else {
                //no support for crypto, get crappy random numbers
                for(var i=0; i < 1000; i++){
                    array[i] = Math.floor(Math.random() * 100000) + 1;
                }
            }

            return array;
        }
        
        function mymFunction() {
    	    document.getElementById("demo").value =hint[picked]["question"] ;
    	}
      $('#hintmodal').on('show.bs.modal', function (event) {
    	      var button = $(event.relatedTarget) 
    	      var recipient = button.data('whatever')
    	      var modal = $(this)
    	      modal.find('.modal-body').text(hint[picked]["question"]);
    	     
    	   
    	   })
	 
