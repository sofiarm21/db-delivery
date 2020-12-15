create procedure GENERAL_PEDIDOS(P integer, today in out date)
is
n_pedidos integer;
begin
n_pedidos:=0;
DBMS_OUTPUT.PUT_LINE('-------SIMULACIÓN GENERAL DE PEDIDO---------');
loop
    n_pedidos:= n_pedidos+1;
    /* SE LLEVA AL CABO LA SIMULAICION 7*/
    DBMS_OUTPUT.PUT_LINE('Se crea un pedido...');
    DBMS_OUTPUT.PUT_LINE('Se crea el pedido Nro'|| n_pedidos);
    CREAR_PEDIDOS(TODAY => today);
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
    TODAY:= today + 30/(24*60);
    exit when n_pedidos = p;
end loop;
    /* SE LLEVA AL CABO LA SIMULAICION 8*/
    DBMS_OUTPUT.PUT_LINE('Se lleva al cabo la simulacion de asignar transportes a pedido');
    asignacion_pedidos_transportes(TODAY => TODAY);
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
    /* SE LLEVA AL CABO LA SIMULAICION 9*/
    DBMS_OUTPUT.PUT_LINE('Se lleva al cabo la simulacion de depachar pedido');
    despachar_pedidos(today);
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('------TERMINANDO SIMULACIÓN GENERAL DE PEDIDOS-------');
end;
/
