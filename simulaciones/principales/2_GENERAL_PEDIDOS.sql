create OR REPLACE  procedure GENERAL_PEDIDOS(P integer, today in out date)
is
n_pedidos integer;
begin
n_pedidos:=0;
DBMS_OUTPUT.PUT_LINE('Holaa');
loop
    n_pedidos:= n_pedidos+1;
    DBMS_OUTPUT.PUT_LINE('9. ------SIMULACIÓN GENERAL DE PEDIDO-------');
    /* SE LLEVA AL CABO LA SIMULAICION 7*/
    DBMS_OUTPUT.PUT_LINE('1. Se lleva al cabo la simulacion de crear pedido');
    DBMS_OUTPUT.PUT_LINE('Se crea el pedido Nro'|| n_pedidos);
    CREAR_PEDIDOS(TODAY => today);
    TODAY:= today + 30/(24*60);
    exit when n_pedidos = p;
end loop;
    /* SE LLEVA AL CABO LA SIMULAICION 8*/
    DBMS_OUTPUT.PUT_LINE('2. Se lleva al cabo la simulacion de asignar transportes a pedido');
    asignacion_pedidos_transportes(TODAY => TODAY);
    /* SE LLEVA AL CABO LA SIMULAICION 9*/
    DBMS_OUTPUT.PUT_LINE('3. Se lleva al cabo la simulacion de depachar pedido');
    /*execute immediate despachar_pedidos(today);*/
    DBMS_OUTPUT.PUT_LINE('------TERMINANDO SIMULACIÓN GENERAL DE PEDIDOS-------');
end;
/
