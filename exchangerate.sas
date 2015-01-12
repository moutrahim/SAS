Plot Yen/ $ Exchange rate on Year from 1969-1994.                                                                                    
  If we define the depreciation (or appreciation of a currency against the US$) as the annual   percentage   change in the exchange rate

 -Then plot the annual appreciation of the Yen against the Dollar between 1969 and 1994.
                                                 
-Calculate the average  appreciation of the Yen/Dollar exchange rate for each of the 3 decades: the 70’s, 80’s and 90’s. 


SAS PROGRAM:

DATA exchangerate;                                                                                                                             
 INPUT B1-B7;                                                                                                                               
  LABEL            b1='year                                   '                                                                             
                   b2='Exchange rate (DM/$)                   '                                                                             
                   b3='Exchange rate (Yen/$)                  '                                                                             
                   b4='U.S. Exports                           '                                                                             
                   b5='U.S. Imports                           '                                                                             
                   b6='interest rate (10-year Treasury Bond)  '                                                                             
                   b7='interest rate (Federal Funds rate)     ';                                                                            
       APPRECIATION = (B3 / LAG1(B3) -1)*100;                                                                                               
       IF B1 LT 80 AND B1 NE 69 THEN DECADE ='70S';                                                                                         
       IF B1 LT 90 AND B1 GE 80 THEN DECADE ='80S';                                                                                         
       IF B1 GE 90 THEN DECADE ='90S';                                                                                                      
DATALINES;                                                                                                                                  
    69  3.9251  358.36    49.3    50.5    6.67     8.2                                                                                      
    70  3.6465  358.16      57    55.8    7.35    7.18                                                                                      
    71   3.483  347.79    59.3    62.3    6.16    4.66                                                                                      
    72  3.1886  303.13    66.2    74.2    6.21    4.43                                                                                      
    73  2.6715  271.31    91.8    91.2    6.84    8.73                                                                                      
    74  2.5868  291.84   124.3   127.5    7.56    10.5                                                                                      
    75  2.4614  296.78   136.3   122.7    7.99    5.82                                                                                      
    76  2.5185  296.45   148.9   151.1    7.61    5.04                                                                                      
    77  2.3236  268.62   158.8   182.4    7.42    5.54                                                                                      
    78  2.0097  210.39   186.1   212.3    8.41    7.93                                                                                      
    79  1.8343  219.02   228.9   252.7    9.44   11.19                                                                                      
    80  1.8175  226.63   279.2   293.9   11.46   13.36                                                                                      
    81  2.2632  220.63     303   317.7   13.91   16.38                                                                                      
    82  2.4281  249.06   282.6   303.2      13   12.26                                                                                      
    83  2.5539  237.55   276.7   328.1    11.1    9.09                                                                                      
    84  2.8455  237.46   302.4   405.1   12.44   10.23                                                                                      
    85   2.942  238.47   302.1   417.6   10.62     8.1                                                                                      
    86  2.1705  168.35   319.2   451.7    7.68    6.81                                                                                      
    87  1.7981   144.6     364   507.1    8.39    6.66                                                                                      
    88   1.757  128.17   444.2   552.2    8.85    7.57                                                                                      
    89  1.8808  138.07     508   587.7    8.49    9.21                                                                                      
    90  1.6166     145   557.1   628.5    8.55     8.1                                                                                      
    91   1.661  134.59   601.1   620.9    7.86    5.69                                                                                      
    92  1.5618  126.78   638.1   668.4    7.01    3.52                                                                                      
    93  1.6545  111.08   659.1   724.3    5.87    3.02                                                                                      
    94  1.6216  102.18   716.1   818.2    7.09    4.219                                                                                     
    ;                                                                                                                                       
 PROC SORT; BY DECADE;                                                                                                                      
 SYMBOL I = JOIN;                                                                                                                           
    PROC GPLOT; PLOT B3 * B1;                                                                                                               
                PLOT APPRECIATION * B1;                                                                                                     
 PROC MEANS N MEAN; VAR APPRECIATION; BY DECADE; TITLE 'AVERAGE ANNUAL YEN APPRECIATION';                                                   
    RUN;                                                                                                                                    
                                                                                                                                            
                                                                                                                                            
