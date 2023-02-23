USE [store]

CREATE TABLE buyers (
    buyer_id int PRIMARY KEY,
	email varchar(50),
	password varchar(50),
	first_name varchar(50),
	last_name varchar(50),
	city varchar(50),
	region varchar(50),
	postal_code varchar(5),
	registration_date date,
	phone varchar(50)
);

CREATE TABLE orders (
    order_id int PRIMARY KEY,
	buyer_id int FOREIGN KEY REFERENCES buyers(buyer_id),
	status varchar(50),
	date date,
	city varchar(50),
	region varchar(50),
	postal_code varchar(5)
); 

CREATE TABLE sellers (
    seller_id int PRIMARY KEY,
	email varchar(50),
	password varchar(50),
	first_name varchar(50),
	last_name varchar(50),
	city varchar(50),
	region varchar(50),
	registration_date date,
	phone varchar(50)
);

CREATE TABLE products (
    product_id int PRIMARY KEY,
	seller_id int FOREIGN KEY REFERENCES sellers(seller_id),
	name varchar(50),
	price int,
	brand_name varchar(50),
	category_name varchar(50),
	production_year int,
	weight varchar(50),
	rating int,
	quantity int
);

CREATE TABLE orderdetails (
    order_detail_id int PRIMARY KEY,
	order_id int FOREIGN KEY REFERENCES orders(order_id),
	product_id int FOREIGN KEY REFERENCES products(product_id),
	product_name varchar(50),
	sum int,
	quantity int
);

INSERT INTO buyers VALUES (1, 'maksym.tkachenko2@nure.ua', '11111', '������', '��������', '�����', '��������� �������', '61001', '2021-12-23', '0506013235');
INSERT INTO buyers VALUES (2, 'katerina.ivanova@gmail.com', '22222', '��������', '�������', '�����', '��������� �������', '61001', '2021-12-11', '0956363425');
INSERT INTO buyers VALUES (3, 'sergiy.sidorov@gmail.com', '33333', '�����', 'ѳ�����', '�����', '��������� �������', '61001', '2021-12-26', '0503469864');
INSERT INTO buyers VALUES (4, 'alexander.danilov@gmail.com', '44444', '���������', '������', '�����', '��������� �������', '61001', '2021-12-15', '0953423536');
INSERT INTO buyers VALUES (5, 'volodymyr.alekseev@gmail.com', '55555', '���������', '������', '�����', '��������� �������', '61001', '2021-12-15', '0953423536');
INSERT INTO buyers VALUES (6, 'daria.ivanova@gmail.com', '66666', '���`�', '�������', '�����', '��������� �������', '61001', '2021-12-10', '0953462536');
INSERT INTO buyers VALUES (7, 'volodymyr.bilskyi@gmail.com', '77777', '���������', '���������', '�����', '��������� �������', '61001', '2021-12-08', '0503496862');
INSERT INTO buyers VALUES (8, 'alexander.vysochyn@gmail.com', '88888', '���������', '�������', '�����', '��������� �������', '61001', '2021-12-09', '0953643625');
INSERT INTO buyers VALUES (9, 'sergiy.helunenko@gmail.com', '99999', '�����', '���������', '�����', '��������� �������', '61001', '2021-12-09', '0503495869');  
INSERT INTO buyers VALUES (10, 'maksym.helzhynskyi@gmail.com', '11111', '������', '������������', '�����', '��������� �������', '61001', '2021-12-08', '0954366586');
INSERT INTO buyers VALUES (11, 'vladyslav.dronov@gmail.com', '22222', '���������', '������', '�����', '��������� �������', '61001', '2022-12-09', '0953649565');
INSERT INTO buyers VALUES (12, 'illia.zaikin@gmail.com', '33333', '����', '����', '�����', '��������� �������', '61001', '2022-12-08', '0506432465');
INSERT INTO buyers VALUES (13, 'volodymyr.kobozev@gmail.com', '44444', '���������', '�������', '�����', '��������� �������', '61001', '2021-12-09', '0956439565');
INSERT INTO buyers VALUES (14, 'kateryna.kodola@gmail.com', '55555', '��������', '������', '�����', '��������� �������', '61001', '2021-12-07', '0506439535');
INSERT INTO buyers VALUES (15, 'volodymyr.koshel@gmail.com', '66666', '���������', '������', '�����', '��������� �������', '61001', '2021-12-06', '0954369565');
INSERT INTO buyers VALUES (16, 'sergiy.martynov@gmail.com', '77777', '�����', '��������', '�����', '��������� �������', '61001', '2021-12-05', '0506736995');
INSERT INTO buyers VALUES (17, 'bohdan.michkivskyi@gmail.com', '88888', '������', '̳��������', '�����', '��������� �������', '61001', '2022-12-10', '0956437649');
INSERT INTO buyers VALUES (18, 'anton.pasenko@gmail.com', '99999', '�����', '�������', '�����', '��������� �������', '61001', '2021-12-03', '0506439568');           
INSERT INTO buyers VALUES (19, 'sergiy.piekhotin@gmail.com', '11111', '�����', 'Ϻ����', '�����', '��������� �������', '61001', '2021-12-05', '0956735968');
INSERT INTO buyers VALUES (20, 'anton.prokopov@gmail.com', '22222', '�����', '��������', '�����', '��������� �������', '61001', '2021-12-02', '0506342635');
  

