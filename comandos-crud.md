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