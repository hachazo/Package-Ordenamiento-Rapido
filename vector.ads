--Especificacion de un paquete generico
--parte visibl=- \
generic
   type Tipodato is private;
   type Indice is (<>); -- Lo defino la dimension en el programa principal
   with procedure Put (X: in tipodato); -- with define que se va a usar en el paquete
   with procedure Get (X: out tipodato); -- en este caso un procedimiento
   package Vector is
      type Tipovec is array (indice) of tipodato; --definimos lo que va a tener la parte oculta
      procedure Leer (Vec: out Tipovec); -- definimos los modulos que tiene la parte oculta
      procedure Imprimir (Vec: in Tipovec);
      end Vector;
-- procedure putInteger (x: in integer) is //leer vector
-- begin
-- Put (X);
--end Putinteger;
--procedure Getinteger (X: out Integer) is //Imprimir vector
--begin
--Get(X);
--end Getinteger;
--function Raiz (X: integer) return float is
--begin
--return sqrt(float(x));
--end Raiz;

--package Vecint is new Vecgenerico(integer,Rango, putInteger, getInteger,Raiz,">","+",0,elemento);
--   use vecInt;
--   V,E:Tipovec; 