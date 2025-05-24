CREATE TABLE movies (
	movie_id INT PRIMARY KEY,
	movie_title VARCHAR(50), 
    genre DECIMAL(10, 2)
);

CREATE TABLE clients (
    cliente_id INT PRIMARY KEY,
    name_cliente VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE subscriptions (
	subscription_id INT PRIMARY KEY,
    client_id INT,
    movie_id INT,
    subscription_date DATE NOT NULL,
    order_date DATE,
    FOREIGN KEY (client_id) REFERENCES clients(client_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

  INSERT INTO movies (movie_id, title, genre) VALUES
(1, 'Inception', 'Sci-Fi'),
(2, 'The Godfather','Crime'),
(3, 'The Dark Knight', 'Action'),
(4, 'Pulp Fiction','Drama'),
(5, 'Forrest Gump', 'Drama');

  INSERT INTO clients (client_id,client_name, email) VALUES
(1, 'Alice', 'alice@gmail.com'),
(2, 'Bob', 'bob@gmail.com'),
(3, 'Charlie', 'teste@gmail.com'),
(4, 'David', 'david@outlook.com'),
(5, 'Eve', 'eve@outlook.com');


  INSERT INTO subscriptions_id, cliente_id, movie_id, subscription_date) VALUES
(1, 1, 1, '2023-01-01'),
(2, 2, 2, '2023-02-01'),
(3, 3, 3, '2023-03-01'),
(4, 4, 4, '2023-04-01'),
(5, 5, 5, '2023-05-01');


