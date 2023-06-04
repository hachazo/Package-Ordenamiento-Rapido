with vector;
generic
   type Tipodato is private;
   type Tindice is (<>);
   with procedure Put (X: in Tipodato);
   with procedure Get (X: out Tipodato);
   with function "<=" (A, B: in Tipodato) return Boolean;
   with function ">" (A, B: in Tipodato) return Boolean;
   
   package Ordenamiento_Radipdo is package Arreglo is new Vector(Tipodato,Tindice,Put,Get);
      use Arreglo;
      
      procedure Ordmezcla (Datos   : in out Tipovec; Primero,Ultimo  : tindice);
      procedure Mezclar (Datos: in out Tipovec; IzqPrim, IzqUlt, DerPrim, DerUlt: in tindice);
end Ordenamiento_Radipdo;
