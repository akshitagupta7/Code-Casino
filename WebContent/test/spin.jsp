<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<title>Wheel of Fortune </title>

	  <!-- Bootstrap core CSS -->
		<link href="https://fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Joti+One" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>

	<!-- Font Awesome CDN-->
	<script src="https://use.fontawesome.com/6c522c1f28.js"></script>

    <!-- Custom styles for this template -->
	<link href="css/spin.css" rel="stylesheet">
		
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  </head>
 
	

<body>
    <form name="form" method="post" action="score.jsp">

	<div class="container-fluid">
 <div class="row">

	<div class="col-sm-8 col-md-8">
	    <div id="chart"></div>
	</div>
	
	<div class="col-sm-4 col-md-4">
	<div id="clockdiv"><br>
		  <div id="timer"><span id="countdown"></span>
		  <input type="hidden" id="minute" name="minute" value="60">
		  <input type="hidden" id="second" name="second" value="0">
		  </div>
</div>
		<div id="question"><h1></h1></div>
		<div class="input-group input-group-lg">
           <span class="input-group-addon" id="sizing-addon1"><i class="fa fa-lightbulb-o" aria-hidden="true"></i></span>
           <input type="text" name="ans1" id="ans1" class="form-control" size="105" placeholder="Enter Answer"  autocomplete="off" required required>
        	<input type="hidden" id="pick", name="pick" value="">
        	<input type="hidden" id="demo" name="demo" value="before">
        </div>
	</div>
 </div>
 <div class="row">
    <div class="col-sm-12 col-md-12">
		
			<button type="submit" name="submit" class="btn btn-lg" onClick="button1()">SUBMIT</button>
			<button type="button" id="hint" name="hint" onClick="mymfunction()" class="btn btn-lg" data-toggle="modal" data-target="#hintmodal">A HINT MAYBE</button>
			<button type="button" name="button" class="btn btn-lg"  data-toggle="modal" data-target="#scoremodal">SCORE</button>
			<a href="instructions.jsp"><button class="btn btn-lg" data-toggle="modal" data-target="#instModal">READ INSTRUCTIONS</button></a>
			<button class="btn btn-lg" onClick="fun()">QUIT</button>
	</div>		 
 
 </div>
</div>
</form>
    <SCRIPT LANGUAGE="JavaScript">
        function button1()
        {
            document.form.submit.value = "yes";
            form.submit();
        } 
        
    </SCRIPT>
    <SCRIPT LANGUAGE="JavaScript">
        function fun()
        {
            window.location="end.jsp";
        } 
        
    </SCRIPT>
    
<!-- Modal1 -->
<div id="scoremodal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal1 content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">SCORE</h4>
      </div>
      <div class="modal-body">
      <p style="font-size:60px">SCORE: </p>
      </div>
    </div>

  </div>
</div>
<!-- Modal1 -->
<div id="hintmodal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal1 content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">HINT</h4>
      </div>
      <div class="modal-body">
      </div>
    </div>

  </div>
</div>

<div class="modal fade" id="instModal" tabindex="-1" role="dialog" aria-labelledby="instModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
       <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="instModalLabel">INSTRUCTIONS</h4>
       </div>
     <div class="modal-body">
        <ol><big><h4>
     <li>The game is a completely random event.</li>
     <li>Spin the wheel to get a question.</li>
     <li>The questions based on data structures, algorithms,Basic Programming Concepts or reasoning..</li>
     <li>After brain storming with the question Submit the answer!</li>
     <li>Now your luck decides what reward you get for a correct answer</li>
     <li>The timer to keep on ticking and fate decides whether the next question is harder or easier</li>
     <li>Wanna quit? You can't resume. Everybody gets one chance!</li> 
	 <li>Want a hint? You may lose score!</li>
	 <li>Score the maximum in 45 minutes to win!</li>
	</h4>
	</big>
	</ol> 
    </div>
   </div>
  </div>
</div>

<script>




    window.onload = function() {
        countdown('countdown');
    }

    function countdown(element) {
        interval = setInterval(function() {
            var el = document.getElementById(element);
            if(seconds == 0) {
                if(minutes == 0) {
                    el.innerHTML = "countdown's over!";  
					window.location.href = "end.jsp";
                    clearInterval(interval);
                    return;
                } else {
                    minutes--;
                    seconds = 60;
                }
            }
            if(minutes > 0) {
                var minute_text = minutes + ':';
            } else {
                var minute_text = '';
            }
			  if (seconds < 10 && seconds >= 0) {seconds = "0" + seconds;} // add zero in front of numbers < 10
			  if (seconds < 0) {seconds = "59";}
            var second_text = seconds;
            el.innerHTML =minute_text + ' ' + second_text ;
            seconds--;
            
        }, 1000);
    }

	function calltimer(){
		
		document.getElementById("minute").value=minutes;
		document.getElementById("second").value=seconds;
	}
		document.onclick=function(){
		calltimer();};

</script>
 <script>
