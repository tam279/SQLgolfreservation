SET LINESIZE 140

-- Deletes all data from tables in case of reinitialization

DELETE FG_CUSTOMER_FAVOURITE_COURSE;
DELETE FG_TEE_TIME;
DELETE FG_RESERVATION;
DELETE FG_PROMOCODE;
DELETE FG_CUSTOMER_REVIEW;
DELETE FG_CREDIT_CARD;
DELETE FG_COURSE_INFORMATION;
DELETE FG_CUSTOMER;

-- Populates the FG_CUSTOMER table with 3 customers
-- Each customer is given an ID, first and last name, a gift card amount, and an email
INSERT INTO FG_CUSTOMER(
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    GIFT_CARD_AMOUNT,
    EMAIL
) VALUES (
    1,
    'Tam',
    'Nguyen',
    0,
    'tam@gmail.com'
);

INSERT INTO FG_CUSTOMER(
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    GIFT_CARD_AMOUNT,
    EMAIL
) VALUES (
    2,
    'Tim',
    'Horton',
    100,
    'thevagi@gmail.com'
);

INSERT INTO FG_CUSTOMER(
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    GIFT_CARD_AMOUNT,
    EMAIL
) VALUES (
    3,
    'Logan',
    'Paul',
    50,
    'logan@gmail.com'
);

-- Populates the FG_CREDIT_CARD table
-- Each customer is given 1-2 credit cards, which contain name on card, if it is the default card,
-- credit card number, expiry date, and the related customer ID
INSERT INTO FG_CREDIT_CARD(
    NAME_ON_CARD,
    IS_DEFAULT_CARD,
    CC_NUMBER,
    CC_EXP_DATE,
    CUSTOMER_ID
) VALUES (
    'Tam Nguyen',
    1,
    4505530188885550,
    TO_DATE('07/29', 'MM/YY'),
    1
);

INSERT INTO FG_CREDIT_CARD(
    NAME_ON_CARD,
    IS_DEFAULT_CARD,
    CC_NUMBER,
    CC_EXP_DATE,
    CUSTOMER_ID
) VALUES (
    'Tam Nguyen',
    0,
    4505530188999990,
    TO_DATE('08/28', 'MM/YY'),
    1
);

INSERT INTO FG_CREDIT_CARD(
    NAME_ON_CARD,
    IS_DEFAULT_CARD,
    CC_NUMBER,
    CC_EXP_DATE,
    CUSTOMER_ID
) VALUES (
    'Thevagi Vimal',
    1,
    4509999188999990,
    TO_DATE('07/27', 'MM/YY'),
    2
);

INSERT INTO FG_CREDIT_CARD(
    NAME_ON_CARD,
    IS_DEFAULT_CARD,
    CC_NUMBER,
    CC_EXP_DATE,
    CUSTOMER_ID
) VALUES (
    'Thevagi Vimal',
    0,
    4509999188954320,
    TO_DATE('09/28', 'MM/YY'),
    2
);

INSERT INTO FG_CREDIT_CARD(
    NAME_ON_CARD,
    IS_DEFAULT_CARD,
    CC_NUMBER,
    CC_EXP_DATE,
    CUSTOMER_ID
) VALUES (
    'Ma Cubay',
    1,
    4509999188958880,
    TO_DATE('06/26', 'MM/YY'),
    3
);

INSERT INTO FG_CREDIT_CARD(
    NAME_ON_CARD,
    IS_DEFAULT_CARD,
    CC_NUMBER,
    CC_EXP_DATE,
    CUSTOMER_ID
) VALUES (
    'Ma Cubay',
    0,
    4509999188912340,
    TO_DATE('10/28', 'MM/YY'),
    3
);

-- Populates the FG_COURSE_INFORMATION table with 5 courses
-- Each course is given a name, city, country, province, postal code, average review rating, 
-- description, year of construction, and length
INSERT INTO FG_COURSE_INFORMATION(
    COURSE_NAME,
    CITY,
    COUNTRY,
    PROVINCE,
    POSTAL_CODE,
    AVERAGE_REVIEW_RATING,
    DESCRIPTION,
    YEAR_BUILD,
    LENGTH
) VALUES (
    'JW Marriott Desert Springs Valley Course',
    'Palm Desert',
    'US',
    'CA',
    92260,
    3.9,
    'True to Ted Robinson`s signature style, there`s more water on our beautifully landscaped championship courses than you can shake a 9-iron at. Enjoy the camaraderie of individual golf or group tournaments set against the towering mountains, rolling greens and sprawling lakes. You`ll hit it off beautifully at Desert Springs` two exceptional 18-hole championship courses, set against the towering backdrop of the Santa Rosa Mountains. Both the Palm and Valley courses were designed by acclaimed architect Ted Robinson, "King of Waterscapes".',
    TO_DATE( '1986', 'YYYY'),
    6627
);

