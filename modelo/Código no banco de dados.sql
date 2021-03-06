-- É só copiar e colar

create database bdloja;
use bdloja;

	create table usuario(

		idUsuario INT(100) AUTO_INCREMENT,
		tipo VARCHAR(5) NOT NULL,
		nome VARCHAR(60) NOT NULL,
		sobrenome VARCHAR(60),
		email VARCHAR(60) NOT NULL,
		sexo VARCHAR(9),
		numero VARCHAR(11),
		cpf VARCHAR(11),
		senha VARCHAR(60) NOT NULL,
		data datetime,
		PRIMARY KEY(id)

	)engine = innoDB;



	create table produto(

	id INT(100) AUTO_INCREMENT,
	imagem VARCHAR(100),
	marca VARCHAR(10) NOT NULL,
	modelo VARCHAR(10) NOT NULL,
	preco DECIMAL(6,2),
	quantidade INT(100),
	
	PRIMARY KEY(id)

	)engine = innoDB;



	create table compra(

	idCompra INT(100) AUTO_INCREMENT,	
	idProduto INT(100),
	id INT(100),
	preco DECIMAL(6,2),
	quantidade INT(100),

	PRIMARY KEY(idCompra),
	FOREIGN KEY(idProduto),
	FOREIGN KEY(idUsuario)

	)engine = innoDB;	




	create table cupom(

	idCupom INT(100) AUTO_INCREMENT,
	nmCupom VARCHAR(100) NOT NULL,
	codigo VARCHAR(100),
	desconto FLOAT(2,2),
	quantidadeCupom INT(100),


	)engine = innoDB;


-- Inner's join's








/*------Usuário administrador------*/

	INSERT into usuario(tipo,nome,sobrenome,email,sexo,numero,cpf,senha,data)
				values("admin","Raul","Rodrigues","raul.ifsp@gmail.com","Masculino",998167969,123,"123123123","2001-08-01");
	INSERT into usuario(tipo,nome,sobrenome,email,sexo,numero,cpf,senha,data)
				values("admin","Rafaela","Rodrigues","tororafaela6@gmail.com","Feminino",988320238,123,"123123123","2002-06-22");

/*---------------------------------*/