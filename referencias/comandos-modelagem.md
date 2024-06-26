# Comandos SQL para modelagem física

Implantar o banco de dados no servidor /back-end.

## Comandos SQL para modelagem 

### Criar o banco de dados 
```sql

CREATE DATABASE microblog_gabriel CHARACTER SET utf8mb4;
```


### CRIAR tabela de usuários


```sql
CREATE TABLE usuarios(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    senha VARCHAR(255) NOT NULL, email VARCHAR(45) NOT NULL UNIQUE, tipo ENUM('admin','editor') NOT NULL
);

```
### CRIAR tabela de noticias


```sql
CREATE TABLE noticias(
    id INT AUTO_INCREMENT PRIMARY KEY,
    data DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    titulo VARCHAR (150) NOT NULL, texto TEXT NOT NULL,
    resumo TINYTEXT NOT NULL, imagem VARCHAR (45) NOT NULL,
    usuario_id INT NOT NULL
);

```

### CRiar o relacionamento

Utilizamos uma `constraint` (restrição) para criar a relação entre as tabelas através das chaves **primária** e **estrangeira**

```sql
-- ALTER TABLE serve para notificar estrutura da tabela
ALTER TABLE noticias
ADD CONSTRAINT fk_noticias_usuarios
FOREIGN KEY (usuario_id) REFERENCES usuarios (id);
```