CREATE TABLE escola (
    cnpj VARCHAR(20) PRIMARY KEY
);

CREATE TABLE professor (
    matricula SERIAL PRIMARY KEY,
    telefone_cel VARCHAR(20) NOT NULL,
    cpf VARCHAR(15) NOT NULL,
    rua VARCHAR(100),
    cep VARCHAR(8),
    cidade VARCHAR(50),
    estado VARCHAR(2),
    cnpj_escola VARCHAR(20) NOT NULL,  -- 👈 vírgula aqui é obrigatória

    CONSTRAINT fk_professor_escola
    FOREIGN KEY (cnpj_escola) REFERENCES escola(cnpj)
);
