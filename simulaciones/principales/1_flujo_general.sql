create procedure GENERAL(d integer)
is
dias integer;
today date;
dificultad integer;
DX INTEGER;
P INTEGER;
    begin
        DBMS_OUTPUT.PUT_LINE(' ------SIMULACIÓN GENERAL -------');
        dias:=0;
        today:= trunc(sysdate);
        today:= today - 1;
        today:= today + 12/24;
        DBMS_OUTPUT.PUT_LINE('Asignando contratos...');
        /* SE LLEVA AL CABO LA SIMULAICION 1*/
        today:= today + 6/24;
        DBMS_OUTPUT.PUT_LINE('Asignando transportes a proveedores...');
        /* SE LLEVA AL CABO LA SIMULAICION 2*/
        today:= today + 3/24;
        DBMS_OUTPUT.PUT_LINE('Asignando usuarios a proveedores...');
        /* SE LLEVA AL CABO LA SIMULAICION 3*/
        TODAY := TRUNC(today+1);
        DBMS_OUTPUT.PUT_LINE(' ------EMPIEZA LA SIMULACION -------');
        LOOP
            DBMS_OUTPUT.PUT_LINE('Generando la dificultad del dia...');
            dificultad:= DBMS_RANDOM.VALUE(1,3);
            if dificultad = 1 then
                DBMS_OUTPUT.PUT_LINE('Hoy sera un dia facil...¡Que suerte!');
                /*SE DISPONE A HACER UN NUMERO RANDOM PARA ELEGIR LOS TRANSPORTES A DAÑAR Y NUMEROS DE PEDIDOS DE ESE DIA*/
                dX:= DBMS_RANDOM.VALUE(1,3);
                P:= DBMS_RANDOM.VALUE(5,15);
            elsif dificultad = 2 then
                DBMS_OUTPUT.PUT_LINE('Hoy sera un dia normal...Esta bien');
                /*SE DISPONE A HACER UN NUMERO RANDOM PARA ELEGIR LOS TRANSPORTES A DAÑAR Y NUMEROS DE PEDIDOS DE ESE DIA*/
                dX:= DBMS_RANDOM.VALUE(4,6);
                P:= DBMS_RANDOM.VALUE(16,25);
            elsif dificultad = 3 then
                DBMS_OUTPUT.PUT_LINE('Hoy sera un dia dificl...¡You better work b***h!');
                /*SE DISPONE A HACER UN NUMERO RANDOM PARA ELEGIR LOS TRANSPORTES A DAÑAR Y NUMEROS DE PEDIDOS DE ESE DIA*/
                dX:= DBMS_RANDOM.VALUE(7,12);
                P:= DBMS_RANDOM.VALUE(26,35);
            end if;
            today:= today + 4/24;
            DBMS_OUTPUT.PUT_LINE('Dañando transportes...');
            /* SE LLEVA AL CABO LA SIMULAICION 4*/
            today:= today + 2/24;
            DBMS_OUTPUT.PUT_LINE('Reponiendo transportes...');
            /* SE LLEVA AL CABO LA SIMULAICION 5*/
            today:= today + 2/24;
            DBMS_OUTPUT.PUT_LINE('Renovando contratos...');
            /* SE LLEVA AL CABO LA SIMULAICION 5*/
            today:= today + 2/24;
            DBMS_OUTPUT.PUT_LINE('Se entra a general pedidos...');
            /* SE LLEVA AL CABO LA SIMULACION general pedidos*/
            TODAY := TRUNC(today+1);
            dias:= dias+1;
            DBMS_OUTPUT.PUT_LINE('Se acabo el dia, a mimir');
            exit when dias=d;
        end loop;
        DBMS_OUTPUT.PUT_LINE('------TERMINANDO SIMULACIÓN GENERAL-------');
    end;
/