INSERT INTO FG_COURSE_INFORMATION(
    COURSE_NAME,
    CITY,
    COUNTRY,
    PROVINCE,
    POSTAL_CODE,
    AVERAGE_REVIEW_RATING,
    DESCRIPTION,
    YEAR_BUILD,
    LENGTH
) VALUES (
    'Palm Desert Country Club',
    'Palm Desert',
    'US',
    'CA',
    92211,
    3.7,
    'This former host of the Hope for Tomorrow Golf Tournament (past winners include Tom Kite and John Cook) has completed its return to glory. The Golf Course was originally designed by Billy Bell Jr. in 1962 and has been completely redesigned by Cary Bickler (including the 9 hole executive course); Don`t let the 6,400 yards on the scorecard fool you, this course has some strategically place bunkers and new water hazards that keeps even the longest of hitters honest; The breathtaking views of the Santa Rosa and San Jacinto Mountains are as good as any that you will find in the desert. The look and the feel of the 13,000 square foot clubhouse definitely represent the surrounding community of over 1,800 homes on Avenue of the states.',
    TO_DATE( '1962', 'YYYY'),
    6643
);

INSERT INTO FG_COURSE_INFORMATION(
    COURSE_NAME,
    CITY,
    COUNTRY,
    PROVINCE,
    POSTAL_CODE,
    AVERAGE_REVIEW_RATING,
    DESCRIPTION,
    YEAR_BUILD,
    LENGTH
) VALUES (
    'Shadow Hills Golf Club - North Course',
    'Indio',
    'US',
    'CA',
    92203,
    4.7,
    'The 18-hole Shadow Hills North course at the Shadow Hills Golf Club facility in Indio, California features all the hallmarks of California golf. Designed by Lee E. Schmidt, ASGCA/Brian Curley, ASGCA, the Shadow Hills North golf course opened in 2010.',
    TO_DATE( '2010', 'YYYY'),
    2999
);

INSERT INTO FG_COURSE_INFORMATION(
    COURSE_NAME,
    CITY,
    COUNTRY,
    PROVINCE,
    POSTAL_CODE,
    AVERAGE_REVIEW_RATING,
    DESCRIPTION,
    YEAR_BUILD,
    LENGTH
) VALUES (
    'The Westin Rancho Mirage Golf Resort Spa - Pete Dye Course',
    'Rancho Mirage',
    'US',
    'CA',
    92270,
    4.0,
    'This “must play” Pete Dye Course at Westin Mission Hills Golf Resort and Spa is notorious for its picturesque panoramic views of Rancho Mirage. Mission Hills Golf Course is set among beautiful rolling hills, and it offers spectacular sights of the surrounding desert mountains. Located just outside of Palm Springs in sunny Southern California, this 18 Hole public course is open year-round. Mission Hills Golf Course is a challenge to many people, requiring precise shots and lots of practice. The layout of scenic Mission Hills Golf Course was designed by legendary Pete Dye in 1987. It follows Pete Dye`s classic course design, featuring railroad tie borders around the tee boxes and ponds. Although the Pete Dye Course at Mission Hills Golf Course follows Pete`s typical design, it is tamer than most of his courses. As always, it is still a tough challenge. In fact, Mission Hills Golf Course is described by some as “potentially diabolical, yet indescribably playable.” The course has four Par 3`s, twelve Par 4`s, and two Par 5`s. Folks who have played at Mission Hills Golf Course come just once and fall in love with the well-maintained course. Troon Golf does extremely well managing the beautiful property, consistently keeping it in excellent shape. Golfers have expressed that staff at the course is friendly and helpful. They also voiced that they get a great value for their money. The course runs at a good pace of play and even offers practice options including instruction and a driving range. If you`re looking for a great place to play with your buddies, look no further than the Westin Mission Hills Golf Resort, Pete Dye Course.',
    TO_DATE( '1987', 'YYYY'),
    6706
);

