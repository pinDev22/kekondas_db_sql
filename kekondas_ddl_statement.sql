CREATE TABLE Salesperson (
  salesperson_id INTEGER PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  start_date DATE NOT NULL
);

CREATE TABLE Car (
  car_id INTEGER PRIMARY KEY,
  Year INTEGER NOT NULL,
  make VARCHAR(255) NOT NULL,
  model VARCHAR(255) NOT NULL,
  color VARCHAR(255) NOT NULL,
  import_date DATE NOT NULL
);

CREATE TABLE Customer (
  customer_id INTEGER PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  entered_date DATE NOT NULL
);

CREATE TABLE Mechanic (
  mechanic_id INTEGER PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  start_date DATE NOT NULL
);

CREATE TABLE Invoice (
  invoice_id INTEGER PRIMARY KEY,
  creation_date DATE NOT NULL,
  invoice_cost FLOAT DEFAULT 0.00 NOT NULL,
  salesperson_id INTEGER NOT NULL,
  car_id INTEGER NOT NULL,
  customer_id INTEGER NOT NULL,
  was_paid BOOLEAN NOT NULL,
  FOREIGN KEY (salesperson_id) REFERENCES Salesperson(salesperson_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (car_id) REFERENCES Car(car_id)
);


CREATE TABLE Ticket (
  ticket_id INTEGER PRIMARY KEY,
  car_id INTEGER NOT NULL,
  mechanic_id INTEGER NOT NULL,
  is_finished BOOLEAN NOT NULL,
  creation_date DATE NOT NULL,
  FOREIGN KEY (car_id) REFERENCES Car(car_id),
  FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id)
);

