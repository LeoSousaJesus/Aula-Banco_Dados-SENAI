use loja_informatica;
show tables;
select * from venda; /* projetar todas as vendas */

/* projetar todos os produtos e seus valores*/
select produto, valorunitario from venda;

/* quantidade de produtos cadastrados*/
select count(*) as total_produtos from venda;

/* valor a pagar se valorunitario sofrer um acréscimo de 10%*/
select produto, valorunitario, valorunitario * 1.1 as valor_acrescimo from venda;

/*qual o valor a pagar se comprarmos todos os produtos do primeiro registro */
/*select produto, quantidade * valorunitario as valor_total_produto from venda where idvenda= 1;*/

select produto, quantidade, valorunitario, quantidade * valorunitario as valor_total_produto from venda;

/* total das vendas por produto*/
select produto, sum(quantidade * valorunitario) as "Total a pagar" from venda;

/* quantidade total vendida por produto*/
select sum(quantidade) as total from venda;

/* número de vendas por dia*/
select produto, data, quantidade, count(data) as "Número de Vendas" from venda where data = "2025-01-01";