var test=function(){     

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
                   {"label":"Question 1",  "value":1,  "question":"Consider a virtual memory system with FIFO page replacement policy. For an arbitrary page access pattern, increasing the number of page frames in main memory will ___ the number of page faults?(Answer Format: ALWAYS INCREASE,SOMETIMES DECREASE etc.)"},//SOMETIMES INCREASE //easy
                     {"label":"Question 2",  "value":2,  "question":"What requires a device driver?"}, //DISK //easy
                     {"label":"Question 3",  "value":3,  "question":"Consider a machine with 64 MB physical memory and a 32-bit virtual address space. If the page size is 4KB, what is the approximate size of the page table?(Answer Format:__MB OR __GB OR __TB OR __KB)"}, //2MB
                     {"label":"Question 4",  "value":4,  "question":"More than one word are put in one cache block to exploit what of reference in a program?"}, //SPATIAL LOCALITY //easy
                     {"label":"Question 5",  "value":5,  "question":"Consider a set of n tasks with known runtimes r1, r2, … rn to be run on a uniprocessor machine. Which of the processor scheduling algorithms will result in the maximum throughput?(Answer Format e.g. ROUND-ROBIN)"}, //SHORTEST-JOB-FIRST
                     {"label":"Question 6",  "value":6,  "question":"Suppose the time to service a page fault is on the average 10 milliseconds, while a memory access takes 1 microsecond. Then a 99.99% hit ratio results in average memory access time of  ______ microseconds.(accurate upto 4 decimal digits)"}, //1.9999
                     {"label":"Question 7",  "value":7,  "question":"Where does the swap space reside?"}, //DISK //easy
                     {"label":"Question 8",  "value":8,  "question":"Consider the following statements with respect to user-level threads and kernel supported threads i. context switch is faster with kernel-supported threads ii. for user-level threads, a system call can block the entire process iii. Kernel supported threads can be scheduled independently iv. User level threads are transparent to the kernel.Which of the above statements are true?(Answer format: __,__,__,__)"}, //ii,iii,iv
                     {"label":"Question 9",  "value":9,  "question":"A process executes the code:fork ();fork ();fork ();The total number of child processes created is?"}, //7
                     {"label":"Question 10", "value":10, "question":"A file system with 300 GByte uses a file descriptor with 8 direct block address. 1 indirect block address and 1 doubly indirect block address. The size of each disk block is 128 Bytes and the size of each disk block address is 8 Bytes. The maximum possible file size in this file system is __Kbytes"}, //35
                     {"label":"Question 11", "value":11, "question":"Let the page fault service time be 10ms in a computer with average memory access time being 20ns. If one page fault is generated for every 10^6 memory accesses,the effective access time for the memory is __ns"}, //30
                     {"label":"Question 12", "value":12, "question":"An application loads 100 libraries at startup. Loading each library requires exactly one disk access. The seek time of the disk to a random location is given as 10ms. Rotational speed of disk is 6000rpm. If all 100 libraries are loaded from random locations on the disk, how long does it take to load all libraries? (The time to transfer data from the disk block once the head has been positioned at the start of the block may be neglected) ____s"}, //1.50
                     {"label":"Question 13", "value":13, "question":"A system uses FIFO policy for page replacement. It has 4 page frames with no pages loaded to begin with. The system first accesses 100 distinct pages in some order and then accesses the same 100 pages but now in the reverse order. How many page faults will occur?"}, //196
                     {"label":"Question 14", "value":14, "question":"Which of the following statements are true? I. Shortest remaining time first scheduling may cause starvation II. Preemptive scheduling may cause starvation III. Round robin is better than FCFS in terms of response time(Answer Format:___,___,___)"}, //I,II,III //DBMS
                     {"label":"Question 15", "value":15, "question":"Given relations r(w, x) and s(y, z), the result ofselect distinct w, x from r, s is guaranteed to be same as r, provided (Answer Format e.g.__-NO DUPLICATES/NON-EMPTY,__-NO DUPLICATES/NON-EMPTY)"}, //R-NO DUPLICATES,S-NON-EMPTY //DS
                     {"label":"Question 16", "value":16, "question":"Let LASTPOST, LASTIN and LASTPRE denote the last vertex visited in a postorder, inorder and preorder traversal. Respectively, of a complete binary tree. Which of the orders are always equal?(Answer should be in capitals)"}, //NONE
                     {"label":"Question 17", "value":17, "question":"The most appropriate matching for the following pairs X: depth first search            1: heap  Y: breadth-first search          2: queueZ: sorting                       3: stack Is?(Answer Format: X-___,Y-___,Z-___)"}, //X—3,Y—2,Z-1
                     {"label":"Question 18", "value":18, "question":"Let s be a sorted array of n integers. Let t(n) denote the time taken for the most efficient algorithm to determined if there are two elements with sum less than 1000 in s. Then t(n)=O(___)"}, 
 					//1
                    {"label":"Question 19", "value":19, "question":"B+ trees are preferred to binary trees in databases because Disk access is _______ than memory access(WRITE IN CAPITALS)"}, //SLOWER //easy
                    {"label":"Question 20", "value":20, "question":"The following numbers are inserted into an empty binary search tree in the given order: 10, 1, 3, 5, 15, 12, 16. What is the height of the binary search tree (the height is the maximum distance of a leaf node from the root)?"}, //3
                    {"label":"Question 21", "value":21, "question":"Consider the label sequences obtained by the following pairs of traversals on a labeled binary tree.	The pair(s) that identifies a tree uniquely is/are (Answer Format: __,___,___,___)I preorder and postorder II inorder and postorder III preorder and inorder iv)level order and postorder"}, //II,III
 				   
                    {"label":"Question 22", "value":22, "question":"A circularly linked list is used to represent a Queue. A single variable p is used to access the Queue. To ____ node should p point such that both the operations enQueue and deQueue can be performed in constant time?(Answer in CAPITALS)"}, //REAR
                    {"label":"Question 23", "value":23, "question":"The best data structure to check whether an arithmetic expression has balanced parentheses is a ___(Answer in CAPITALS"}, //STACK //easy
                    {"label":"Question 24", "value":24, "question":"Level order traversal of a rooted tree can be done by starting from the root and performing ____ SEARCH/TRAVERSAL(Answer format e.g. POST-ORDER)"}, //BREADTH-FIRST
                    {"label":"Question 25", "value":25, "question":"A single array A[1..MAXSIZE] is used to implement two stacks. The two stacks grow from opposite ends of the array. Variables top1 and top2 (topl< top 2) point to the location of the topmost element in each of the stacks. If the space is to be used efficiently, the condition for “stack full” is (Avoid spaces and write in capitals)"}, //TOP1=TOP2-1
                    {"label":"Question 26", "value":26, "question":"The usual T(n^2) implementation of Insertion Sort to sort an array uses linear search to identify the position where an element is to be inserted into the already sorted part of the array. If, instead, we use binary search to identify the position, the worst case running time will be O(__)(Answer in capitals)"}, //N^2
                    {"label":"Question 27", "value":27, "question":"The tightest lower bound on the number of comparisons, in the worst case, for comparison-based sorting is of the order of O(__)"}, //NlogN
                    {"label":"Question 28", "value":28, "question":"A scheme for storing binary trees in an array X is as follows. Indexing of X starts at 1 instead of 0. the root is stored at X[1]. For a node stored at X[i], the left child, if any, is stored in X[2i] and the right child, if any, in X[2i+1]. To be able to store any binary tree on n vertices the minimum size of X should be"},//2^N-1
                    {"label":"Question 29", "value":29, "question":"Which one of the sorting algorithms needs the minimum number of swaps?(Answer in capitals"}, //SELECTION SORT
                    {"label":"Question 30", "value":30, "question":"Consider a weighted complete graph G on the vertex set {v1, v2, ..vn} such that the weight of the edge (vi, vj) is 2|i-j|. The weight of a minimum spanning tree of G is:___"}, //2N-2
                    {"label":"Question 31", "value":31, "question":"How many undirected graphs (not necessarily connected) can be constructed out of a given set V= {V 1, V 2,…V n} of n vertices?(Write in capitals and take care of the brackets)"},//2^(N(N-1)/2)
                    {"label":"Question 32", "value":32, "question":"Consider the following three claims.I (n + k)^m = T(n^m), where k and m are constants. II 2^(n + 1) = 0(2^n) III 2^(2n + 1) = 0(2^n).Which of these claims are correct?(Answer format:__,__,__)"}, //I,II
                    {"label":"Question 33", "value":33, "question":"The number of tokens in the following C statement. printf(('i = %d, &i = %x', i, &i);"},//10
                    {"label":"Question 34", "value":34, "question":". Consider the following declaration of a ‘two-dimensional array in C: char a[100][100]; Assuming that the main memory is byte-addressable and that the array is stored starting from memory address 0, the address of a[40][50] is?"}, //4050
                    {"label":"Question 35", "value":35, "question":"The most appropriate matching for the following pairs.X: m=malloc(5); m= NULL;        1: using dangling pointers. Y: free(n); n->value=5;         2: using uninitialized pointers. Z: char *p; *p = ’a’;           3. lost memory is:(Answer Format: X-___,Y-___,Z-___)"},//X—3,Y—1,Z-2
                    {"label":"Question 36", "value":36, "question":"The most appropriate matching for the following pair. X: Indirect addressing                  1: Loops.Y: Immediate addressing                 2: Pointers.Z: Auto decrement addressing            3. Constants is?(Answer Format:X-__,Y-__,Z-__)"}, //X—2,Y—3,Z—1
                    {"label":"Question 37", "value":37, "question":"What does the following fragment of C-program print? char c[] = 'GATE2011'; char *p =c; printf('%s', p + p[3] - p[1]) ; "},
                    {"label":"Question 38", "value":38, "question":"Consider the following recursive C function that takes two arguments unsigned int foo(unsigned int n, unsigned int r) { if (n  > 0) return (n%r +  foo (n/r, r )); else return 0; }What is the return value of the function foo when it is called as foo(513, 2)?"},//2
                    {"label":"Question 39", "value":39, "question":"BONUS QUESTION !! YOU JUST RECEIVED BONUS MARKS FOR LANDING ON THIS QUESTION !! CONGRATULATIONS !! NOW SPIN AGAIN."},
                    {"label":"Question 40", "value":40, "question":"BONUS QUESTION !! YOU JUST RECEIVED BONUS MARKS FOR LANDING ON THIS QUESTION !! CONGRATULATIONS !! NOW SPIN AGAIN."}, //reasoning
                    {"label":"Question 41", "value":41, "question":"Due to inflation, probability that price of petrol will increase during the next month is 0.54. And the probability that diesel price will also increase during the next month is 0.68. What is the highest probability that price for neither of the two increase?"}, //0.14
                    {"label":"Question 42", "value":42, "question":"There is no electricity in your home. You have to wear socks. You trace the drawer and find out there are four socks in your drawer. The socks can be either black or white. You take out two of the socks from the drawer. Now the probability that the two socks are black is 1/2. Can you calculate the probability of taking out a pair of white socks from the drawer?"}, //0
                    {"label":"Question 43", "value":43, "question":"You want to open a toy store and for that you need to buy special toys. The toys can be purchased from the town's supermarket. Cost of the toy's increase is in the manner:Cost of 1st toy is Rs.50, Cost of 2nd toy is Rs.100, Cost of 3rd toy is Rs. 150. How many toys can you buy in Rs. 10000"}, //19 //easy question
                    {"label":"Question 44", "value":44, "question":"Arpan said, 'If yesterday was tomorrow, today would be Friday.'When did Arpan make this statement?"}, // Wednesday
                    {"label":"Question 45", "value":45, "question":"Sam bought 3 different toys for his 3 children(one for each). He placed the toy in the dark store. One by one each child went to the store to pick a toy. Find the probability that no child will choose its own toy"}, //1/3
                    {"label":"Question 46", "value":46, "question":"You are in a game of Russian Roulette with a revolver that has 3 bullets placed in three consecutive chambers. The cylinder of the gun will be spun once at the beginning of the game. Then, the gun will be passed between two players until it fires. Would you prefer to go first or second?"}, //second
                    
            ];       
        var hint = [
                     {"label":"Question 1",  "value":1,  "question":"No hint"},
                     {"label":"Question 2",  "value":2,  "question":"No hint"}, 
                     {"label":"Question 3",  "value":3,  "question":" Number of entries in page table=(Virtual address space size/(page size)"},
                     {"label":"Question 4",  "value":4,  "question":"No hint"},
                     {"label":"Question 5",  "value":5,  "question":"No hint"}, 
                     {"label":"Question 6",  "value":6,  "question":"To calculate the average memory access time the formula requires time to service page fault, percantage of pafe hit and miss and the memory access time divided by 100"}, 
                     {"label":"Question 7",  "value":7,  "question":"Swap space is an area that temporarily holds a process memory image."},
                     {"label":"Question 8",  "value":8,  "question":"No hint"},
                     {"label":"Question 9",  "value":9,  "question":"There will be 1 child process created by the first line."}, 
                     {"label":"Question 10", "value":10, "question":"Total number of possible addresses stored in a disk block = 128/8 = 16 Maximum number of addressable bytes due to direct address block = ?"},
                     {"label":"Question 11", "value":11, "question":"Let P be the page fault rate.Effective Memory Access Time = p * (page fault service time) + some other terms as well"},
                     {"label":"Question 12", "value":12, "question":"Since transfer time can be neglected, the average access time is sum of average seek time and average rotational latency."},
                     {"label":"Question 13", "value":13, "question":"Access to 100 pages will cause 100 page faults. "},
                     {"label":"Question 14", "value":14, "question":"No hint"},
                     {"label":"Question 15", "value":15, "question":"If we do not give any attribute on which we want to join two tables, then the queries like above become equivalent to Cartesian product"},
                     {"label":"Question 16", "value":16, "question":"It is given that the given tree is complete binary tree. For a complete binary tree, the last visited node will always be same for inorder and preorder traversal"},
                     {"label":"Question 17", "value":17, "question":"No hint"}, 
                     {"label":"Question 18", "value":18, "question":"No hint"}, 
                     {"label":"Question 19", "value":19, "question":"No hint"}, 
                     {"label":"Question 20", "value":20, "question":"No hint"}, 
                     {"label":"Question 21", "value":21, "question":"In CSS, what character separates a property from a value?"},
                     {"label":"Question 22", "value":22, "question":"No hint"},
                     {"label":"Question 23", "value":23, "question":"No hint"},
                     {"label":"Question 24", "value":24, "question":"No hint"},
                     {"label":"Question 25", "value":25, "question":"No hint"},
                     {"label":"Question 26", "value":26, "question":"If we use binary search then there will be Log2(n!) comparisons in the worst case, which is T(n log n) "},
                     {"label":"Question 27", "value":27, "question":"Given a list of distinct numbers (we can assume this because this is a worst-case analysis), there are n factorial permutations exactly one of which is the list in sorted order. "}, 
                     {"label":"Question 28", "value":28, "question":"In a right skewed binary tree, node ‘A’ will be stored at index 1, ‘B’ at index 3, ‘C’ at index 7 and ‘D’ at index 15."},
                     {"label":"Question 29", "value":29, "question":"No hint"},
                     {"label":"Question 30", "value":30, "question":"Weight of the minimum spanning tree= 2|2 – 1| + 2|3 – 2| + 2|4 – 3| + 2|5 – 4| …. "}, 
                     {"label":"Question 31", "value":31, "question":"In an undirected graph, there can be maximum n(n-1)/2 edges. "},
                     {"label":"Question 32", "value":32, "question":"No hint"},
                     {"label":"Question 33", "value":33, "question":"No hint"},
                     {"label":"Question 34", "value":34, "question":"No hint"},
                     {"label":"Question 35", "value":35, "question":"No hint"},
                     {"label":"Question 36", "value":36, "question":"No hint"},
                     {"label":"Question 37", "value":37, "question":"No hint"},
                     {"label":"Question 38", "value":38, "question":"No hint"},
                     {"label":"Question 39", "value":39, "question":"Hint for Bonus?"},
                     {"label":"Question 40", "value":40, "question":"Hint For Bonus?"},
                     {"label":"Question 41", "value":41, "question":"No hint"},
                     {"label":"Question 42", "value":42, "question":"No hint"},
                     {"label":"Question 43", "value":43, "question":"No hint"},
                     {"label":"Question 44", "value":44, "question":"No hint"},
                     {"label":"Question 45", "value":45, "question":"No hint"},
                     {"label":"Question 46", "value":46, "question":"Russian Roulette is the practice of loading a bullet into one chamber of a revolver, spinning the cylinder, and then pulling the trigger while pointing the gun at one's own head"},
                     
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
            var k=6;
              <% int a=0;
try {
	 ResultSet rs=null;
	 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
  if(con!=null)
      System.out.println("Data is successfully retrieved!");
  else
      System.out.println("no connection");
  String sql="select time from  Timer";
  // PreparedStatement ps = con.prepareStatement(sql);
     //   ps.executeUpdate();
     Statement stmt = null;
         stmt=con.createStatement();  

         rs=stmt.executeQuery(sql); 
         // In this part u extract time from database
while(rs.next()) { 
    a=rs.getInt(1);
    if(a==1){%>
d3.select(".slice:nth-child(" + (k ) + ") path")
                        .attr("fill", "#111");
                k=k+1;
            <%}
System.out.println(rs.getInt(1)); //+"  "+rs.getString(2)+"  "+rs.getString(3));  
}
//step5 close the connection object  
con.close();
       
}catch(Exception e1)
{
    out.println(e1);
}
%>
            

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
                    d3.select(".slice:nth-child(" + (picked ) + ") path")
                        .attr("fill", "#111");

                    //populate question
                    d3.select("#question h1")
                        .text(data[picked].question);
                    document.getElementById("pick").value=data[picked]["value"];
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
        
   function myFunction() {
    var x = document.getElementById('question');
    if (x.style.display === 'none') {
        x.style.display = 'block';
    } else {
        x.style.display = 'none';
    }
}
   
   function mymFunction() {
	    document.getElementById("demo").value = "Hello World";
	}
  $('#hintmodal').on('show.bs.modal', function (event) {
	      var button = $(event.relatedTarget) 
	      var recipient = button.data('whatever')
	      var modal = $(this)
	      modal.find('.modal-body').text(hint[picked]["question"]);
	     
	   
	   })      };
        </script>
	   
	       
