/* Dense rank is a window function that assign rank to each row within a partition of a result*/


---ranking by list price in dec order in this it skips 4 5 6 rank check
select product_id, product_name,list_price, rank() over (order by list_price desc) price_rank from production.products

--to avoid the above issue dense rank is used 
select product_id, product_name,list_price, rank() over (order by list_price desc) price_rank,
dense_rank() over (order by list_price desc) price_dense_rank from production.products

---grouping of set find how much sale is happend on product id wise
select * from sales.order_items
select product_id,sum(list_price)  from sales.order_items  group by product_id

--group the set prdid and item id combine all cells and give the finsl price 
--cube give the sum of itemid level and product id wise and individualy sum reb by null
select product_id,item_id,sum(list_price) sales  from sales.order_items  group by cube(product_id,item_id)

select sum(list_price) from sales.order_items --5726406.57  948

--give the summ of the product id roll up the item leve
--roll up 1st do sorting,arrange base don the item and sum and give summ of items of all in the product id 
select product_id,item_id,sum(list_price) sales  from sales.order_items  group by product_id, rollup(item_id)




