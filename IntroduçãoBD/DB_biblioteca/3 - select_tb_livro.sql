select * from tb_livro;

select titulo, preco from tb_livro where preco > 150;
select titulo, paginas from tb_livro where paginas >= 300;
select titulo, disponivel from tb_livro where disponivel = 'S';
select titulo, categoria from tb_livro where categoria = 'aventura';
select titulo, preco from tb_livro order by preco asc;
select titulo, preco from tb_livro order by preco desc;
select titulo, autor from tb_livro order by titulo asc;
select titulo, autor from tb_livro order by autor asc;
select titulo from tb_livro where titulo like('_a%');
select autor, titulo from tb_livro where autor like('a%');
select preco from tb_livro where preco between 100 and 300;
select count(*) from tb_livro;