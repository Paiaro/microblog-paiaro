# Operações CRUD

## RESUMO


- C: CREATE (INSERT) -> inserir dados
- R: READ (SELECT) -> ler/carregar dados
- U: UPDATE (UPDATE) -> atualizar
- D: DELETE (DELETE) -> excluir dados

## Exemplos

### INSERT na tabela de usuários

```sql
INSERT INTO usuarios (nome, email, senha, tipo)
VALUES ('Gabriel',"gabrielpaiarop@gmail.com",'123','admin');
```

```sql
INSERT INTO usuarios (nome, email, senha, tipo)
VALUES ('Cracudo',"cracudo@gmail.com",'1234','editor');
```

```sql
INSERT INTO usuarios (nome, email, senha, tipo)
VALUES ('Tortinho','tortinho@gmail.com','321','editor');
```

### SELECT na tabela de usuários

```sql
SELECT nome, email FROM usuarios;
```

```sql
SELECT nome, email FROM usuarios
WHERE tipo = 'admin';
```
```sql
SELECT * FROM usuarios
WHERE id >1;
```

### UPDATE na tabela de usuários

```sql
UPDATE usuarios SET tipo = 'editor' WHERE id = 1;
-- sempre passar pelo menos uma condição para o update
```

### UPDATE na tabela de usuários

```sql
DELETE FROM usuarios WHERE id = 2;

```

### UPDATE na tabela de usuários

1) insira mais dois usuarios quaisquer dados. deixe um como `admin` e o outro como `editor`.

```sql
INSERT INTO usuarios(nome,email,senha,tipo) VALUES ("cracudo","tortinho");

```
2) Em uma nova consulta SQL, mostre os `id`, `nome` e `tipo` de todos os usuarios atuais.

```sql
SELECT nome, id, tipo FROM usuarios;

```

## Exemplos para tabelas de noticias

### Inserir notícias 

```sql
INSERT INTO noticias (titulo, texto, resumo, imagem, usuario_id) VALUES ('Meu pai ganhou na mega-sena', 'e foi comprar cigarro e nunca mais voltou', 'fugiu com uma novinha','premio.jpg', 1);

```
```sql
INSERT INTO noticias (titulo, texto, resumo, imagem, usuario_id) VALUES ('assalto em SP da errado', 'assaltante quebrou a cara ao cair em bueiro', 'Assalto em SP','roubo.jpg', 3);

```
```sql
INSERT INTO noticias (titulo, texto, resumo, imagem, usuario_id) VALUES ('Cachorros que veem cores', 'um estudo diz que os cachorros enxergam mais cores do que podiamos imaginar', 'Mundo canino com mais cor','cachorros.jpg', 4);

```

### SELECT em notícias

```sql
SELECT titulo, data FROM noticias;

```
```sql
SELECT titulo, data FROM noticias ORDER BY DATA DESC;
-- Usamos o ORDER BY data DESC para classificar em ordem decrescente pela data
```

### SELECT com JOIN (consulta com junção de tabelas)

**Objetivo:** realizar uma consulta que mostre a data e o titulo da notícias **e** o nome do autor da notícia.

```sql
-- Selecionando as colunas indicando as tabelas em que estão
-- especificamos as tabelas que serão "juntadas/combinadas" usando o JOIN
-- critério da junção/relação entre as tabelas
-- Usamos as referencias de FK e PK
SELECT noticias.data, noticias.titulo, usuarios.nome FROM noticias JOIN usuarios ON noticias.usuario_id = usuarios.id;
```