
Question: Is it true that on average the rate of inflation 1980-92 was higher than the average rate of inflation 1970-80?

 Explain how you arrived at your answer (how do you know from your output that this is the answer)?
     

 data inflationrate;                                                                                                                           
 input                                                                                                                                  
                                                                                                                                        
                      country $ a2 -a11;                                                                                                
     label         a2= Population                                                                                                       
                   a3= Area                                                                                                             
                   a4= GNP per capita 1992                                                                                              
                   a5= avg annual growth of real GNP per capita 1980-92                                                                 
                   a6= rate of inflation 1970-80                                                                                        
                   a7= rate of inflation 1980-92                                                                                        
                   a8= Life expectancy 1992,                                                                                            
                   a9= adult illiteracy female 1990                                                                                     
                   a10= adult illiteracy - Total 1990                                                                                   
                   a11= Continent code ;                                                                                                
 diff = a6 -a7;                                                                                                                         
 cards;                                                                                                                                 
Mozambiq    16.5     802      60    -3.6   x          38      44      79      67       1                                                
Ethiopia    54.8    1222     110    -1.9     4.3     2.8      49   x       x           1                                                
Tanzania    25.9     945     110   x        14.1    25.3      51   x       x           1                                                
Sierra     4.4      72     160    -1.4    12.5    60.8      43      89      79         1                                                
Nepal       19.9     141     170       2     8.5     9.2      54      87      74       2                                                
Uganda      17.5     236     170   x       x       x          43      65      52       1                                                
Bhutan       1.5      47     180   x       x         8.7      48      75      62       2                                                
Burundi      5.8      28     210     1.3    10.7     4.5      48      60      50       1                                                
Malawi       9.1     118     210    -0.1     8.8    15.1      44   x       x           1                                                
Banglade   114.4     144     220     1.8    20.8     9.1      55      78      65       2                                                
Chad           6    1284     220     3.4     7.7     0.9      47      82      70       1                                                
Guinea         1      36     220     1.6     5.7    59.3      39      76      64       1                                                
Madagasc    12.4     587     230    -2.4     9.9    16.4      51      27      20       1                                                
Rwanda       7.3      26     250    -0.6    15.1     3.6      46      63      50       1                                                
Niger        8.2    1267     280    -4.3    10.9     1.7      46      83      72       1                                                
BurkinaF     9.5     274     300       1     8.6     3.5      48      91      82       1                                                
India      883.6    3288     310     3.1     8.4     8.5      61      66      52       2                                                
Kenya       25.7     580     310     0.2    10.1     9.3      59      42      31       1                                                
Mali           9    1240     310    -2.7     9.7     3.7      48      76      68       1                                                
Nigeria    101.9     924     320    -0.4    15.2    19.4      52      61      49       1                                                
Nicaragu     3.9     130     340    -5.3    12.8   656.2      67   x       x           3                                                
Togo         3.9      57     390    -1.8     8.9     4.2      55      69      57       1                                                
Benin          5     113     410    -0.7    10.3     1.7      51      84      77       1                                                
CentralA     3.2     623     410    -1.5    12.1     4.6      47      75      62       1                                                
Pakistan   119.3     796     420     3.1    13.4     7.1      59      79      65       2                                                
Ghana       15.8     239     450    -0.1    35.2    38.7      56      79      65       1                                                
China     1162.2    9561     471     x      x       6.5      69      38      27       2                                                 
Maurinta     2.1    1026     530    -0.8     9.9     8.3      48      79      66       1                                                
SriLanka    17.4      66     540       1     2.3      11      72      17      12       2                                                
Zimbabwe    10.4     391     570    -0.9     9.4    14.4      60      40      33       1                                                
Honduras     5.4     112     580    -0.3     8.1     7.6      66      29      27       3                                                
Lesotho      1.9      30     590    -0.5     9.7    13.2      60   x       x           1                                                
Egypt       54.7    1001     640     1.8     9.6    13.2      62      66      52       1                                                
Indonesi   184.3    1905     670       4    21.5     8.4      60      32      23       2                                                
Myanmar     43.7     677   x       x        11.4    14.8      60      28      19       2                                                
;                                                                                                                                       
                                                                                                                                        
proc means n mean t prt; var a6 a7 diff;                                                                                                 
run;
