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

/* valor medio das vendas por produto*/
select truncate(avg(valorunitario),2) as ValorMedio
from venda;

select sum(quantidade)as quantidade
from venda;

select avg(valorunitario) as valormedio
from venda;

select sum(quantidade) as quantidade,
 truncate(avg(valorunitario),2) as valormedio,
 truncate((sum(valorunitario)/sum(quantidade)),2) as valormediogeral 
from venda
where idvenda in (1,2);

/* mostrar todos os produtos e valores que estao acima da media dos valores*/
select produto, valorunitario
from venda
where valorunitario > (select avg(valorunitario) from venda
);

/* filtrar vendas com valorunitario acima de um certo limite*/
select produto, valorunitario
from venda
where valorunitario > 1000.00;

select * from venda;

/* vendas dentro de um intervalo de datas*/
select produto, valorunitario, data
from venda
where data between "2025-02-02" and "2025-03-09";

/* produto e o valor mais caro*/
select max(valorunitario) as valorMaisAlto from venda;

select produto,valorunitario as valormaisalto 
from venda
order by valorunitario desc limit 1;

select produto, max(valorunitario) as Valormaisalto
from venda
where valorunitario = (select max(valorunitario) 
from venda);

/* produto e o valor mais baixo*/
select produto,valorunitario as valormaisbaixo 
from venda
order by valorunitario asc limit 1;

select produto, min(valorunitario) as Valormaisalto
from venda
where valorunitario = (select min(valorunitario) 
from venda);






