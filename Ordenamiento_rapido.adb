package body Ordenamiento_Rapido is

   procedure Ordmezcla (
         Datos   : in out Tarray;
         Primero,
         Ultimo  :        Integer) is
      Mitad : Integer;
   begin
      if Primero < Ultimo then
         Mitad := (Primero + Ultimo)/2;
         Ordmezcla(Datos, Primero, Mitad);
         Ordmezcla(Datos, Mitad +1, Ultimo);
         Mezclar(Datos, Primero, Mitad, Mitad+1, Ultimo);
      end if;
   end Ordmezcla;

   procedure Mezclar (
         Datos   : in out Tarray;
         Izqprim,
         Izqult,
         Derprim,
         Derult  : in     Integer) is
      Temp      : Tarray;  -- arreglo Auxiliar
      Indice    : Integer;
      Izqactual,
      Deractual : Integer;
   begin -- Mezclar
      Izqactual:= Izqprim;
      Deractual:= Derprim;
      Indice:= Izqprim;
      while Izqactual <= Izqult and Deractual <= Derult loop
         if Datos (Izqactual) < Datos(Deractual)
               then -- El elemento de la izquierda es menor
            Temp(Indice):= Datos (Izqactual);
            Izqactual:= Izqactual + 1;
         else -- El elemento de la derecha es menor o igual
            Temp(Indice):= Datos (Deractual);
            Deractual:= Deractual + 1;
         end if;
         Indice:= Indice + 1;
      end loop;
      while Izqactual <= Izqult loop
         Temp(Indice):= Datos (Izqactual);
         Izqactual:= Izqactual + 1;
         Indice:= Indice + 1;
      end loop;
      while Deractual <= Derult loop
         Temp(Indice):= Datos (Deractual);
         Deractual:= Deractual +1;
         Indice:=Indice +1;
      end loop;
      for Indice in Izqprim .. Derult loop
         Datos(Indice):=Temp(Indice);
      end loop;
   end Mezclar;

end Ordenamiento_Rapido;