INSERT INTO FG_COURSE_INFORMATION(
    COURSE_NAME,
    CITY,
    COUNTRY,
    PROVINCE,
    POSTAL_CODE,
    AVERAGE_REVIEW_RATING,
    DESCRIPTION,
    YEAR_BUILD,
    LENGTH
) VALUES (
    'Desert Willow Golf Resort - Firecliff',
    ' Palm Desert',
    'US',
    'CA',
    92260,
    4.7,
    'THE FIRECLIFF GOLF COURSE Measuring 7,056 yards, is a true test of skill where golfers must negotiate their way around extensive natural areas, numerous water features and more than 100 bunkers/waste areas. Firecliff is consistently ranked among the best courses you can play in the nation, currently # 20 in California! While enjoying your round, remember to take in your surroundings and appreciate the Desert Willow views and beauty.',
    TO_DATE( '1997', 'YYYY'),
    7056
);

-- Populates the FG_TEE_TIME table 
-- Each tee time has a number, price, date and time, whether a cart is included, 
-- number of holes, available spaces, and associated course name
-- Tee times are added for each course
INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    1,
    107,
    TO_DATE('11/1/2022 15:04', 'mm/dd/yyyy hh24:mi'),
    'y',
    18,
    4,
    'JW Marriott Desert Springs Valley Course'
);

INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    2,
    68.99,
    TO_DATE('11/1/2022 15:12', 'mm/dd/yyyy hh24:mi'),
    'y',
    18,
    2,
    'JW Marriott Desert Springs Valley Course'
);

INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    3,
    107,
    TO_DATE('11/1/2022 15:20', 'mm/dd/yyyy hh24:mi'),
    'y',
    18,
    3,
    'JW Marriott Desert Springs Valley Course'
);

-- Insert tee times to Palm Desert Country Club
INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    4,
    79,
    TO_DATE('11/1/2022 13:16', 'mm/dd/yyyy hh24:mi'),
    'y',
    18,
    4,
    'Palm Desert Country Club'
);

INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    5,
    79,
    TO_DATE('11/1/2022 13:24', 'mm/dd/yyyy hh24:mi'),
    'y',
    18,
    4,
    'Palm Desert Country Club'
);

INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    6,
    79,
    TO_DATE('11/1/2022 13:32', 'mm/dd/yyyy hh24:mi'),
    'y',
    18,
    4,
    'Palm Desert Country Club'
);

-- Insert tee times to Shadow Hills Golf Club - North Course
INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    7,
    49,
    TO_DATE('11/1/2022 12:40', 'mm/dd/yyyy hh24:mi'),
    'y',
    9,
    3,
    'Shadow Hills Golf Club - North Course'
);

INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    8,
    49,
    TO_DATE('11/1/2022 13:10', 'mm/dd/yyyy hh24:mi'),
    'y',
    18,
    2,
    'Shadow Hills Golf Club - North Course'
);

INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    9,
    49,
    TO_DATE('11/1/2022 13:50', 'mm/dd/yyyy hh24:mi'),
    'y',
    18,
    2,
    'Shadow Hills Golf Club - North Course'
);

-- Insert tee times to The Westin Rancho Mirage Golf Resort & Spa - Pete Dye Course
INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    10,
    110,
    TO_DATE('11/1/2022 14:10', 'mm/dd/yyyy hh24:mi'),
    'y',
    18,
    1,
    'The Westin Rancho Mirage Golf Resort Spa - Pete Dye Course'
);

INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    11,
    110,
    TO_DATE('11/1/2022 14:20', 'mm/dd/yyyy hh24:mi'),
    'y',
    18,
    4,
    'The Westin Rancho Mirage Golf Resort Spa - Pete Dye Course'
);

INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    12,
    88,
    TO_DATE('11/1/2022 14:40', 'mm/dd/yyyy hh24:mi'),
    'y',
    18,
    4,
    'The Westin Rancho Mirage Golf Resort Spa - Pete Dye Course'
);

-- Insert tee times to Desert Willow Golf Resort - Firecliff
INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    13,
    87,
    TO_DATE('11/1/2022 14:50', 'mm/dd/yyyy hh24:mi'),
    'y',
    18,
    2,
    'Desert Willow Golf Resort - Firecliff'
);

INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    14,
    74,
    TO_DATE('11/1/2022 15:20', 'mm/dd/yyyy hh24:mi'),
    'y',
    18,
    2,
    'Desert Willow Golf Resort - Firecliff'
);

INSERT INTO FG_TEE_TIME (
    TEE_TIME_NUM,
    PRICE,
    TEE_TIME,
    IS_CART_INCLUDED,
    NUM_OF_HOLES,
    AVAILABLE_SPACES,
    COURSE_NAME
) VALUES (
    15,
    74,
    TO_DATE('11/1/2022 15:20', 'mm/dd/yyyy hh24:mi'),
    'y',
    18,
    4,
    'Desert Willow Golf Resort - Firecliff'
);