<script src="https://d3js.org/d3.v3.min.js" charset="utf-8"></script>
<script  charset="utf-8">
       

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
                   {"label":"Question 1",  "value":1,  "question":"Consider a virtual memory system with FIFO page replacement policy. For an arbitrary page access pattern, increasing the number of page frames in main memory will ___ the number of page faults?(Answer Format: ALWAYS INCREASE,SOMETIMES DECREASE etc.)"},//SOMETIMES INCREASE //easy
                     {"label":"Question 2",  "value":2,  "question":"What requires a device driver?"}, //DISK //easy
                     {"label":"Question 3",  "value":3,  "question":"Consider a machine with 64 MB physical memory and a 32-bit virtual address space. If the page size is 4KB, what is the approximate size of the page table?(Answer Format:__MB OR __GB OR __TB OR __KB)"}, //2MB
                     {"label":"Question 4",  "value":4,  "question":"More than one word are put in one cache block to exploit what of reference in a program?"}, //SPATIAL LOCALITY //easy
                     {"label":"Question 5",  "value":5,  "question":"Consider a set of n tasks with known runtimes r1, r2, … rn to be run on a uniprocessor machine. Which of the processor scheduling algorithms will result in the maximum throughput?(Answer Format e.g. ROUND-ROBIN)"}, //SHORTEST-JOB-FIRST
                     {"label":"Question 6",  "value":6,  "question":"Suppose the time to service a page fault is on the average 10 milliseconds, while a memory access takes 1 microsecond. Then a 99.99% hit ratio results in average memory access time of  ______ microseconds.(accurate upto 4 decimal digits)"}, //1.9999
                     {"label":"Question 7",  "value":7,  "question":"Where does the swap space reside?"}, //DISK //easy
                     {"label":"Question 8",  "value":8,  "question":"Consider the following statements with respect to user-level threads and kernel supported threads i. context switch is faster with kernel-supported threads ii. for user-level threads, a system call can block the entire process iii. Kernel supported threads can be scheduled independently iv. User level threads are transparent to the kernel.Which of the above statements are true?(Answer format: __,__,__,__)"}, //ii,iii,iv
                     {"label":"Question 9",  "value":9,  "question":"A process executes the code:fork ();fork ();fork ();The total number of child processes created is?"}, //7
                     {"label":"Question 10", "value":10, "question":"A file system with 300 GByte uses a file descriptor with 8 direct block address. 1 indirect block address and 1 doubly indirect block address. The size of each disk block is 128 Bytes and the size of each disk block address is 8 Bytes. The maximum possible file size in this file system is __Kbytes"}, //35
                     {"label":"Question 11", "value":11, "question":"Let the page fault service time be 10ms in a computer with average memory access time being 20ns. If one page fault is generated for every 10^6 memory accesses,the effective access time for the memory is __ns"}, //30
                     {"label":"Question 12", "value":12, "question":"An application loads 100 libraries at startup. Loading each library requires exactly one disk access. The seek time of the disk to a random location is given as 10ms. Rotational speed of disk is 6000rpm. If all 100 libraries are loaded from random locations on the disk, how long does it take to load all libraries? (The time to transfer data from the disk block once the head has been positioned at the start of the block may be neglected) ____s"}, //1.50
                     {"label":"Question 13", "value":13, "question":"A system uses FIFO policy for page replacement. It has 4 page frames with no pages loaded to begin with. The system first accesses 100 distinct pages in some order and then accesses the same 100 pages but now in the reverse order. How many page faults will occur?"}, //196
                     {"label":"Question 14", "value":14, "question":"Which of the following statements are true? I. Shortest remaining time first scheduling may cause starvation II. Preemptive scheduling may cause starvation III. Round robin is better than FCFS in terms of response time(Answer Format:___,___,___)"}, //I,II,III //DBMS
                     {"label":"Question 15", "value":15, "question":"Given relations r(w, x) and s(y, z), the result ofselect distinct w, x from r, s is guaranteed to be same as r, provided (Answer Format e.g.__-NO DUPLICATES/NON-EMPTY,__-NO DUPLICATES/NON-EMPTY)"}, //R-NO DUPLICATES,S-NON-EMPTY //DS
                     {"label":"Question 16", "value":16, "question":"Let LASTPOST, LASTIN and LASTPRE denote the last vertex visited in a postorder, inorder and preorder traversal. Respectively, of a complete binary tree. Which of the orders are always equal?(Answer should be in capitals)"}, //NONE
                     {"label":"Question 17", "value":17, "question":"The most appropriate matching for the following pairs X: depth first search            1: heap  Y: breadth-first search          2: queueZ: sorting                       3: stack Is?(Answer Format: X-___,Y-___,Z-___)"}, //X—3,Y—2,Z-1
                     {"label":"Question 18", "value":18, "question":"Let s be a sorted array of n integers. Let t(n) denote the time taken for the most efficient algorithm to determined if there are two elements with sum less than 1000 in s. Then t(n)=O(___)"}, 
 					//1
                    {"label":"Question 19", "value":19, "question":"B+ trees are preferred to binary trees in databases because Disk access is _______ than memory access(WRITE IN CAPITALS)"}, //SLOWER //easy
                    {"label":"Question 20", "value":20, "question":"The following numbers are inserted into an empty binary search tree in the given order: 10, 1, 3, 5, 15, 12, 16. What is the height of the binary search tree (the height is the maximum distance of a leaf node from the root)?"}, //3
                    {"label":"Question 21", "value":21, "question":"Consider the label sequences obtained by the following pairs of traversals on a labeled binary tree.	The pair(s) that identifies a tree uniquely is/are (Answer Format: __,___,___,___)I preorder and postorder II inorder and postorder III preorder and inorder iv)level order and postorder"}, //II,III
 				   
                    {"label":"Question 22", "value":22, "question":"A circularly linked list is used to represent a Queue. A single variable p is used to access the Queue. To ____ node should p point such that both the operations enQueue and deQueue can be performed in constant time?(Answer in CAPITALS)"}, //REAR
                    {"label":"Question 23", "value":23, "question":"The best data structure to check whether an arithmetic expression has balanced parentheses is a ___(Answer in CAPITALS"}, //STACK //easy
                    {"label":"Question 24", "value":24, "question":"Level order traversal of a rooted tree can be done by starting from the root and performing ____ SEARCH/TRAVERSAL(Answer format e.g. POST-ORDER)"}, //BREADTH-FIRST
                    {"label":"Question 25", "value":25, "question":"A single array A[1..MAXSIZE] is used to implement two stacks. The two stacks grow from opposite ends of the array. Variables top1 and top2 (topl< top 2) point to the location of the topmost element in each of the stacks. If the space is to be used efficiently, the condition for “stack full” is (Avoid spaces and write in capitals)"}, //TOP1=TOP2-1
                    {"label":"Question 26", "value":26, "question":"The usual T(n^2) implementation of Insertion Sort to sort an array uses linear search to identify the position where an element is to be inserted into the already sorted part of the array. If, instead, we use binary search to identify the position, the worst case running time will be O(__)(Answer in capitals)"}, //N^2
                    {"label":"Question 27", "value":27, "question":"The tightest lower bound on the number of comparisons, in the worst case, for comparison-based sorting is of the order of O(__)"}, //NlogN
                    {"label":"Question 28", "value":28, "question":"A scheme for storing binary trees in an array X is as follows. Indexing of X starts at 1 instead of 0. the root is stored at X[1]. For a node stored at X[i], the left child, if any, is stored in X[2i] and the right child, if any, in X[2i+1]. To be able to store any binary tree on n vertices the minimum size of X should be"},//2^N-1
                    {"label":"Question 29", "value":29, "question":"Which one of the sorting algorithms needs the minimum number of swaps?(Answer in capitals"}, //SELECTION SORT
                    {"label":"Question 30", "value":30, "question":"Consider a weighted complete graph G on the vertex set {v1, v2, ..vn} such that the weight of the edge (vi, vj) is 2|i-j|. The weight of a minimum spanning tree of G is:___"}, //2N-2
                    {"label":"Question 31", "value":31, "question":"How many undirected graphs (not necessarily connected) can be constructed out of a given set V= {V 1, V 2,…V n} of n vertices?(Write in capitals and take care of the brackets)"},//2^(N(N-1)/2)
                    {"label":"Question 32", "value":32, "question":"Consider the following three claims.I (n + k)^m = T(n^m), where k and m are constants. II 2^(n + 1) = 0(2^n) III 2^(2n + 1) = 0(2^n).Which of these claims are correct?(Answer format:__,__,__)"}, //I,II
                    {"label":"Question 33", "value":33, "question":"The number of tokens in the following C statement. printf(('i = %d, &i = %x', i, &i);"},//10
                    {"label":"Question 34", "value":34, "question":". Consider the following declaration of a ‘two-dimensional array in C: char a[100][100]; Assuming that the main memory is byte-addressable and that the array is stored starting from memory address 0, the address of a[40][50] is?"}, //4050
                    {"label":"Question 35", "value":35, "question":"The most appropriate matching for the following pairs.X: m=malloc(5); m= NULL;        1: using dangling pointers. Y: free(n); n->value=5;         2: using uninitialized pointers. Z: char *p; *p = ’a’;           3. lost memory is:(Answer Format: X-___,Y-___,Z-___)"},//X—3,Y—1,Z-2
                    {"label":"Question 36", "value":36, "question":"The most appropriate matching for the following pair. X: Indirect addressing                  1: Loops.Y: Immediate addressing                 2: Pointers.Z: Auto decrement addressing            3. Constants is?(Answer Format:X-__,Y-__,Z-__)"}, //X—2,Y—3,Z—1
                    {"label":"Question 37", "value":37, "question":"What does the following fragment of C-program print? char c[] = 'GATE2011'; char *p =c; printf('%s', p + p[3] - p[1]) ; "},
                    {"label":"Question 38", "value":38, "question":"Consider the following recursive C function that takes two arguments unsigned int foo(unsigned int n, unsigned int r) { if (n  > 0) return (n%r +  foo (n/r, r )); else return 0; }What is the return value of the function foo when it is called as foo(513, 2)?"},//2
                    {"label":"Question 39", "value":39, "question":"BONUS QUESTION !! YOU JUST RECEIVED BONUS MARKS FOR LANDING ON THIS QUESTION !! CONGRATULATIONS !! NOW SPIN AGAIN."},
                    {"label":"Question 40", "value":40, "question":"BONUS QUESTION !! YOU JUST RECEIVED BONUS MARKS FOR LANDING ON THIS QUESTION !! CONGRATULATIONS !! NOW SPIN AGAIN."}, //reasoning
                    {"label":"Question 41", "value":41, "question":"Due to inflation, probability that price of petrol will increase during the next month is 0.54. And the probability that diesel price will also increase during the next month is 0.68. What is the highest probability that price for neither of the two increase?"}, //0.14
                    {"label":"Question 42", "value":42, "question":"There is no electricity in your home. You have to wear socks. You trace the drawer and find out there are four socks in your drawer. The socks can be either black or white. You take out two of the socks from the drawer. Now the probability that the two socks are black is 1/2. Can you calculate the probability of taking out a pair of white socks from the drawer?"}, //0
                    {"label":"Question 43", "value":43, "question":"You want to open a toy store and for that you need to buy special toys. The toys can be purchased from the town's supermarket. Cost of the toy's increase is in the manner:Cost of 1st toy is Rs.50, Cost of 2nd toy is Rs.100, Cost of 3rd toy is Rs. 150. How many toys can you buy in Rs. 10000"}, //19 //easy question
                    {"label":"Question 44", "value":44, "question":"Arpan said, 'If yesterday was tomorrow, today would be Friday.'When did Arpan make this statement?"}, // Wednesday
                    {"label":"Question 45", "value":45, "question":"Sam bought 3 different toys for his 3 children(one for each). He placed the toy in the dark store. One by one each child went to the store to pick a toy. Find the probability that no child will choose its own toy"}, //1/3
                    {"label":"Question 46", "value":46, "question":"You are in a game of Russian Roulette with a revolver that has 3 bullets placed in three consecutive chambers. The cylinder of the gun will be spun once at the beginning of the game. Then, the gun will be passed between two players until it fires. Would you prefer to go first or second?"}, //second
                    
            ];       
        var hint = [
                     {"label":"Question 1",  "value":1,  "question":"No hint"},
                     {"label":"Question 2",  "value":2,  "question":"No hint"}, 
                     {"label":"Question 3",  "value":3,  "question":" Number of entries in page table=(Virtual address space size/(page size)"},
                     {"label":"Question 4",  "value":4,  "question":"No hint"},
                     {"label":"Question 5",  "value":5,  "question":"No hint"}, 
                     {"label":"Question 6",  "value":6,  "question":"To calculate the average memory access time the formula requires time to service page fault, percantage of pafe hit and miss and the memory access time divided by 100"}, 
                     {"label":"Question 7",  "value":7,  "question":"Swap space is an area that temporarily holds a process memory image."},
                     {"label":"Question 8",  "value":8,  "question":"No hint"},
                     {"label":"Question 9",  "value":9,  "question":"There will be 1 child process created by the first line."}, 
                     {"label":"Question 10", "value":10, "question":"Total number of possible addresses stored in a disk block = 128/8 = 16 Maximum number of addressable bytes due to direct address block = ?"},
                     {"label":"Question 11", "value":11, "question":"Let P be the page fault rate.Effective Memory Access Time = p * (page fault service time) + some other terms as well"},
                     {"label":"Question 12", "value":12, "question":"Since transfer time can be neglected, the average access time is sum of average seek time and average rotational latency."},
                     {"label":"Question 13", "value":13, "question":"Access to 100 pages will cause 100 page faults. "},
                     {"label":"Question 14", "value":14, "question":"No hint"},
                     {"label":"Question 15", "value":15, "question":"If we do not give any attribute on which we want to join two tables, then the queries like above become equivalent to Cartesian product"},
                     {"label":"Question 16", "value":16, "question":"It is given that the given tree is complete binary tree. For a complete binary tree, the last visited node will always be same for inorder and preorder traversal"},
                     {"label":"Question 17", "value":17, "question":"No hint"}, 
                     {"label":"Question 18", "value":18, "question":"No hint"}, 
                     {"label":"Question 19", "value":19, "question":"No hint"}, 
                     {"label":"Question 20", "value":20, "question":"No hint"}, 
                     {"label":"Question 21", "value":21, "question":"In CSS, what character separates a property from a value?"},
                     {"label":"Question 22", "value":22, "question":"No hint"},
                     {"label":"Question 23", "value":23, "question":"No hint"},
                     {"label":"Question 24", "value":24, "question":"No hint"},
                     {"label":"Question 25", "value":25, "question":"No hint"},
                     {"label":"Question 26", "value":26, "question":"If we use binary search then there will be Log2(n!) comparisons in the worst case, which is T(n log n) "},
                     {"label":"Question 27", "value":27, "question":"Given a list of distinct numbers (we can assume this because this is a worst-case analysis), there are n factorial permutations exactly one of which is the list in sorted order. "}, 
                     {"label":"Question 28", "value":28, "question":"In a right skewed binary tree, node ‘A’ will be stored at index 1, ‘B’ at index 3, ‘C’ at index 7 and ‘D’ at index 15."},
                     {"label":"Question 29", "value":29, "question":"No hint"},
                     {"label":"Question 30", "value":30, "question":"Weight of the minimum spanning tree= 2|2 – 1| + 2|3 – 2| + 2|4 – 3| + 2|5 – 4| …. "}, 
                     {"label":"Question 31", "value":31, "question":"In an undirected graph, there can be maximum n(n-1)/2 edges. "},
                     {"label":"Question 32", "value":32, "question":"No hint"},
                     {"label":"Question 33", "value":33, "question":"No hint"},
                     {"label":"Question 34", "value":34, "question":"No hint"},
                     {"label":"Question 35", "value":35, "question":"No hint"},
                     {"label":"Question 36", "value":36, "question":"No hint"},
                     {"label":"Question 37", "value":37, "question":"No hint"},
                     {"label":"Question 38", "value":38, "question":"No hint"},
                     {"label":"Question 39", "value":39, "question":"Hint for Bonus?"},
                     {"label":"Question 40", "value":40, "question":"Hint For Bonus?"},
                     {"label":"Question 41", "value":41, "question":"No hint"},
                     {"label":"Question 42", "value":42, "question":"No hint"},
                     {"label":"Question 43", "value":43, "question":"No hint"},
                     {"label":"Question 44", "value":44, "question":"No hint"},
                     {"label":"Question 45", "value":45, "question":"No hint"},
                     {"label":"Question 46", "value":46, "question":"Russian Roulette is the practice of loading a bullet into one chamber of a revolver, spinning the cylinder, and then pulling the trigger while pointing the gun at one's own head"},
                     
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
           var k=1,m=7;
              <% 
                  
try {
	 ResultSet rs=null;
	 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
  if(con!=null)
      System.out.println("Data is successfully retrieved!");
  else
      System.out.println("no connection");
  String sql="select time from  Timer";
  // PreparedStatement ps = con.prepareStatement(sql);
     //   ps.executeUpdate();
     Statement stmt = null;
         stmt=con.createStatement();  

         rs=stmt.executeQuery(sql); 
         // In this part u extract time from database
while(rs.next()) { 
     a=rs.getInt(1);
   
  %>m=<%=a%> 
                    if(m==1){
d3.select(".slice:nth-child(" + (k ) + ") path")
                        .attr("fill", "#111");
               
                    }
                     k=k+1;
                m=7;
            <%
System.out.println(rs.getInt(1)); //+"  "+rs.getString(2)+"  "+rs.getString(3));  
}
//step5 close the connection object  
con.close();
       
}catch(Exception e1)
{
    out.println(e1);
}
%>
            
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
                    d3.select(".slice:nth-child(" + (picked ) + ") path")
                        .attr("fill", "#111");

                    //populate question
                    d3.select("#question h1")
                        .text(data[picked].question);
                    document.getElementById("pick").value=data[picked]["value"];
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
        
   function myFunction() {
    var x = document.getElementById('question');
    if (x.style.display === 'none') {
        x.style.display = 'block';
    } else {
        x.style.display = 'none';
    }
}
   
   function mymFunction() {
	    document.getElementById("demo").value = "Hello World";
	}
  $('#hintmodal').on('show.bs.modal', function (event) {
	      var button = $(event.relatedTarget) 
	      var recipient = button.data('whatever')
	      var modal = $(this)
	      modal.find('.modal-body').text(hint[picked]["question"]);
	     
	   
	   })
	   
	   
	       

</script>

 <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<!--<script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  <!--  <script src="../../assets/js/ie10-viewport-bug-workaround.js">  -->

    </body>
</html>