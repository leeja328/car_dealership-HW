INSERT INTO "Customer"(
  "customer_id",
  "first_name",
  "last_name", 
  "email",
  "billing_info",
  "phone_number" 
) VALUES (
	001,
	'James',
	'Lee',
	'jameslee@gmail.com',
	'4222 4222 4223 4343 403 08/25',
	'(123)456-2345'
);

INSERT INTO "Customer"(
  "customer_id",
  "first_name",
  "last_name", 
  "email",
  "billing_info",
  "phone_number" 
) VALUES (
	002,
	'Steve',
	'Carell',
	'michaelscott@gmail.com',
	'4222 4222 4223 4343 403 08/25',
	'(123)466-2323'
);


INSERT INTO "Mechanic"(
  "mechanic_id",
  "first_name",
  "last_name"

) VALUES (
	001,
	'James',
	'Lee'
);

INSERT INTO "Mechanic"(
  "mechanic_id",
  "first_name",
  "last_name"

) VALUES (
	002,
	'Whistlin',
	'Diesel'
);

INSERT INTO "Parts"(
  "parts_id",
  "part",
  "cost"

) VALUES (
	001,
	'Engine',
	'30000'
);

INSERT INTO "Parts"(
  "parts_id",
  "part",
  "cost"

) VALUES (
	002,
	'Back Bumper',
	'2000'
);

INSERT INTO "Sales person"(
  "seller_id",
  "first_name",
  "last_name",
  "car_id"

) VALUES (
	001,
	'Bob',
	'Mills',
	'001'
);

INSERT INTO "Sales person"(
  "seller_id",
  "first_name",
  "last_name",
  "car_id"

) VALUES (
	002,
	'Freddy',
	'Mills',
	'002'
);


INSERT INTO "Lot"(
  "lot_id",
  "sedans",
  "trucks",
  "SUV",
  "sport"

) VALUES (
	001,
	'Honda Accord',
	'Ford F-150',
	'Telsa X',
	'Lamborghini Gallardo'
);

INSERT INTO "Lot"(
  "lot_id",
  "sedans",
  "trucks",
  "SUV",
  "sport"

) VALUES (
	002,
	'Ford Focus',
	'Ford F-2000',
	'Telsa T',
	'Lamborghini Aventedor'
);

INSERT INTO "Adjustments"(
  "adjustment_id",
  "adjustment",
  "cost"

) VALUES (
	001,
	'Oil Change',
	'50'
);

INSERT INTO "Adjustments"(
  "adjustment_id",
  "adjustment",
  "cost"

) VALUES (
	002,
	'Tire Rotation',
	'20'
);


INSERT INTO "Customer Car"(
  "customer_car_id",
  "make",
  "model",
  "customer_id"

) VALUES (
	001,
	'chrysler ',
	'sebring',
	'002'
);

INSERT INTO "Customer Car"(
  "customer_car_id",
  "make",
  "model",
  "customer_id"

) VALUES (
	002,
	'honda',
	'accord',
	'001'
);