-- Populate FG_CUSTOMER_FAVOURITE_COURSE
INSERT INTO FG_CUSTOMER_FAVOURITE_COURSE (
    COURSE_NAME,
    CUSTOMER_ID
) VALUES (
    'JW Marriott Desert Springs Valley Course',
    1
);

INSERT INTO FG_CUSTOMER_FAVOURITE_COURSE (
    COURSE_NAME,
    CUSTOMER_ID
) VALUES (
    'Palm Desert Country Club',
    1
);

INSERT INTO FG_CUSTOMER_FAVOURITE_COURSE (
    COURSE_NAME,
    CUSTOMER_ID
) VALUES (
    'Shadow Hills Golf Club - North Course',
    2
);

INSERT INTO FG_CUSTOMER_FAVOURITE_COURSE (
    COURSE_NAME,
    CUSTOMER_ID
) VALUES (
    'Desert Willow Golf Resort - Firecliff',
    2
);

INSERT INTO FG_CUSTOMER_FAVOURITE_COURSE (
    COURSE_NAME,
    CUSTOMER_ID
) VALUES (
    'The Westin Rancho Mirage Golf Resort Spa - Pete Dye Course',
    3
);

INSERT INTO FG_CUSTOMER_FAVOURITE_COURSE (
    COURSE_NAME,
    CUSTOMER_ID
) VALUES (
    'JW Marriott Desert Springs Valley Course',
    3
);

-- Populate FG_RESERVATION
-- Inserts a new record into the FG_RESERVATION table with reservation number 2, total green fees of 49, tax of 2.45, amount charged of 51.45, credit card number 4509999188999990, number of players 1, customer id 2, and tea time number 8.
INSERT INTO FG_RESERVATION(
    RESERVATION_NUM,
    TOTAL_GREEN_FEES_PAID,
    TAX_PAID,
    AMOUNT_CHARGE_CC,
    CC_NUMBER,
    NUM_OF_PLAYERS,
    CUSTOMER_ID,
    TEA_TIME_NUM
) VALUES (
    1,
    107,
    5.35,
    62.35,
    4505530188885550,
    1,
    1,
    1
);

INSERT INTO FG_RESERVATION(
    RESERVATION_NUM,
    TOTAL_GREEN_FEES_PAID,
    TAX_PAID,
    AMOUNT_CHARGE_CC,
    CC_NUMBER,
    NUM_OF_PLAYERS,
    CUSTOMER_ID,
    TEA_TIME_NUM
) VALUES (
    2,
    49,
    2.45,
    51.45,
    4509999188999990,
    1,
    2,
    8
);

INSERT INTO FG_RESERVATION(
    RESERVATION_NUM,
    TOTAL_GREEN_FEES_PAID,
    TAX_PAID,
    AMOUNT_CHARGE_CC,
    CC_NUMBER,
    NUM_OF_PLAYERS,
    CUSTOMER_ID,
    TEA_TIME_NUM
) VALUES (
    3,
    88,
    4.4,
    72.4,
    4509999188958880,
    1,
    3,
    12
);

INSERT INTO FG_RESERVATION(
    RESERVATION_NUM,
    TOTAL_GREEN_FEES_PAID,
    TAX_PAID,
    AMOUNT_CHARGE_CC,
    CC_NUMBER,
    NUM_OF_PLAYERS,
    CUSTOMER_ID,
    TEA_TIME_NUM
) VALUES (
    4,
    176,
    8.8,
    149.8,
    4509999188999990,
    2,
    2,
    15
);

INSERT INTO FG_RESERVATION(
    RESERVATION_NUM,
    TOTAL_GREEN_FEES_PAID,
    TAX_PAID,
    AMOUNT_CHARGE_CC,
    CC_NUMBER,
    NUM_OF_PLAYERS,
    CUSTOMER_ID,
    TEA_TIME_NUM
) VALUES (
    5,
    158,
    7.9,
    165.9,
    4505530188885550,
    2,
    1,
    5
);