INSERT INTO orders VALUES (1, 1, '����� �� ���� ����������', '2022-11-20', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (2, 2, '���� �볺��� � ����� ����������', '2022-11-23', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (3, 3, '����������� �����������', '2022-11-27', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (4, 4, '����������� �����������', '2022-11-28', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (5, 5, '���� �볺��� � ����� ����������', '2022-11-24', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (6, 6, '����� �� ���� ����������', '2022-10-20', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (7, 7, '���� �볺��� � ����� ����������', '2022-11-15', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (8, 8, '����������� �����������', '2022-12-10', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (9, 9, '����������� �����������', '2022-11-12', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (10, 10, '���� �볺��� � ����� ����������', '2022-10-12', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (11, 11, '����� �� ���� ����������', '2022-11-13', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (12, 12, '���� �볺��� � ����� ����������', '2022-11-15', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (13, 13, '����� �� ���� ����������', '2022-12-05', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (14, 14, '����������� �����������', '2022-12-05', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (15, 15, '����������� �����������', '2022-12-08', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (16, 16, '���� �볺��� � ����� ����������', '2022-12-12', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (17, 17, '����� �� ���� ����������', '2022-12-13', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (18, 18, '����������� �����������', '2022-12-01', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (19, 19, '���� �볺��� � ����� ����������', '2022-12-05', '�����', '��������� �������', '61001');
INSERT INTO orders VALUES (20, 20, '����������� �����������', '2022-12-01', '�����', '��������� �������', '61001');   


INSERT INTO sellers VALUES (1, 'sergiy.danilov@gmail.com', '66666', '�����', '������', '���', '������� �������', '2020-02-15', '0956019235');
INSERT INTO sellers VALUES (2, 'alexander.ivanov@gmail.com', '77777', '���������', '������', '���', '������� �������', '2021-09-03', '0506369425');
INSERT INTO sellers VALUES (3, 'katerina.sidorova@gmail.com', '88888', '��������', 'ѳ������', '���', '������� �������', '2020-06-03', '0953479864');
INSERT INTO sellers VALUES (4, 'maksym.ivanov@gmail.com', '99999', '������', '������', '���', '������� �������', '2019-03-08', '0503435396');
INSERT INTO sellers VALUES (5, 'volodymyr.krylov@gmail.com', '00000', '���������', '������', '���', '������� �������', '2020-04-09', '0953493536');
INSERT INTO sellers VALUES (6, 'volodymyr.ivanov@gmail.com', '11111', '���������', '������', '���', '������� �������', '2020-01-10', '0503462636');
INSERT INTO sellers VALUES (7, 'anton.vysochyn@gmail.com', '22222', '�����', '�������', '���', '������� �������', '2020-03-15', '0953496862');
INSERT INTO sellers VALUES (8, 'bohdan.dronov@gmail.com', '33333', '������', '������', '���', '������� �������', '2018-01-10', '0509563426');
INSERT INTO sellers VALUES (9, 'sergiy.prokopov@gmail.com', '44444', '�����', '��������', '���', '������� �������', '2017-05-03', '0956249567');
INSERT INTO sellers VALUES (10, 'vladyslav.kobozev@gmail.com', '55555', '���������', '�������', '���', '������� �������', '2018-05-04', '0503469798');
INSERT INTO sellers VALUES (11, 'illia.michkivskyi@gmail.com', '66666', '����', '̳��������', '���', '������� �������', '2017-04-03', '0956433536');  
INSERT INTO sellers VALUES (12, 'alexander.koshel@gmail.com', '77777', '���������', '������', '���', '������� �������', '2016-08-24', '0509733463');
INSERT INTO sellers VALUES (13, 'maksym.vysochyn@gmail.com', '88888', '������', '�������', '���', '������� �������', '2017-07-20', '0956347685');
INSERT INTO sellers VALUES (14, 'kateryna.sidorova@gmail.com', '99999', '��������', 'ѳ������', '���', '������� �������', '2016-08-15', '0503497538');
INSERT INTO sellers VALUES (15, 'illia.helzhynskyi@gmail.com', '11111', '����', '������������', '���', '������� �������', '2018-06-06', '0954937397');
INSERT INTO sellers VALUES (16, 'sergiy.bilskyi@gmail.com', '22222', '�����', '���������', '���', '������� �������', '2018-06-06', '0507643995');
INSERT INTO sellers VALUES (17, 'bohdan.helunenko@gmail.com', '33333', '������', '���������', '���', '������� �������', '2017-03-14', '0956793494');
INSERT INTO sellers VALUES (18, 'anton.kobozev@gmail.com', '44444', '�����', '�������', '���', '������� �������', '2016-08-11', '0509747894');
INSERT INTO sellers VALUES (19, 'illia.danilov@gmail.com', '55555', '����', '������', '���', '������� �������', '2020-07-16', '0959733694');
INSERT INTO sellers VALUES (20, 'maksym.ivanov@gmail.com', '66666', '������', '������', '���', '������� �������', '2021-04-16', '0506429895');      
    

INSERT INTO products VALUES (1, 1, '����������� SAMSUNG RB38T600FSA/UA', 21999, 'Sumsung', '������������', 2021, '71 ��', 5, 20);
INSERT INTO products VALUES (2, 2, '�������� Samsung UE55AU7100UXUA', 20999, 'Sumsung', '���������', 2020, '14.2 ��', 4, 25);
INSERT INTO products VALUES (3, 3, '������� ������ SAMSUNG WW62J32G0PW/UA', 16199, 'Sumsung', '������ ������', 2020, '53 ��', 4, 20);
INSERT INTO products VALUES (4, 4, '������� Philips 2000 series XB2125/09', 3599, 'Philips', '��������', 2019, '4 ��', 5, 30);
INSERT INTO products VALUES (5, 5, '������ PHILIPS Azur GC4909/60', 3399, 'Philips', '������', 2019, '1.669 ��', 5, 50);
INSERT INTO products VALUES (6, 6, '����������� ������ WHIRLPOOL WSIC3M27C', 12999, 'Whirlpool', '���������� ������', 2020, '29.6 ��', 4, 20);
INSERT INTO products VALUES (7, 7, '����� HANSA FCMW580450', 9549, 'Hansa', '�����', 2020, '41 ��', 3, 20);
INSERT INTO products VALUES (8, 8, '����������� HYUNDAI ARN07HSSUAWF1/ARU07HSSUAWF1', 13499, 'Hyundai', '������������', 2022, '28 ��', 4, 20);
INSERT INTO products VALUES (9, 9, '����� ������� IMMERGAS Eolo Star 24 4E', 26277, 'Immergas', '����� ��������', 2018, '29 ��', 5, 25);
INSERT INTO products VALUES (10, 10, '������ ATLANTIC OPRO Sample R 80', 4459, 'Atlantic', '�������', 2019, '18 ��', 4, 30);
INSERT INTO products VALUES (11, 11, '����������� BOSCH KGN39VL316', 25499, 'Bosch', '������������', 2020, '75 ��', 5, 20);
INSERT INTO products VALUES (12, 12, '�������� Samsung UE50AU7100UXUA', 18999, 'Samsung', '���������', 2019, '11.4 ��', 4, 15);
INSERT INTO products VALUES (13, 13, '������� ������ WHIRLPOOL FWDG86148B EU', 23499, 'Whirlpool', '������ ������', 2018, '66 ��', 4, 20);
INSERT INTO products VALUES (14, 14, '������� ��� ���� BOSCH BGC21X200', 4199, 'Bosch', '��������', 2021, '4.7 ��', 5, 35);
INSERT INTO products VALUES (15, 15, '������ PHILIPS Azur GC4556/20', 2749, 'Philips', '������', 2019, '1.552 ��', 5, 50);
INSERT INTO products VALUES (16, 16, '����������� ������ HOTPOINT ARISTON HI 5020 WEF', 14999, 'Hotpoint', '���������� ������', 2020, '35.5 ��', 5, 30);
INSERT INTO products VALUES (17, 17, '����� GORENJE GK5C40WF', 13999, 'Gorenje', '�����', 2019, '42.9 ��', 5, 25);
INSERT INTO products VALUES (18, 18, '����������� COOPER&HUNTER CH-S09FTXQ-NG', 24159, 'Cooper&Hunter', '������������', 2022, '35.5 ��', 4, 30); 
INSERT INTO products VALUES (19, 19, '����� ������� IMMERGAS Eolo Mythos 24 2E', 28677, 'Immergas', '����� ��������', 2018, '29.2 ��', 4, 20);
INSERT INTO products VALUES (20, 20, '������ GORENJE GBF 50 UA', 8487, 'Gorenge', '�������', 2020, '24 ��', 4, 25);  

INSERT INTO orderdetails VALUES (1, 1, 1, '����������� SAMSUNG RB38T600FSA/UA', 21999, 1);
INSERT INTO orderdetails VALUES (2, 2, 2, '�������� Samsung UE55AU7100UXUA', 20999, 1);
INSERT INTO orderdetails VALUES (3, 3, 3, '������� ������ SAMSUNG WW62J32G0PW/UA', 16199, 1);
INSERT INTO orderdetails VALUES (4, 4, 4, '������� Philips 2000 series XB2125/09', 3599, 1);
INSERT INTO orderdetails VALUES (5, 5, 5, '������ PHILIPS Azur GC4909/60', 4459, 1);
INSERT INTO orderdetails VALUES (6, 6, 6, '����������� ������ WHIRLPOOL WSIC3M27C', 3399, 1);
INSERT INTO orderdetails VALUES (7, 7, 7, '����� HANSA FCMW580450', 9549, 1);
INSERT INTO orderdetails VALUES (8, 8, 8, '����������� HYUNDAI ARN07HSSUAWF1/ARU07HSSUAWF1', 13499, 1);
INSERT INTO orderdetails VALUES (9, 9, 9, '����� ������� IMMERGAS Eolo Star 24 4E', 262771, 1); 
INSERT INTO orderdetails VALUES (10, 10, 10, '������ ATLANTIC OPRO Sample R 80', 4459, 1);
INSERT INTO orderdetails VALUES (11, 11, 11, '����������� BOSCH KGN39VL316', 25499, 1);
INSERT INTO orderdetails VALUES (12, 12, 12, '�������� Samsung UE50AU7100UXUA', 18999, 1); 
INSERT INTO orderdetails VALUES (13, 13, 13, '������� ������ WHIRLPOOL FWDG86148B EU', 23499, 1);
INSERT INTO orderdetails VALUES (14, 14, 14, '������� ��� ���� BOSCH BGC21X200', 4199, 1);
INSERT INTO orderdetails VALUES (15, 15, 15, '������ PHILIPS Azur GC4556/20', 2749, 1);
INSERT INTO orderdetails VALUES (16, 16, 16, '����������� ������ HOTPOINT ARISTON HI 5020 WEF', 14999, 1);
INSERT INTO orderdetails VALUES (17, 17, 17, '����� GORENJE GK5C40WF', 13999, 1);
INSERT INTO orderdetails VALUES (18, 18, 18, '����������� COOPER&HUNTER CH-S09FTXQ-NG', 24159, 1);
INSERT INTO orderdetails VALUES (19, 19, 19, '����� ������� IMMERGAS Eolo Mythos 24 2E', 28677, 1);
INSERT INTO orderdetails VALUES (20, 20, 20, '������ GORENJE GBF 50 UA', 8487, 1);