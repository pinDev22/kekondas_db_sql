INSERT INTO Car (car_id, year, make, model, color, import_date)
VALUES (1, 2018, 'Toyota', 'Camry', 'Red', '2022-01-01'),
       (2, 2020, 'Honda', 'Civic', 'White', '2022-02-01');

INSERT INTO Salesperson (salesperson_id, first_name, last_name, start_date)
VALUES (1, 'John', 'Smith', '2022-01-01'),
       (2, 'Jane', 'Doe', '2022-02-01');

INSERT INTO Mechanic (mechanic_id, first_name, last_name, start_date)
VALUES (1, 'Bob', 'McIntyre', '2019-02-17'),
       (2, 'Alice','Wonderland', '2014-07-31');

INSERT INTO Customer (customer_id, first_name, last_name, entered_date)
VALUES (1, 'Frank', 'Jones', '2022-03-01'),
       (2, 'Samantha', 'Williams', '2022-04-01');

create procedure addTicket(car_id int, mechanic_id int, is_finished bool)
language plpgsql
as $$
begin 
insert into Ticket(car_id, mechanic_id, is_finished, creation_date)
Values(car_id, mechanic_id, is_finished, NOW());
end;
$$;

create procedure addInvoice(invoice_cost float, salesperson_id int, car_id int, customer_id int, was_paid bool)
language plpgsql
as $$
begin 
insert into Invoice (creation_date, invoice_cost, salesperson_id , car_id, customer_id, was_paid)
Values(NOW(), invoice_cost, salesperson_id, car_id, customer_id, was_paid);
end;
$$;