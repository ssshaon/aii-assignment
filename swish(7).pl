bonus(Number):- Number is 3 + 2.
location(tokyo,35,-139).
location(rome,41,-12).
location(london,51,0).
location(canberra,-31,-149).
location(madrid,48,3).

north_of(X,Y):- location(X,Lat1,_),location(Y,Lat2,_),Lat1 > Lat2.
west_of(X,Y):- location(X,_,Long1),location(Y,_,Long2),Long1 > Long2.

square(X,Result):- Result is X * X.

add_2_numbers(X,Y,Result):- Result is X + Y.

find_parity(X,Result):- Result is X mod 2.

 
f(X,Result):- Parity is X mod 2 ,(   
                                 (   Parity == 1, Result is X * 2 + 1);
                                 (   Parity == 0, Result is X)
                                 ).
hot(Temp,HowHot):-(   Temp >=100,
                      HowHot="Very");
    (   Temp <100 , Temp >=90, HowHot="Pretty");
    (   Temp<90 , Temp >=70, HowHot="Perfect");
    (   Temp<70, HowHot="Cold").

factorial(0,1).
factorial(N,Result):- N > 0 ,
    N_minus_1 is N - 1,
    factorial(N_minus_1,Result1),
    Result = N * Result1 .
    