-- Populates the FG_PROMOCODE table with 5 promo codes
-- Each promo code is associated with a customer, has a unique code, an issued date, a value, 
-- a status indicating if it has been used, an expiration date, and a reservation number if applicable
INSERT INTO FG_PROMOCODE(INSERT INTO FG_PROMOCODE (
    CUSTOMER_ID,
    PROMO_CODE,
    ISSUED_DATE,
    VALUE_OF_PROMO_CODE,
    IS_USED,
    PC_EXP_DATE,
    RESERVATION_NUM
) VALUES (
    1,
    'HAPPYGOFTNOVEMBER',
    TO_DATE('15/10/2022', 'DD/MM/YYYY'),
    50,
    1,
    TO_DATE('30/11/2022', 'DD/MM/YYYY'),
    1
);

INSERT INTO FG_PROMOCODE (
    CUSTOMER_ID,
    PROMO_CODE,
    ISSUED_DATE,
    VALUE_OF_PROMO_CODE,
    IS_USED,
    PC_EXP_DATE,
    RESERVATION_NUM
) VALUES (
    2,
    'FIRSTTIMEPLAYGOLF',
    TO_DATE('01/10/2022', 'DD/MM/YYYY'),
    25,
    0,
    TO_DATE('31/12/2022', 'DD/MM/YYYY'),
    NULL
);

INSERT INTO FG_PROMOCODE (
    CUSTOMER_ID,
    PROMO_CODE,
    ISSUED_DATE,
    VALUE_OF_PROMO_CODE,
    IS_USED,
    PC_EXP_DATE,
    RESERVATION_NUM
) VALUES (
    3,
    'PLAYINGGOLFSISFUN',
    TO_DATE('25/10/2022', 'DD/MM/YYYY'),
    20,
    1,
    TO_DATE('30/10/2022', 'DD/MM/YYYY'),
    3
);

INSERT INTO FG_PROMOCODE (
    CUSTOMER_ID,
    PROMO_CODE,
    ISSUED_DATE,
    VALUE_OF_PROMO_CODE,
    IS_USED,
    PC_EXP_DATE,
    RESERVATION_NUM
) VALUES (
    1,
    'HAPPYNOVEMBER10',
    TO_DATE('28/10/2022', 'DD/MM/YYYY'),
    30,
    0,
    TO_DATE('30/11/2022', 'DD/MM/YYYY'),
    NULL
);

INSERT INTO FG_PROMOCODE (
    CUSTOMER_ID,
    PROMO_CODE,
    ISSUED_DATE,
    VALUE_OF_PROMO_CODE,
    IS_USED,
    PC_EXP_DATE,
    RESERVATION_NUM
) VALUES (
    2,
    'FUNGOLF35',
    TO_DATE('10/10/2022', 'DD/MM/YYYY'),
    35,
    1,
    TO_DATE('25/12/2022', 'DD/MM/YYYY'),
    4
);

-- Populates the FG_CUSTOMER_REVIEW table with 3 reviews
-- Each review is associated with a course and reservation, has a star rating, a title, and commentsINSERT INTO FG_CUSTOMER_REVIEW(
    COURSE_NAME,
    RESERVATION_NUM,
    STAR_RATING,
    REVIEW_TITLE,
    REVIEW_COMMENTS
) VALUES (
    'JW Marriott Desert Springs Valley Course',
    1,
    4,
    'Course was great but greens were slow',
    'Greens were slow due to seasonal maintenance. Seems the greens fees might have remained the same despite the greens. I wish golf courses would discount when they do maintenance or don`t open the course till it reflects the planned experience.'
);

INSERT INTO FG_CUSTOMER_REVIEW(
    COURSE_NAME,
    RESERVATION_NUM,
    STAR_RATING,
    REVIEW_TITLE,
    REVIEW_COMMENTS
) VALUES (
    'Shadow Hills Golf Club - North Course',
    2,
    4,
    'Shadow Hills North',
    'When I first booked this course, I didn`t realize it was a Par 3 course. We had played South course before and loved it. After realizing it was a Par 3, it looked interesting, so we decided not to cancel the tee time. So glad we went for it. The course was BEAUTIFUL and in immaculate condition. A very fun and enjoyable round!'
);

INSERT INTO FG_CUSTOMER_REVIEW(
    COURSE_NAME,
    RESERVATION_NUM,
    STAR_RATING,
    REVIEW_TITLE,
    REVIEW_COMMENTS
) VALUES (
    'The Westin Rancho Mirage Golf Resort Spa - Pete Dye Course',
    3,
    3,
    'Too soon after overseeding',
    'Rough and traps were in horrible shape. We were losing balls in the 6” rough surrounding the greens. And still enough sand on the fairways to make iron distances shorter than normal. Carts restricted to rough and paths was an unpleasant surprise'
);

COMMIT;