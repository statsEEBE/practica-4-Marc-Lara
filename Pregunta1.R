# Practica 3   models estadistics

# Binomial (enquesta) X=nºde 1s en n
# Binomial negativa (resistència) X=nºde 0s que necessito per trobar k 1s

                              #preg 1 Poisson
                                  #calculem P(X=20)
exp(-25)*25^20/factorial(20)
dpois(20,25)                      # = f(20) = dpois(x,parametre(λ))

x<-0:40                           #possibles valors de trucades/hora (en realitat 0:+infinit)
f <-dpois(x,25)                   #definim funció massa prob
plot(x,f,type='h',col='red')      # grafiquem la funció de massa de prob (poisson)

ppois(20,25)                      #P(X<=20) = F(20)     Ppois
ppois(22,25)-ppois(17,25)

x<-0:43                           #possibles valors de trucades/hora (en realitat 0:+infinit)
f <-ppois(x,25)                   #definim funció densitat de prob
plot(x,f,type='s',col='red')      # grafiquem la funció de densitat (poisson)


qpois(0.5,25)                     # mediana, valor que deixa 0,5 de probabilitat a l'esquerra
qpois(0.25,25)                    # primer quartil, valor que f-1(x)= 0.25

#dpois    f(x)
#ppois    F(x)
#qpoiss   F-1(x)
#rpoiss   simula r
                        
λ2 <-25*0.033                     # modificar el λ2 necessitem passar a VAC --> exponencial (λ)

ppois(0,λ2)                       # probabilitat de no tenir trucades quan la prob de que truquin en 0.33h és λ2

pexp(0.033,25)


                                #EXPONENCIAL(λ) (temps entre mesures de poisson(λ)) 

t<- seq(0,10,0.1)                                 #
plot(t,dexp(t,25),type='l',col='red') # grafiquem la funció de massa de prob (exponencial)
plot(t,pexp(t,25),type='l',col='red') # grafiquem la funció de densitat (exp)

1-pexp(0.052,25)             

mean(rexp(500000,25))                #temps mig entre trucades
1/25                                 # λ=truc/h   1/λ = tems mig entre trucades




          #Problema 2
1-pexp(13000,1/10000)

qexp(0.8, 1/10000)

set.seed(85)                         #calibrar experiment aleatori
simul<-rexp(100,1/10000)

mean(simul)
median(simul)
var(simul)



