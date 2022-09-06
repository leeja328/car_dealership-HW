CREATE TABLE "Customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(60),
  "last_name" VARCHAR(60),
  "email" VARCHAR(100),
  "billing_info" VARCHAR(100),
  "phone_number" VARCHAR(25),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "Service" (
  "service_id" SERIAL,
  "hours" INTEGER,
  "parts_id" VARCHAR(60),
  "adjustments_id" VARCHAR(60),
  "mechanic_id" INTEGER,
  PRIMARY KEY ("service_id")
);

CREATE TABLE "Mechanic" (
  "mechanic_id" SERIAL,
  "first_name" VARCHAR(60),
  "last_name" VARCHAR(60),
  PRIMARY KEY ("mechanic_id")
);

CREATE TABLE "Parts" (
  "parts_id" SERIAL,
  "part" VARCHAR(60),
  "cost" VARCHAR(60),
  PRIMARY KEY ("parts_id")
);

CREATE TABLE "Adjustments" (
  "adjustment_id" SERIAL,
  "adjustment" VARCHAR(60),
  "cost" VARCHAR(60),
  PRIMARY KEY ("adjustment_id")
);



CREATE TABLE "Service Ticket" (
  "service_ticket_id" SERIAL,
  "total_cost" INTEGER,
  "service_id" INTEGER,
  "customer_car_id" INTEGER,
  "date" DATE,
  PRIMARY KEY ("service_ticket_id")
);

CREATE TABLE "Customer Car" (
  "customer_car_id" SERIAL,
  "make" VARCHAR(60),
  "model" VARCHAR(60),
  "customer_id" INTEGER,
  PRIMARY KEY ("customer_car_id"),
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id")
);


CREATE TABLE "Lot" (
  "lot_id" SERIAL,
  "sedans" VARCHAR(60),
  "trucks" VARCHAR(60),
  "SUV" VARCHAR(60),
  "sport" VARCHAR(60),
  PRIMARY KEY ("lot_id")
);

CREATE TABLE "Car" (
  "car_id" SERIAL,
  "make" VARCHAR(60),
  "model" VARCHAR(60),
  "lot_id" INTEGER,
  "cost" INTEGER,
  PRIMARY KEY ("car_id"),
    FOREIGN KEY ("lot_id")
      REFERENCES "Lot"("lot_id")
);

CREATE TABLE "Sales person" (
  "seller_id" SERIAL,
  "first_name" VARCHAR(60),
  "last_name" VARCHAR(60),
  "car_id" INTEGER,
  PRIMARY KEY ("seller_id")
);



CREATE TABLE "Invoice" (
  "invoice_id" SERIAL,
  "date" DATE,
  "customer_id" INTEGER,
  "seller_id" INTEGER,
  "total_cost" INTEGER,
  "car_id" INTEGER,
  PRIMARY KEY ("invoice_id"),
	FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id"),
	FOREIGN KEY ("seller_id")
      REFERENCES "Sales person"("seller_id"),
	FOREIGN KEY ("car_id")
      REFERENCES "Car"("car_id")
);



