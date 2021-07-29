# Airbnb-Research
Using Airbnb dataset and SQL querying to obtain insight of New York City market. 


Dataset: 49077 rows 16 columns including details about rentals in NYC.
Research Questions:
1. a)What is the average rental cost for each borough? b)Which borough has the highest average price?
2. What is the distribution of properties between renters? Does it correlate with prices?
3. How is each room type spread out accross the neighbourhoods?

Results:
1. a) There is significant variability in the average price of each borough. Can partially be explained by the number of listings per each borough.
number_of_listings	  average_price	  borough
969	                    87.4	         Bronx
17012	                  124.57	       Brooklyn
18782	                  197.45	       Manhattan
4635	                  100.51	       Queens
308	                    115.88	       Staten Island

b) Manhattan is the most expensive borough. 
number_of_listings	  average_price	  borough
18782	                  197.45	        Manhattan

2) The distribution of properties between renters is a Pareto distribution, which is fitting since the pareto distribution was originally used to describe wealth-distribution in society. Most renters have one property but at the upper end the renter with the most properties has 327, with a steep drop off the second most has 115. This can be worrisome at the extremes but the prices does not correlate with number of properties owned.
average_price	  properties	  host_id                      
253.2	            327	          219517861
277.7	            115	          30283594
208.96	          96	          16098958
213.03	          96	          12243051
43.88	            89	          137358866
145	              84	          61391963
302.8	            76	          107434423
290.23	          65	          200380610
149.2	            51	          7503643
171.7	            50	          120762452

average_price	  properties	  host_id
55	              1	            5386695
125	              1	            80534927
110	              1	            102278506
120             	1         	  4240419
50	              1	            34690679
87	              1	            30460662
70	              1	            36786792
350	              1	            13523227
175             	1	            4740447
63	              1	            11045893

3. We know from Research Question 1 that Brooklyn and manhattan have the most listings. Here we can see Brooklyn has the most Private Rooms in the city while Manhattan has Entire homes and shared rooms for rent. This coupled with the average price information the consumer can make an educated decision basd on their own needs.  
 --Entire home/apt
availability	neighbourhood	     neighbourhood_group
1603	          Williamsburg	      Brooklyn
1345	          Bedford-Stuyvesant	Brooklyn
1126	          Upper East Side	    Manhattan
1068	          Upper West Side	    Manhattan
1059	          Hell's Kitchen	    Manhattan
--Private room
availability	neighbourhood	      neighbourhood_group
1780	          Bedford-Stuyvesant	Brooklyn
1721	          Williamsburg	      Brooklyn
1460	          Bushwick	          Brooklyn
1344	          Harlem	            Manhattan
651	            Crown Heights	      Brooklyn
--Shared room
availability	  neighbourhood	    neighbourhood_group
80	              Hell's Kitchen	    Manhattan
75	              Bedford-Stuyvesant	Brooklyn
63	              Bushwick	          Brooklyn
45	              Harlem	            Manhattan
44	              Upper East Side	    Manhattan
