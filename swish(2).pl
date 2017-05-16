% parent(X,Y) means that person X is a parent (father or mother) of person Y

parent(alex, julia).
parent(alex, rosa).
parent(lina, julia).
parent(lina, rosa).
parent(romeo, peter).
parent(julia, peter).
parent(rosa, silvia).
parent(oscar, ida).
parent(eva, ida).
parent(eva, bruno).
parent(peter, bruno).
parent(peter, georg).
parent(peter, irma).
parent(ruth, georg).
parent(ruth, irma).
parent(silvia, otto).
parent(silvia, pascal).
parent(irma, olga).
parent(irma, jean).
parent(otto, olga).
parent(otto, jean).
parent(jean, tina).
parent(marie, tina).

% male(X) means that X is a male person

male(alex).
male(romeo).
male(oscar).
male(peter).
male(bruno).
male(georg).
male(otto).
male(pascal).
male(jean).

% husband(X,Y) means that person X is the husband of person Y

husband(alex, lina).
husband(romeo, julia).
husband(oscar, eva).
husband(peter, ruth).
husband(otto, irma).
husband(jean, marie).
 
party.
female(X):- \+ male(X).
father(X,Y):- parent(X,Y),male(X).
mother(X,Y):- parent(X,Y),female(X).
 son(X,Y):- parent(Y,X),male(X).
 daughter(X,Y):- parent(Y,X),female(X).
siblings(X,Y):- father(Z,X),father(Z,Y),mother(W,X),mother(W,Y),X\==Y,husband(Z,W).
 brother(X,Y):- father(Z,X),father(Z,Y),mother(W,X),mother(W,Y),husband(Z,W),male(X),male(Y),X\==Y.
 sister(X,Y):- father(Z,X),father(Z,Y),mother(W,X),mother(W,Y),husband(Z,W),female(X),female(Y),X\==Y.
wife(X,Y):-  husband(Y,X).
 